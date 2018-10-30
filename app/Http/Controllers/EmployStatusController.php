<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\EmployStatus;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
class EmployStatusController extends Controller
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
        $page_title = 'Status Kepegawaian master';
        $employstats = EmployStatus::orderBy('id','DESC')->get();
        return view('mod_status.index',compact('page_title','employstats'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_title  = 'Tambah master status kepegawaian';
        return view('mod_status.create',compact('page_title'));
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
                            'nama_status'       => 'required|unique:employ_status'
                            ]);

        $add = new EmployStatus;
        $add->nama_status     = $request->nama_status;
        $add->status_slug     = str_slug($request->nama_status);
        $add->save();
        if($add)
        {
                $request->session()->flash('alert-success', 'Status kepegawaian Berhasil ditambahkan.');
                return redirect('/semua-status');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menambah status kepegawaian baru');
                return redirect('/semua-status');            
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
        $page_title  = 'Edit Status Kepegawaian';
        $getstatus = EmployStatus::where('id',$id)->first();
        return view('mod_status.edit',compact('page_title','getstatus'));
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
        $ubah = EmployStatus::where('id',$id)->first();
        $ubah->nama_status     = $request->nama_status;
        $ubah->status_slug     = str_slug($request->nama_status);
        $ubah->update();
        if($ubah)
        {
                $request->session()->flash('alert-success', 'Status kepegawaian Berhasil dirubah.');
                return redirect('/semua-status');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa merubah Status kepegawaian');
                return redirect('/semua-status');            
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
        $del = EmployStatus::where('id',$id)->delete();
        if($del)
        {
                $request->session()->flash('alert-success', 'Status kepegawaian Berhasil dihapus.');
                return redirect('/semua-status');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menghapus Status kepegawaian');
                  return redirect('/semua-status');            
        }
    }
}
