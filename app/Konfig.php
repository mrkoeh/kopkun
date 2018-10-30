<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Konfig extends Model
{
    protected $table = 'konfigurasi';
    protected $fillable = ['judul_web','url_web','meta_deskripsi','meta_keyword','alamat','tlp','email'];
    public $timestamps = false;
}
