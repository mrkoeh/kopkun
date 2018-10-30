<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Webmaster extends Model
{
    protected $table = 'webmaster';
    protected $fillable = ['google','bing'];
    public $timestamps = false;
}
