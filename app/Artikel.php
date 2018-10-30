<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Artikel extends Model
{
    protected $table = 'artikel';
    protected $fillable = ['id','user_id','judul_artikel','judul_slug','isi_artikel','tag_artikel','deskripsi_seo','dibaca','created_user'];
    
}
