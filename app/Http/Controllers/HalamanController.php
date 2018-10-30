<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


use App\Halaman;
use Session;
use DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;


class HalamanController extends Controller
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
        $page_title     = 'Halaman Statis';
        $statis         = Halaman::get();
        return view('mod_halaman.index',compact('page_title','statis'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_title     = 'Tambah halaman';
        return view('mod_halaman.create',compact('page_title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
                'judul_halaman' => 'required'
            ]);

        $saved = Halaman::create([
                'judul_halaman' => request('judul_halaman'),
                'judul_slug'  => str_slug(request('judul_halaman')),
                'isi_halaman'=> request('isi_halaman')
                ]);

        if($saved)
        {
                $request->session()->flash('alert-success', 'Halaman Baru Berhasil ditambahkan.');
                return redirect('/halaman');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menambah halaman baru');
                return redirect('/halaman');           
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
        $page_title     = 'Edit halaman';
        $gethal        = Halaman::where('id',$id)->first();
        return view('mod_halaman.edit',compact('page_title','gethal'));
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

        $ubah = Halaman::where('id',$id)->first();
        $ubah->judul_halaman = $request->judul_halaman;
        $ubah->judul_slug    = str_slug($request->judul_halaman);
        $ubah->isi_halaman   = $request->isi_halaman;
        $ubah->update();
        if($ubah)
        {
                $request->session()->flash('alert-success', 'Halaman Baru Berhasil dirubah.');
                return redirect('/halaman');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa merubah halaman.');
                return redirect('/halaman');           
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
        $del = Halaman::where('id',$id)->delete();
        if($del)
        {
                $request->session()->flash('alert-success', 'Halaman Berhasil dihapus.');
                return redirect('/halaman');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menghapus halaman.');
                return redirect('/halaman');              
        }
    }
}
