<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use DB;
use Illuminate\Support\Facades\Input;

class SiteController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function tentang(Request $request)
    {

        $page_title = 'Tentang Pedihelp';

        return view('mod_front.tentang',compact('page_title'));
    }

}
