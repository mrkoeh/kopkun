<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;
use DB;
use Alert;
class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $page_title = 'Contact Us';
        $kontak = DB::table('konfigurasi')->select('alamat','email','tlp')->where('id',1)->first();
        return view('mod_front.contact',compact('page_title','kontak'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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
        //
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
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    function sendMail(Request $request)
    {
        
        $this->validate($request,[
                                'name'   => 'required',
                                'email'  => 'required|email',
                                'pesan'  => 'required'
                                 ]
                        );
     try{
        Mail::send('mod_front.email', ['name' => $request->name, 'pesan' => $request->pesan, 'email' => $request->email, 'subject' => $request->subject], function ($message) use ($request)
        {
            $message->subject($request->subject);
            $message->from($request->email, $request->name);
            $message->to('gagasagusbahtiar@gmail.com');
        });
                Alert::success('Pesan Berhasil dikirim', 'Sukses');
                return redirect('/hubungi-kami'); 
    }
        catch (Exception $e){
            return response (['status' => false,'errors' => $e->getMessage()]);
        }
    }
}
