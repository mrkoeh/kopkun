<aside class="main-sidebar">
  <section class="sidebar">
      <ul class="sidebar-menu" data-widget="tree">
        <li <?php echo e((Request::is('home') ? 'class=active' : '')); ?>><a href="/home"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
          <li class="treeview <?php echo e((Request::is('semua-artikel','tambah-artikel','ubah-artikel/*',
          'semua-tag','tambah-tag','ubah-tag/*') ? 'active' : '')); ?>">
            <a href="#">
              <i class="fa fa-edit"></i> <span>Artikel</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_artikel')): ?>
              <li <?php echo e((Request::is('semua-artikel','tambah-artikel','ubah-artikel/*') ? 'class=active' : '')); ?>><a href="/semua-artikel"><i class="fa fa-circle-o text-aqua"></i> <span>Artikel</span></a></li>
              <?php endif; ?>
              <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_tag')): ?>
              <li <?php echo e((Request::is('semua-tag','tambah-tag','ubah-tag/*') ? 'class=active' : '')); ?>><a href="/semua-tag"><i class="fa fa-circle-o text-aqua"></i> <span>Tag Artikel</span></a></li>
              <?php endif; ?>
            </ul>
          </li>

          <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_halaman')): ?>
          <li <?php echo e((Request::is('halaman','tambah-halaman','ubah-halaman/*') ? 'class=active' : '')); ?>><a href="/halaman"><i class="fa  fa-file-text-o"></i> <span>Halaman</span></a></li>
          <?php endif; ?>

        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('website_config')): ?>
        <li class="treeview <?php echo e((Request::is(
          'webmaster','update-webmaster/*','konfigurasi','konfigurasi/*') ? 'active' : '')); ?>

        ">
          <a href="#">
            <i class="fa fa-gears"></i> <span>Konfigurasi Web</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('verifikasi_webmaster')): ?>
            <li <?php echo e((Request::is('webmaster','update-webmaster/*') ? 'class=active' : '')); ?>><a href="/webmaster"><i class="fa fa-globe text-aqua"></i> Webmaster Verifikasi</a></li>
            <?php endif; ?>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('konfigurasi_website')): ?>
            <li <?php echo e((Request::is('konfigurasi','konfigurasi/*') ? 'class=active' : '')); ?>><a href="/konfigurasi"><i class="fa  fa-wrench text-aqua"></i> Setelan Dasar</a></li>
            <?php endif; ?>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_sosial_media')): ?>
            <li <?php echo e((Request::is('sosialmedia','sosialmedia/*') ? 'class=active' : '')); ?>><a href="/sosialmedia"><i class="fa  fa-wechat text-aqua"></i> Akun Sosial Media</a></li>
            <?php endif; ?>
          </ul>
        </li>
        <?php endif; ?>
          <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('menu_grup')): ?>
          <li class="treeview <?php echo e((Request::is('menuutama','tambah-menuutama','ubah-menuutama/*','submenu','tambah-submenu','ubah-submenu/*') ? 'active' : '')); ?>">
            <a href="#">
              <i class="fa fa-share-alt"></i> <span>Menu Manajemen</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_menuutama')): ?>
               <li <?php echo e((Request::is('menuutama','tambah-menuutama','ubah-menuutama/*') ? 'class=active' : '')); ?>><a href="/menuutama"><i class="fa fa-circle-o text-aqua"></i> <span>Mainmenu</span></a></li>
              <?php endif; ?>
              <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_submenu')): ?>
               <li <?php echo e((Request::is('submenu','tambah-submenu','ubah-submenu/*') ? 'class=active' : '')); ?>><a href="/submenu"><i class="fa fa-circle-o text-aqua"></i> <span>Submenu</span></a></li>
               <?php endif; ?>
             </ul>
          </li>
          <?php endif; ?>
        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('user_manajemen_menu')): ?>
          <li class="treeview <?php echo e((Request::is('grup','tambah-grup','ubah-grup/*','hak-akses','tambah-hakakses','ubah-hakakses/*','pengguna','tambah-pengguna','ubah-pengguna/*') ? 'active' : '')); ?>">
            <a href="#">
              <i class="fa fa-users"></i> <span>User Manajemen</span>
              <span class="pull-right-container">
                <i class="fa fa-angle-left pull-right"></i>
              </span>
            </a>
            <ul class="treeview-menu">
              <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_daftar_pengguna')): ?>
              <li <?php echo e((Request::is('pengguna','tambah-pengguna','ubah-pengguna/*') ? 'class=active' : '')); ?>><a href="/pengguna"><i class="fa fa-user text-aqua"></i> <span>Pengguna</span></a></li>
              <?php endif; ?>
              <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_grup_pengguna')): ?>
              <li <?php echo e((Request::is('grup','tambah-grup','ubah-grup/*') ? 'class=active' : '')); ?>><a href="/grup"><i class="fa fa-star-o text-aqua"></i> <span>Grup Pengguna</span></a></li>
              <?php endif; ?>
              <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_hak_akses')): ?>
              <li <?php echo e((Request::is('hak-akses','tambah-hakakses','ubah-hakakses/*') ? 'class=active' : '')); ?>><a href="<?php echo e(url('/hak-akses')); ?>"><i class="fa fa-key text-aqua"></i>
                <span>Hak akses</span></a></li>
              <?php endif; ?>
            </ul>
          </li>
          <?php endif; ?>
        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_master_menu')): ?>
        <li class="treeview <?php echo e((Request::is(
          'daftar-pendidikan','tambah-pendidikan','ubah-pendidikan/*', 
          'tipe-pekerjaan','tambah-tipe','ubah-tipe/*',
          'golongan-gaji','tambah-gaji','ubah-gaji/*',
          'waktu-pekerjaan','tambah-waktu','ubah-waktu/*',
          'semua-area','tambah-area','ubah-area/*',
          'semua-kategori','tambah-kategori','ubah-kategori/*',
          'semua-status','tambah-status','ubah-status/*',
          'semua-level','tambah-level','ubah-level/*') ? 'active' : '')); ?>

        ">
          <a href="#">
            <i class="fa fa-cubes"></i> <span>Master</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_pendidikan')): ?>
            <li <?php echo e((Request::is('daftar-pendidikan','tambah-pendidikan','ubah-pendidikan/*') ? 'class=active' : '')); ?>><a href="/daftar-pendidikan"><i class="fa fa-mortar-board text-aqua"></i> Pendidikan</a></li>
            <?php endif; ?>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_tipe_pekerjaan')): ?>
            <li <?php echo e((Request::is('tipe-pekerjaan','tambah-tipe','ubah-tipe/*') ? 'class=active' : '')); ?>><a href="/tipe-pekerjaan"><i class="fa fa-suitcase text-aqua"></i> Tipe Pekerjaan</a></li>
            <?php endif; ?>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_bidang_pekerjaan')): ?>
            <li <?php echo e((Request::is('waktu-pekerjaan','tambah-waktu','ubah-waktu/*') ? 'class=active' : '')); ?>><a href="/waktu-pekerjaan"><i class="fa fa-hourglass-1  text-aqua"></i> waktu Pekerjaan</a></li>
            <?php endif; ?>
            <!--<?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_golongan_gaji')): ?>-->
            <!--<li <?php echo e((Request::is('golongan-gaji','tambah-gaji','ubah-gaji/*') ? 'class=active' : '')); ?>><a href="/golongan-gaji"><i class="fa  fa-money text-aqua"></i> Kategori Gaji</a></li>-->
            <!--<?php endif; ?>-->
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_area')): ?>
            <li <?php echo e((Request::is('semua-area','tambah-area','ubah-area/*') ? 'class=active' : '')); ?>><a href="/semua-area"><i class="fa fa-map-marker"></i> Area</a></li>
            <?php endif; ?>
