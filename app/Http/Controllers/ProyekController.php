<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use Auth;
use Image;
use Illuminate\Support\Facades\Input;
use App\JamKerja;
use App\EmployStatus;
use App\Area;
use App\Level;
use App\TipeKerja;
use App\Pendidikan;
use App\Lowongan;

class ProyekController extends Controller
{

    // public function __construct()
    // {
    //     $this->middleware(['auth']);

    // }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $page_title = 'Buat Proyek';

        $jenis = TipeKerja::get();

        return view('mod_front.buatproyek',compact('page_title','jenis'));
    }

    public function all(Request $request)
    {

        $page_title = 'Semua Proyek';
        $lowongans = Lowongan::orderBy('id', 'DESC')->get();

        return view('mod_front.semuaproyek',compact('page_title', 'lowongans'));
    }

    public function detail($id)
    {

        $page_title = 'Semua Proyek';
        $lowongans = Lowongan::find($id);

        return view('mod_front.detailproyek',compact('page_title', 'lowongans'));
    }

    public function store(Request $request)
    {

        $this->validate($request,
            [
                'jenis_pekerjaan'       => 'required',
                'judul_pekerjaan'       => 'required',
                'alamat'                => 'required',
                //'tanggal_pengerjaan'    => 'required',
                'deskripsi_pekerjaan'   => 'required',
                //'cover_pekerjaan'       => 'image|mimes:jpeg,jpg,png'
             ]
        );

        $tgl = explode('/', $request->tanggal_pengerjaan);
        $post = Lowongan::create([
            'user_id'               => Auth::user()->id,
            'jenis_pekerjaan'       => request('jenis_pekerjaan'),
            'judul_pekerjaan'       => request('judul_pekerjaan'),
            'deskripsi_pekerjaan'   => request('deskripsi_pekerjaan'),
            'alamat'                => request('alamat'),
            'tanggal_pengerjaan'    => date('Y-m-d'),
            'created_user'          => Auth::user()->name,
            'user_verify'           => 'sukses',
            'publish'               => 'Y',
            'cover_pekerjaan'       => 'Y'
        ]);

        // if( $request->hasFile('cover_pekerjaan') ) {
        //     $post_thumbnail     = $request->file('cover_pekerjaan');
        //     $filename           = time() . '.' . $post_thumbnail->getClientOriginalExtension();
        //     $path = 'uploads/job_cover/' . $filename;          
        //     Image::make($post_thumbnail)->resize(100, 100)->save($path);

        //     // Set post-thumbnail url
        //     $post->cover_pekerjaan = $filename;
        // }

        if($post){
                $request->session()->flash('alert-success', 'Lowongan kerja Berhasil ditambahkan.');
                return redirect('/semuaproyek');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menambah Lowongan kerja baru');
                return redirect('/buatproyek');            
        }
    }

}
