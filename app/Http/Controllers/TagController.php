<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class TagController extends Controller
{

	public function __construct()
    {
        $this->middleware(['auth']);

    }
    
    public function index()
    {
    	$page_title   = 'Tag Artikel';
    	$tags         = \App\Tag::orderBy('id','DESC')->get();
    	return view('mod_tag.index',compact('page_title','tags'));
    }


    public function create()
    {
    	$page_title = 'Tambah Tag Artikel';
    	return view('mod_tag.create',compact('page_title'));
    }


    public function store(Request $request)
    {
        $this->validate($request, [
            'nama_tag'      => 'required|unique:tag'
                            ]);
        $save = \App\Tag::create([
                            'nama_tag' => request('nama_tag'),
                            'tag_slug'  => str_slug(request('nama_tag'))
                                ]);
        if($save)
        {
                $request->session()->flash('alert-success', 'Tag berhasil ditambahkan.');
                return redirect('/semua-tag');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menambah tag baru');
                return redirect('/semua-tag');            
        }      
    }

    public function edit($id)
    {
        $page_title     = 'Edit Tag Artikel';
        $gettags    	= \App\Tag::where('id',$id)->first();
        return view('mod_tag.edit',compact('page_title','gettags'));    	
    }

    public function update(Request $request, $id)
    {

        $ubah = \App\Tag::where('id',$id)->first();
        $ubah->nama_tag  = $request->nama_tag;
        $ubah->tag_slug  = str_slug($request->nama_tag);
        $ubah->update();
        if($ubah)
        {
                $request->session()->flash('alert-success', 'Tag berhasil dirubah.');
                return redirect('/semua-tag');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa merubah tag');
                return redirect('/semua-tag');            
        }   
    }



    public function destroy(Request $request, $id)
    {
        $del = \App\Tag::where('id',$id)->delete();
        if($del)
        {
                $request->session()->flash('alert-success', 'Tag berhasil dihapus.');
                return redirect('/semua-tag');            
        }
        else
        {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menghapus tag');
                return redirect('/semua-tag');            
        }
    }

}