<!--             <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_kategori')): ?>
            <li <?php echo e((Request::is('semua-kategori','tambah-kategori','ubah-kategori/*') ? 'class=active' : '')); ?>><a href="/semua-kategori"><i class="fa fa-server"></i> Kategori Perusahaan</a></li>
            <?php endif; ?> -->
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_status')): ?>
            <li <?php echo e((Request::is('semua-status','tambah-status','ubah-status/*') ? 'class=active' : '')); ?>><a href="/semua-status"><i class="fa fa-exclamation-circle "></i> Status Kepegawaian</a></li>
            <?php endif; ?>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_level')): ?>
            <li <?php echo e((Request::is('semua-level','tambah-level','ubah-level/*') ? 'class=active' : '')); ?>><a href="/semua-level"><i class="fa fa-balance-scale"></i> Level Posisi</a></li>
            <?php endif; ?>
          </ul>
        </li>
        <?php endif; ?>

<!--           <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_perusahaan')): ?>
          <li <?php echo e((Request::is('semua-perusahaan','tambah-perusahaan','ubah-perusahaan/*') ? 'class=active' : '')); ?>><a href="/semua-perusahaan"><i class="fa fa-briefcase"></i> <span>Direktori Lokasi</span></a></li>
          <?php endif; ?> -->
          <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('lihat_lowongan')): ?>
          <li <?php echo e((Request::is('lowongankerja','tambah-lowongan','ubah-lowongan/*') ? 'class=active' : '')); ?>><a href="/lowongankerja"><i class="fa fa-briefcase"></i> <span>Direktori Lowongan</span></a></li>
          <?php endif; ?>
        </ul>
  </section>
</aside>