<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Submenu extends Model
{
    protected $table = 'submenu';
    protected $fillable = ['nama_sub','link_sub','mainmenu_id'];
    public $timestamps = false;
}
