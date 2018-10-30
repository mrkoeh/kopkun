<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Area;


use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class AreaController extends Controller
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
        $page_title = 'Area';
        $areas  = Area::orderBy('id','DESC')->get();
        return view('mod_area.index',compact('page_title','areas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_title = 'Tambah area';
        return view('mod_area.create',compact('page_title'));
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
                            'nama_area' => 'required|unique:area'
                            ]);

        $add = new Area;
        $add->nama_area  = $request->nama_area;
        $add->area_slug  = str_slug($request->nama_area);
        $add->save();
        if($add)
        {
                $request->session()->flash('alert-success', 'Area Berhasil ditambahkan.');
                return redirect('/semua-area');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menambah area baru');
                return redirect('/semua-area');            
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
        $page_title  = 'Edit Area';
        $getarea = Area::where('id',$id)->first();
        return view('mod_area.edit',compact('page_title','getarea'));
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
        $ubah = Area::where('id',$id)->first();
        $ubah->nama_area  = $request->nama_area;
        $ubah->area_slug  = str_slug($request->nama_area);
        $ubah->update();
        if($ubah)
        {
                $request->session()->flash('alert-success', 'Area Berhasil dirubah.');
                return redirect('/semua-area');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa merubah area');
                return redirect('/semua-area');            
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
        $del = Area::where('id',$id)->delete();
        if($del)
        {
                $request->session()->flash('alert-success', 'Area Berhasil dihapus.');
                return redirect('/semua-area');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menghapus area');
                  return redirect('/semua-area');            
        }
    }
}
