<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pendidikan extends Model
{
    protected $table = 'pendidikan';
    protected $fillable = ['nama_pendidikan','pendidikan_slug'];
    public $timestamps = false;
}
