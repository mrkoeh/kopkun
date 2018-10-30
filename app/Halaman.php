<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Halaman extends Model
{
    protected $table = 'halaman';
    protected $fillable = ['judul_halaman', 'judul_slug','isi_halaman'];

}
