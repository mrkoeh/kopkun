<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Gaji extends Model
{
    protected $table = 'tipe_gaji';
    protected $fillable = ['kategori_gaji'];
    public $timestamps = false;
}
