<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Perusahaan extends Model
{
    protected $table = 'perusahaan';
    protected $fillable = ['user_id', 'kategori_id','nama_perusahaan','website', 'perusahaan_slug','deskripsi_perusahaan','alamat_perusahaan','gambar_cover','publish' ,'created_user'];
}
