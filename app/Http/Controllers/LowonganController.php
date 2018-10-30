<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Lowongan;
use App\Area;
use Auth;
use DB;
use Image;
use App\Level;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class LowonganController extends Controller
{

    public function __construct()
    {
        $this->middleware(['auth']);

    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $page_title     = 'Semua lowongan kerja';

        if (Auth::user()->hasPermissionTo('super_admin')) 
        {
            $lokers   = DB::table('lowongan')
                            ->select('lowongan.*')
                            ->orderBy('lowongan.id','DESC')->get();
        }
        else
        {
            $lokers   = DB::table('lowongan')
                            ->join('users','users.id','=','lowongan.user_id')
                                                        ->select('lowongan.*')
                            ->where('lowongan.user_id',Auth::user()->id)
                            ->orderBy('lowongan.id','DESC')->get();
        }

        return view('mod_lowongan.index',compact('page_title','lokers'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

        $page_title = 'Tambah lowongan kerja';
        $areas = Area::get();
        $levels = Level::get();
        return view('mod_lowongan.create',compact('page_title','areas','pendidikans','jams','tipes','statuses','levels'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        echo "string"; exit;
        // $this->validate($request,
        //     [
        //         'jenis_pekerjaan'       => 'required',
        //         'judul_pekerjaan'       => 'required',
        //         'alamat'                => 'required',
        //         'tanggal_pengerjaan'    => 'required',
        //         'deskripsi_pekerjaan'   => 'required',
        //         'cover_pekerjaan'       => 'image|mimes:jpeg,jpg,png'
        //      ]
        // );
        $post = new Lowongan;
        $post->user_id              = Auth::user()->id;
        $post->jenis_pekerjaan      = $request->jenis_pekerjaan;
        $post->judul_pekerjaan      = $request->judul_pekerjaan;
        $post->deskripsi_pekerjaan  = $request->deskripsi_pekerjaan;
        $post->alamat               = $request->alamat;
        $tgl                        = implode('/', $request->tanggal_pengerjaan);
        $post->tanggal_pengerjaan   = $tgl['2'].'-'.$tgl['1'].'-'.$tgl['0'];
        $post->created_user         = Auth::user()->name;
        $post->user_verify          = 'sukses';
        $post->publish              = 'Y';

        if( $request->hasFile('cover_pekerjaan') ) {
            $post_thumbnail     = $request->file('cover_pekerjaan');
            $filename           = time() . '.' . $post_thumbnail->getClientOriginalExtension();
            $path = 'uploads/job_cover/' . $filename;          
            Image::make($post_thumbnail)->resize(100, 100)->save($path);

            // Set post-thumbnail url
            $post->cover_pekerjaan = $filename;
        }
        $post->save();
        if($post){
                $request->session()->flash('alert-success', 'Lowongan kerja Berhasil ditambahkan.');
                return redirect('/lowongankerja');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menambah Lowongan kerja baru');
                return redirect('/lowongankerja');            
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $page_title = 'Edit lowongan kerja';
        $loker = Lowongan::where('id',$id)->first();

        $selected_tipe = explode(",", $loker->tipe_slug);
        $selected_area = explode(",", $loker->area_slug);
        $selected_pendidikan = explode(",", $loker->pendidikan_slug);

        $areas = Area::get();
        $pendidikans = Pendidikan::get();
        $levels = Level::get();
        $jams = JamKerja::get();
        $tipes = DB::table('tipe_pekerjaan')->select('nama_tipe','tipe_slug')->get();
        // $gajis = Gaji::get();
        $statuses = EmployStatus::get();
        return view('mod_lowongan.edit',compact('page_title','loker','areas','pendidikans','jams','tipes','selected_tipe','selected_area','selected_pendidikan','statuses','levels'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
                                'judul_lowongan'            => 'required',
                                'nama_perusahaan'           => 'required',
                                'deskripsi_lowongan'        => 'required',
                                'tipe'                      => 'required',
                                'area'                      => 'required',
                                'pendidikan'                => 'required',
                                // 'gaji'                      => 'required',
                                'jam_kerja'                 => 'required',
                                'status'                    => 'required',
                                'cover_pekerjaan'            => 'image|mimes:jpeg,jpg,png'
                                 ]
                        );

        $ubah = Lowongan::where('id',$id)->first();
        // $ubah->user_id              = Auth::user()->id;
        $ubah->waktu_id             = $request->jam_kerja;
        $ubah->employ_status_id     = $request->status;        
        $ubah->tipe_slug            = implode(',', (array) $request->get('tipe'));
        $ubah->area_slug            = implode(',', (array) $request->get('area'));
        $ubah->pendidikan_slug      = implode(',', (array) $request->get('pendidikan'));
        // $ubah->gaji_id              = $request->gaji;
        $ubah->judul_lowongan       = $request->judul_lowongan;
        $ubah->judul_slug           = str_slug($request->judul_lowongan);
        $ubah->nama_perusahaan      = $request->nama_perusahaan;
        $ubah->deskripsi_lowongan   = $request->deskripsi_lowongan;
        $ubah->tag_lowongan         = $request->tag_lowongan;
        $ubah->deskripsi_seo        = $request->deskripsi_seo;
        // $ubah->created_user         = Auth::user()->name;

        if( $request->hasFile('cover_pekerjaan') ) {
            $post_thumbnail     = $request->file('cover_pekerjaan');
            $filename           = time() . '.' . $post_thumbnail->getClientOriginalExtension();
            $path = 'uploads/job_cover/' . $filename;          
            Image::make($post_thumbnail)->resize(100, 100)->save($path);

            // Set post-thumbnail url
            $ubah->cover_pekerjaan = $filename;
        }
        $ubah->update();

        if($ubah){
                $request->session()->flash('alert-success', 'Lowongan kerja Berhasil diubah.');
                return redirect('/lowongankerja');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa merubah Lowongan kerja');
                return redirect('/lowongankerja');            
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        $del = Lowongan::where('id',$id)->delete();
        if($del)
        {
                $request->session()->flash('alert-success', 'Lowongan kerja Berhasil dihapus.');
                return redirect('/lowongankerja');             
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menghapus lowongan kerja');
                return redirect('/lowongankerja');            
        }
    }


    public function change(Request $request) 
    {    
         if(request('publish') == 'N') {
             Lowongan::where('id', request('id'))
                     ->update(['publish' => 'Y']);
         }
         elseif(request('publish') == 'Y') {
              Lowongan::where('id', request('id'))
                     ->update(['publish' => 'N']);
         }
        
         if(request('publish') == 'N') {
                $request->session()->flash('alert-success', 'Status Lowongan draft.');
         }
         elseif(request('publish') == 'Y') {
                $request->session()->flash('alert-success', 'Status lowongan publish.');
         }
         return redirect('/lowongankerja');
    }

}
