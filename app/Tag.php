<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    protected $table = 'tag';
    protected $fillable = ['id','nama_tag','tag_slug'];
    public $timestamps = false;
}
