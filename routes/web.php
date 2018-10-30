<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// MENU
Route::get('/','IndexController@index');
Route::get('/tentang','SiteController@tentang');
Route::get('/faq','SiteController@faq');
Route::get('/sk','SiteController@sk');
Route::get('/kebijakan','SiteController@kebijakan');

// PROYEK
Route::get('/semuaproyek','ProyekController@all');
Route::get('/detailproyek/{id}','ProyekController@detail');

// AKUN
Route::get('adminpedia','SessionsController@create');
Route::post('login','SessionsController@store');
Route::get('/logout', 'SessionsController@destroy');
Route::get('register','SessionsController@register');
Route::post('daftarakun','SessionsController@daftarakun');

// HARUS LOGIN
Route::group(['middleware' => 'auth'], function(){
	
	Route::get('/buatproyek','ProyekController@index');
	Route::post('uploadproyek','ProyekController@store');

	Route::get('/home','AdminContoller@index')->name('home');
	
});


// USER
Route::get('/pengguna','UserController@index');
Route::get('/tambah-pengguna','UserController@create');
Route::post('/tambah-pengguna','UserController@store');
Route::get('/ubah-pengguna/{id}','UserController@edit');
Route::post('/ubah-pengguna/{id}','UserController@update');
Route::get('/hapus-pengguna/{id}','UserController@destroy');
Route::post('/status-pengguna/{id}','UserController@change');

// route grup atau role
Route::get('/grup','RoleController@index');
Route::get('/tambah-grup','RoleController@create');
Route::post('/tambah-grup','RoleController@store');
Route::get('/ubah-grup/{id}','RoleController@edit');
Route::post('/ubah-grup/{id}','RoleController@update');
Route::get('/hapus-grup/{id}','RoleController@destroy');

// permission
Route::get('/hak-akses','PermissionController@index');
Route::get('/tambah-hakakses','PermissionController@create');
Route::post('/tambah-hakakses','PermissionController@store');
Route::get('/ubah-hakakses/{id}','PermissionController@edit');
Route::post('/ubah-hakakses/{id}','PermissionController@update');
Route::get('/hapus-hakakses/{id}','PermissionController@destroy');

// pendidikan
Route::get('/daftar-pendidikan','PendidikanController@index');
Route::post('/tambah-pendidikan','PendidikanController@store');
Route::get('/ubah-pendidikan/{id}','PendidikanController@edit');
Route::post('/ubah-pendidikan/{id}','PendidikanController@update');
Route::get('/hapus-pendidikan/{id}','PendidikanController@destroy');

// tipe pekerjaan
Route::get('/tipe-pekerjaan','TipeKerjaController@index');
Route::get('/tambah-tipe','TipeKerjaController@create');
Route::post('/tambah-tipe','TipeKerjaController@store');
Route::get('/ubah-tipe/{id}','TipeKerjaController@edit');
Route::post('/ubah-tipe/{id}','TipeKerjaController@update');
Route::get('/hapus-tipe/{id}','TipeKerjaController@destroy');

//golongan gaji
Route::get('/golongan-gaji','GajiController@index');
Route::get('/tambah-gaji','GajiController@create');
Route::post('/tambah-gaji','GajiController@store');
Route::get('/ubah-gaji/{id}','GajiController@edit');
Route::post('/ubah-gaji/{id}','GajiController@update');
Route::get('/hapus-gaji/{id}','GajiController@destroy');

// waktu kerja
Route::get('/waktu-pekerjaan','JamKerjaController@index');
Route::get('/tambah-waktu','JamKerjaController@create');
Route::post('/tambah-waktu','JamKerjaController@store');
Route::get('/ubah-waktu/{id}','JamKerjaController@edit');
Route::post('/ubah-waktu/{id}','JamKerjaController@update');
Route::get('/hapus-waktu/{id}','JamKerjaController@destroy');

// AREA
Route::get('/semua-area','AreaController@index');
Route::get('/tambah-area','AreaController@create');
Route::post('/tambah-area','AreaController@store');
Route::get('/ubah-area/{id}','AreaController@edit');
Route::post('/ubah-area/{id}','AreaController@update');
Route::get('/hapus-area/{id}','AreaController@destroy');

// list lowongan kerja
Route::get('/lowongankerja','LowonganController@index');
Route::get('/tambah-lowongan','LowonganController@create');
Route::post('/tambah-lowongan','LowonganController@store');
Route::get('/ubah-lowongan/{id}','LowonganController@edit');
Route::post('/ubah-lowongan/{id}','LowonganController@update');
Route::get('/hapus-lowongan/{id}','LowonganController@destroy');
Route::post('/status-lowongan/{id}','LowonganController@change');

// kategori
Route::get('/semua-kategori','KategoriController@index');
Route::get('/tambah-kategori','KategoriController@create');
Route::post('/tambah-kategori','KategoriController@store');
Route::get('/ubah-kategori/{id}','KategoriController@edit');
Route::post('/ubah-kategori/{id}','KategoriController@update');
Route::get('/hapus-kategori/{id}','KategoriController@destroy');


// employ status
Route::get('/semua-status','EmployStatusController@index');
Route::get('/tambah-status','EmployStatusController@create');
Route::post('/tambah-status','EmployStatusController@store');
Route::get('/ubah-status/{id}','EmployStatusController@edit');
Route::post('/ubah-status/{id}','EmployStatusController@update');
Route::get('/hapus-status/{id}','EmployStatusController@destroy');

// level posisi
Route::get('/semua-level','LevelController@index');
Route::get('/tambah-level','LevelController@create');
Route::post('/tambah-level','LevelController@store');
Route::get('/ubah-level/{id}','LevelController@edit');
Route::post('/ubah-level/{id}','LevelController@update');
Route::get('/hapus-level/{id}','LevelController@destroy');

// modul untuk tag artikel
Route::get('/semua-tag','TagController@index');
Route::get('/tambah-tag','TagController@create');
Route::post('/tambah-tag','TagController@store');
Route::get('/ubah-tag/{id}','TagController@edit');
Route::post('/ubah-tag/{id}','TagController@update');
Route::get('/hapus-tag/{id}','TagController@destroy');