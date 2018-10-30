<aside class="main-sidebar">
    <section class="sidebar">
        <ul class="sidebar-menu" data-widget="tree">
            <li {{{ (Request::is('home') ? 'class=active' : '') }}}><a href="/home"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>

            @can('user_manajemen_menu')
                <li class="treeview {{{ (Request::is('grup','tambah-grup','ubah-grup/*','hak-akses','tambah-hakakses','ubah-hakakses/*','pengguna','tambah-pengguna','ubah-pengguna/*') ? 'active' : '') }}}">
                    <a href="#">
                        <i class="fa fa-users"></i> <span>User Manajemen</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        @can('lihat_daftar_pengguna')
                            <li {{{ (Request::is('pengguna','tambah-pengguna','ubah-pengguna/*') ? 'class=active' : '') }}}><a href="/pengguna"><i class="fa fa-user text-aqua"></i> <span>Pengguna</span></a></li>
                        @endcan
                        @can('lihat_grup_pengguna')
                            <li {{{ (Request::is('grup','tambah-grup','ubah-grup/*') ? 'class=active' : '') }}}><a href="/grup"><i class="fa fa-star-o text-aqua"></i> <span>Grup Pengguna</span></a></li>
                        @endcan
                        @can('lihat_hak_akses')
                            <li {{{ (Request::is('hak-akses','tambah-hakakses','ubah-hakakses/*') ? 'class=active' : '') }}}><a href="{{url('/hak-akses')}}"><i class="fa fa-key text-aqua"></i>
                        <span>Hak akses</span></a></li>
                        @endcan
                    </ul>
                </li>
            @endcan
            @can('lihat_master_menu')
                <li class="treeview {{{ 
                (Request::is(
                'daftar-pendidikan','tambah-pendidikan','ubah-pendidikan/*', 
                'tipe-pekerjaan','tambah-tipe','ubah-tipe/*',
                'golongan-gaji','tambah-gaji','ubah-gaji/*',
                'waktu-pekerjaan','tambah-waktu','ubah-waktu/*',
                'semua-area','tambah-area','ubah-area/*',
                'semua-kategori','tambah-kategori','ubah-kategori/*',
                'semua-status','tambah-status','ubah-status/*',
                'semua-level','tambah-level','ubah-level/*') ? 'active' : '') 
                }}}
                ">
                    <a href="#">
                        <i class="fa fa-cubes"></i> <span>Master</span>
                        <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                        </span>
                    </a>
                    <ul class="treeview-menu">
                        @can('lihat_pendidikan')
                            <li {{{ (Request::is('daftar-pendidikan','tambah-pendidikan','ubah-pendidikan/*') ? 'class=active' : '') }}}><a href="/daftar-pendidikan"><i class="fa fa-mortar-board text-aqua"></i> Pendidikan</a></li>
                        @endcan
                        @can('lihat_tipe_pekerjaan')
                            <li {{{ (Request::is('tipe-pekerjaan','tambah-tipe','ubah-tipe/*') ? 'class=active' : '') }}}><a href="/tipe-pekerjaan"><i class="fa fa-suitcase text-aqua"></i> Tipe Pekerjaan</a></li>
                        @endcan
                        @can('lihat_bidang_pekerjaan')
                            <li {{{ (Request::is('waktu-pekerjaan','tambah-waktu','ubah-waktu/*') ? 'class=active' : '') }}}><a href="/waktu-pekerjaan"><i class="fa fa-hourglass-1  text-aqua"></i> waktu Pekerjaan</a></li>
                        @endcan
                        @can('lihat_area')
                            <li {{{ (Request::is('semua-area','tambah-area','ubah-area/*') ? 'class=active' : '') }}}><a href="/semua-area"><i class="fa fa-map-marker"></i> Area</a></li>
                        @endcan
                        @can('lihat_status')
                            <li {{{ (Request::is('semua-status','tambah-status','ubah-status/*') ? 'class=active' : '') }}}><a href="/semua-status"><i class="fa fa-exclamation-circle "></i> Status Kepegawaian</a></li>
                        @endcan
                        @can('lihat_level')
                            <li {{{ (Request::is('semua-level','tambah-level','ubah-level/*') ? 'class=active' : '') }}}><a href="/semua-level"><i class="fa fa-balance-scale"></i> Level Posisi</a></li>
                        @endcan
                    </ul>
                </li>
            @endcan
            @can('lihat_lowongan')
                <li {{{ (Request::is('lowongankerja','tambah-lowongan','ubah-lowongan/*') ? 'class=active' : '') }}}><a href="/lowongankerja"><i class="fa fa-briefcase"></i> <span>Direktori Lowongan</span></a></li>
            @endcan
        </ul>
    </section>
</aside>