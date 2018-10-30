<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class JamKerja extends Model
{
    protected $table = 'waktu_kerja';
    protected $fillable = ['nama_waktu','waktu_slug'];
    public $timestamps =false;
}
