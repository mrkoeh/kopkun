<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Auth;

use DB;

use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

use Session;
class UserController extends Controller
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
        $page_title = 'Semua pengguna';
        $penggunas  = User::orderBy('id','desc')->get();
        return view('mod_user.index',compact('page_title','penggunas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $page_title = 'Tambah Pengguna';
        $roles = Role::get();
        return view('mod_user.create',compact('page_title','roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        echo "sini"; exit;
        $this->validate($request, [
            'name'      => 'required|max:120',
            'email'     => 'required|email|unique:users',
            'password'  => 'required|min:6|confirmed',
            'role'      => 'required'

        ]);
        
        $user = User::create([
           'name'       => request('name'),
           'email'      => request('email'),
           'hp'         => request('hp'),
           'alamat'     => request('alamat'),
           'password'   => request('password')
        ]);
        
       
        $role   = request('role'); 
        $role_r = Role::where('id', '=', $role)->firstOrFail();            
        $user->assignRole($role_r);
        
        $request->session()->flash('alert-success', 'Pengguna baru berhasil ditambahkan.');
        return redirect('/pengguna');
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
    public function edit($id) {
        $page_title = 'Ubah Pengguna';
        
        $user = User::where('id', $id)->first();
        
        $roles = Role::get(); //Get all roles
           
        // $selected_role = DB::table('roles')
        //                 ->select('roles.*','user_has_roles.user_id','user_has_roles.role_id')
        //                 ->join('user_has_roles','roles.id','=','user_has_roles.role_id') 
        //                 ->where('user_has_roles.user_id',$id)->first();                
        $selected_role = $user->roles->first()->id;

        return view('mod_user.edit', compact('page_title', 'user', 'roles', 'selected_role')); 
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

        $user = User::where('id',$id)->first();

        // jika password di rubah
        if(!empty(request('password'))){
           User::where('id',$id)->update([
               'name'       => request('name'),
               'email'      => request('email'),
               'password'   => bcrypt(request('password'))
            ]);            
        }

        // jika password tidak di rubah
        else{
            User::where('id',$id)->update([
               'name'       => request('name'),
               'email'      => request('email')
            ]);               
        }
        $role = request('role'); 
         if (!empty($role)) {        
                    $user->roles()->sync($role);  //If one or more role is selected associate user to roles          
                }        
                else {
                    $user->roles()->detach(); //If no role is selected remove exisiting role associated to a user
                }
                
                $request->session()->flash('alert-success', 'Informasi pengguna berhasil diubah.');
                return redirect('/pengguna');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, $id)
    {
        User::where('id',$id)->delete();
        $request->session()->flash('alert-success', 'Informasi pengguna berhasil dihapus.');
        return redirect('/pengguna');
    }

    public function change(Request $request) 
    {    
         if(request('active') == 0) {
             User::where('id', request('id'))
                     ->update(['active' => 1]);
         }
         elseif(request('active') == 1) {
              User::where('id', request('id'))
                     ->update(['active' => 0]);
         }
        
         if(request('active') == 0) {
                $request->session()->flash('alert-success', 'Pengguna diaktifkan.');
                return redirect('/pengguna');
         }
         elseif(request('active') == 1) {
                $request->session()->flash('alert-danger', 'Pengguna telah dinonaktifkan.');
                return redirect('/pengguna');
         }
         return redirect('/pengguna');
    }
}
