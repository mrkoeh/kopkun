<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Level;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
class LevelController extends Controller
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
        $page_title = 'Level Posisi';
        $levels  = Level::orderBy('id','DESC')->get();
        return view('mod_level.index',compact('page_title','levels'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_title = 'Tambah Level Posisi';
        return view('mod_level.create',compact('page_title'));
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
                            'nama_level' => 'required|unique:level'
                            ]);

        $add = new Level;
        $add->nama_level  = $request->nama_level;
        $add->level_slug  = str_slug($request->nama_level);
        $add->save();
        if($add)
        {
                $request->session()->flash('alert-success', 'Level Posisi Berhasil ditambahkan.');
                return redirect('/semua-level');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menambah level posisi baru');
                return redirect('/semua-level');            
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
        $page_title  = 'Edit Level Posisi';
        $getlevel = Level::where('id',$id)->first();
        return view('mod_level.edit',compact('page_title','getlevel'));
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
        $ubah = Level::where('id',$id)->first();
        $ubah->nama_level  = $request->nama_level;
        $ubah->level_slug  = str_slug($request->nama_level);
        $ubah->update();
        if($ubah)
        {
                $request->session()->flash('alert-success', 'Level Posisi Berhasil dirubah.');
                return redirect('/semua-level');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa merubah level posisi');
                return redirect('/semua-level');            
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
        $del = Level::where('id',$id)->delete();
        if($del)
        {
                $request->session()->flash('alert-success', 'Level Posisi Berhasil dihapus.');
                return redirect('/semua-level');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menghapus level posisi');
                  return redirect('/semua-level');            
        }
    }
}
