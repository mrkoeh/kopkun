<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Area extends Model
{
    protected $table = 'area';
    protected $fillable = ['nama_area','area_slug'];
    public $timestamps = false;

    public function loker()
    {
    	return $this->hasMany(Area::class);
    }
}
