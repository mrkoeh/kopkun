<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Cache;
use App\User;
use Auth;
use DB;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class SessionsController extends Controller
{
    public function __construct()
    {
        $this->middleware('guest', ['except' => 'destroy']);
    }
    
    public function create()
    {    
        return view('mod_login.create');
    }

    public function register()
    {    
        return view('mod_login.register');
    }
    
    public function store()
    {
        // Attempt to authenticate the user.
        $email = request('email');
        $password = request('password');

        $user = User::where( 'email', $email )
                ->first();

        if (Auth::attempt(['email' => $email, 'password' => $password, 'active' => 1])) {
           
            //$user_cache['nama'] = $user->name;

            return redirect('/buatproyek');
        }
        
        else{
                return back()->withErrors([
                'message' => 'Email & password tidak cocok. silahkan ulangi!'
                
            ]);  
        }

    }
    
    public function destroy()
    {
        auth()->logout();
        return redirect('/adminpedia');
    }

    public function daftarakun(Request $request)
    {

        $this->validate($request, [
            'name'      => 'required|max:120',
            'email'     => 'required|email|unique:users',
            'password'  => 'required|min:6'
        ]);
        
        $user = User::create([
           'name'       => request('name'),
           'email'      => request('email'),
           'hp'         => request('hp'),
           'alamat'     => request('alamat'),
           'password'   => request('password'),
           'active'     => '1'
        ]);
        
        // $role   = request('role'); 
        // $role_r = Role::where('id', '=', $role)->firstOrFail();            
        // $user->assignRole($role_r);
        
        $request->session()->flash('alert-success', 'Akun baru berhasil ditambahkan.');
        return redirect('/adminpedia');
    }
}
