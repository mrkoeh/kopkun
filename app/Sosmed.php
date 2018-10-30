<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sosmed extends Model
{
    protected $table = 'sosial_media';
    protected $fillable = ['fb','ig','twt'];
    public $timestamps = false;
}
