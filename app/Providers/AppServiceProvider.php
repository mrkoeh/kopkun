<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
         Schema::defaultStringLength(191);

        view()->composer('layouts.home_search', function($view)
        {
            $areas = \App\Area::get();
            
            $view->with('areas',$areas);
            
        });

        view()->composer('layouts.meta_title',function($view)

        {
            $judul = \App\Konfig::where('id','1')
                    ->select('judul_web','meta_deskripsi','meta_keyword')->first();                
          
            // $judul = collect($judul);
            $view->with('judul',$judul);

        });

        view()->composer('layouts.meta_title',function($view)

        {

            $verifikasi = \App\Webmaster::where('id','1')
                    ->select('google','bing')->first();
            $view->with('verifikasi',$verifikasi);

        });

        //tampilkan tipe pekerjaan atau spesialisasi
        view()->composer('layouts.home_search', function($view)
        {
            $pesialises = \App\TipeKerja::get();
            
            $view->with('pesialises',$pesialises);
            
        });

        view()->composer('layouts.front_sidebar', function($view)
        {
            $kategorikerja = \App\TipeKerja::get();
            
            $view->with('kategorikerja',$kategorikerja);
            
        });

        view()->composer('layouts.front_sidebar', function($view)
        {
            $pendidikans = \App\Pendidikan::get();
            
            $view->with('pendidikans',$pendidikans);
            
        });


        view()->composer('layouts.front_sidebar', function($view)
        {
            $areas = \App\Area::get();
            
            $view->with('areas',$areas);
            
        });


        view()->composer('layouts.front_footer', function($view)
        {
            $menus = \App\Mainmenu::where('aktif','Y')->where('posisi',2)->orderBy('id','DESC')->get();
            
            $view->with('menus',$menus);
            
        });

        view()->composer('layouts.frontblog_template', function($view)
        {
            $populers = \App\Artikel::orderBy('dibaca','DESC')->take(6)->get();
            
            $view->with('populers',$populers);
            
        });

    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
