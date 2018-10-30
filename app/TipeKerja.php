<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TipeKerja extends Model
{
    protected $table = 'tipe_pekerjaan';
    protected $fillable = ['nama_tipe','tipe_slug'];
    public $timestamps = false;
}
