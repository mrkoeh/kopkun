<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Auth;

//Importing laravel-permission models
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

use Session;

class PermissionController extends Controller
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
        $page_title     = 'Hak akses pengguna';
        $permissions    = Permission::orderBy('id','desc')->get();
        return view('mod_hak_akses.index',compact('page_title','permissions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_title = 'Tambah hak akses';
        return view('mod_hak_akses.create',compact('page_title'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'display_name'      => 'required'
                                  ]);
        $add = new Permission;
        $add->display_name = $request->display_name;
        $add->name         = str_replace(' ', '_', $request->display_name);
        $add->save();
        if($add)
            {
                $request->session()->flash('alert-success', 'Hak akses pengguna berhasil ditambahkan.');
                return redirect('/tambah-hakakses');             
            }
            else
            {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menambah hak akses baru.');
                return redirect('/hak-akses');        
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

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $page_title     = 'Edit Hak akses pengguna';
        $permissions    = Permission::where('id',$id)->first();
        return view('mod_hak_akses.edit',compact('page_title','permissions'));
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
        $ubah = Permission::where('id',$id)->first();
        $ubah->display_name = $request->display_name;
        $ubah->name         = str_replace(' ', '_', $request->display_name);
        $ubah->save();
        if($ubah)
            {
                $request->session()->flash('alert-success', 'Hak akses pengguna berhasil dirubah.');
                return redirect('/hak-akses');             
            }
            else
            {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa merubah hak akses.');
                return redirect('/ubah-hakakses/'.$id);        
            }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request,$id)
    {
        $del = Permission::where('id',$id)->delete();
        if($del)
            {
                $request->session()->flash('alert-success', 'Hak akses pengguna berhasil dihapus.');
                return redirect('/hak-akses');             
            }
            else
            {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menghapus hak akses.');
                return redirect('/hak-akses');       
            } 
    }
}
