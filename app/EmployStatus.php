<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class EmployStatus extends Model
{
    protected $table = 'employ_status';
    protected $fillable = ['nama_status','status_slug'];
    public $timestamps = false;
}
