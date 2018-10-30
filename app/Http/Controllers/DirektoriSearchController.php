<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use Illuminate\Support\Facades\Input;
class DirektoriSearchController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        $page_title = 'Direktori Lowongan';
        $area = Input::get('area');
        $tipe = Input::get('tipe');

// 		$area_name = DB::table('area')->select('nama_area')->where('area_slug','like','%'.$area.'%')->first(); 
// 		$tipe_name = DB::table('tipe_pekerjaan')->select('nama_tipe')->where('tipe_slug','like','%'.$tipe.'%')->first();            

     if(request('area') == 'all' && request('tipe') == 'all'){
        $res = DB::table('lowongan')
                ->join('waktu_kerja','waktu_kerja.id','=','lowongan.waktu_id')
                ->select('lowongan.*','waktu_kerja.nama_waktu')
                ->where('publish','=','Y')
                ->where('user_verify','=','sukses')  
                ->orderBy('lowongan.id','DESC')
                ->paginate(10);               
        }
        elseif(request('area') == 'all' && request('tipe') != 'all'){
        $res = DB::table('lowongan')
                ->join('waktu_kerja','waktu_kerja.id','=','lowongan.waktu_id')
                ->select('lowongan.*','waktu_kerja.nama_waktu')
                ->where('publish','=','Y')
                ->where('user_verify','=','sukses')   
                ->where('lowongan.tipe_slug','like','%'.$tipe.'%') 
                ->orderBy('lowongan.id','DESC')
                ->paginate(10);              
        }
        elseif(request('area') !='all' && request('tipe') =='all'){
        $res = DB::table('lowongan')
                ->join('waktu_kerja','waktu_kerja.id','=','lowongan.waktu_id')
                ->select('lowongan.*','waktu_kerja.nama_waktu')  
                ->where('publish','=','Y')
                ->where('user_verify','=','sukses')    
                ->where('lowongan.area_slug','like','%'.$area.'%')  
                   ->orderBy('lowongan.id','DESC')
                ->paginate(10);              
        }
        elseif(request('area') !='all' && request('tipe') !='all'){
        $res = DB::table('lowongan')
                ->join('waktu_kerja','waktu_kerja.id','=','lowongan.waktu_id')
                ->select('lowongan.*','waktu_kerja.nama_waktu')  
                ->where('publish','=','Y')
                ->where('user_verify','=','sukses')   
                ->where('lowongan.area_slug','like','%'.$area.'%')  
                ->where('lowongan.tipe_slug','like','%'.$tipe.'%') 
                     ->orderBy('lowongan.id','DESC')
                ->paginate(10);   
        }
             
        return view('mod_front.search',compact('page_title','res','area_name','tipe_name'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function all()
    {
        $page_title = 'Semua Lowongan';
        $res = DB::table('lowongan')
                ->join('waktu_kerja','waktu_kerja.id','=','lowongan.waktu_id')
                ->select('lowongan.*','waktu_kerja.nama_waktu')
                ->where('publish','=','Y')
                ->where('user_verify','=','sukses')   
                ->orderBy('lowongan.id','DESC')
                ->paginate(10);   
        return view('mod_front.all',compact('page_title','res'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $page_title = 'Detail Lowongan';
		$detail = DB::table('lowongan')
				->join('waktu_kerja','waktu_kerja.id','=','lowongan.waktu_id')
				->join('employ_status','employ_status.id','=','lowongan.employ_status_id')
				->join('level','level.id','=','lowongan.level_id')
				->select(
						'lowongan.*',
						'level.nama_level','employ_status.nama_status','waktu_kerja.nama_waktu')
                ->where('publish','=','Y')
                ->where('user_verify','=','sukses')  
				->where('lowongan.judul_slug',$slug)->first();
        return view('mod_front.job_detail',compact('page_title','detail'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
