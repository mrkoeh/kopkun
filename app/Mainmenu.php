<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Mainmenu extends Model
{
    protected $table = 'mainmenu';
    protected $fillable = ['nama_menu','link','aktif','posisi'];
    public $timestamps = false;
}
