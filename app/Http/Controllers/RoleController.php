<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

use Session;

use DB;
class RoleController extends Controller
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
        $page_title = 'Semua Role Group';
        $roles      = Role::get();
        return view('mod_grup.index',compact('page_title','roles'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_title  = 'Tambah Role Group';
        $permissions = Permission::get();
        return view('mod_grup.create',compact('page_title','permissions'));
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
            'display_name'      => 'required',
            'permissions'       => 'required'

        ]);
        
        $grup = Role::create([
           'display_name'   => request('display_name'),
           'name'           => str_replace(' ', '_', request('display_name')),
        ]);

        $name        = str_replace(' ', '_', request('display_name'));
        $permissions = $request['permissions'];
         //Looping untuk permission yang pilih
        foreach ($permissions as $permission) 
        {
            $p = Permission::where('id', '=', $permission)->firstOrFail(); 
             //Fetch the newly created role and assign permission
            $role = Role::where('name', '=', $name)->first(); 
            $role->givePermissionTo($p);
        }

        if($grup){
         $request->session()->flash('alert-success', 'Grup pengguna baru berhasil ditambahkan.');
         return redirect('/grup');              
        }
        else{
         $request->session()->flash('alert-danger', 'Error. Tidak bisa menambah role grup baru.');
         return redirect('/tambah-grup');              
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
        $page_title     = 'Edit Role Group';
        $getroles       = Role::where('id',$id)->first();
        $permissions    = Permission::all();
        $haspermision   = DB::table('role_has_permissions')->where('role_id',$getroles->id)->get();        
        return view('mod_grup.edit',compact('page_title','getroles','permissions','haspermision'));
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
        $role = Role::findOrFail($id);//Get role with the given id

        $this->validate($request, [
            'display_name'=>'required|max:20|unique:roles,display_name,'.$id,
            'permissions' =>'required'
        ]);

        $input = $request->except(['permissions']);
        $permissions = $request['permissions'];
        $display_name= $request['display_name'];
        $name        = str_replace(' ', '_', request('display_name'));
        $role->fill($input)->update();

        $p_all = Permission::all();//Get all permissions
        foreach ($p_all as $p) {
            $role->revokePermissionTo($p); //Remove all permissions associated with role
        }

        foreach ($permissions as $permission) {
            $p = Permission::where('id', '=', $permission)->first(); 
            $role->givePermissionTo($p);

        }

        $request->session()->flash('alert-success', 'Grup pengguna berhasil dirubah.');
        return redirect('/grup');            
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        $del = Role::where('id',$id)->delete();
        if($del)
            {
                $request->session()->flash('alert-success', 'Grup role pengguna berhasil dihapus.');
                return redirect('/grup');             
            }
            else
            {
                $request->session()->flash('alert-danger', 'Error. Tidak bisa menghapus Grup role.');
                return redirect('/grup');       
            }        
    }
}
