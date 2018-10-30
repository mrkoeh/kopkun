<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lowongan extends Model
{
    protected $table = 'lowongan';
    protected $fillable = ['user_id','jenis_pekerjaan','judul_pekerjaan','deskripsi_pekerjaan','alamat','tanggal_pengerjaan','cover_pekerjaan','publish','created_user','user_verify'];


    public function area()
    {
    	return $this->belongsToMany(Area::class);
    }

    public function areas()
    {
    	return $this->belongsTo(Area::class);
    }

}
