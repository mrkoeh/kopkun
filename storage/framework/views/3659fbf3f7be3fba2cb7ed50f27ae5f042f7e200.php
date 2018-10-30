  <?php $__env->startSection('content'); ?>
<div class="box-header with-border">
  <h3 class="box-title"><?php echo e($page_title); ?></h3>
</div>
<?php echo $__env->make('layouts.errors', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->make('layouts.flash_message', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>  
<form action="/ubah-lowongan/<?php echo e($loker->id); ?>" method="post" enctype="multipart/form-data">
      <?php echo e(csrf_field()); ?>


  <div class="box box-default">
        <div class="box-body">
          <div class="row">
            <div class="col-md-9">
              <div class="form-group">
                <label>Judul Lowongan</label>
                <input type="text" name="judul_lowongan" class="form-control" value="<?php echo e($loker->judul_lowongan); ?>">
              </div>
              <div class="form-group">
                <label>Perusahaan</label>
                <input type="text" name="nama_perusahaan" class="form-control" value="<?php echo e($loker->nama_perusahaan); ?>">
              </div>

              <div class="form-group">
                <label>Waktu Kerja</label>
                 <select class="form-control select2" name="jam_kerja" >
                  <option value="0">--pilih--</option>
                  <?php $__currentLoopData = $jams; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $jam): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <option value="<?php echo e($jam->id); ?>" <?php if ($jam->id == $loker->waktu_id) echo ' selected'; ?>><?php echo e($jam->nama_waktu); ?></option>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
              </div>

              <div class="form-group">
                <label>Status Kepegawaian</label>
                 <select class="form-control select2" name="status" >
                  <option value="0">--pilih--</option>
                  <?php $__currentLoopData = $statuses; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $stat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <option value="<?php echo e($stat->id); ?>" <?php if ($stat->id == $loker->employ_status_id) echo ' selected'; ?>><?php echo e($stat->nama_status); ?></option>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
              </div>

              <div class="form-group">
                <label>Level Jabatan</label>
                 <select class="form-control select2" name="level" >
                  <option value="0">--pilih--</option>
                  <?php $__currentLoopData = $levels; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $level): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                  <option value="<?php echo e($level->id); ?>" <?php if ($level->id == $loker->level_id) echo ' selected'; ?>><?php echo e($level->nama_level); ?></option>
                  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
              </div>
              <div class="form-group">
                <label>Deskripsi Lowongan</label>
                  <textarea id="ckonten" name="deskripsi_lowongan" ><?php echo e($loker->deskripsi_lowongan); ?></textarea>
              </div>
              
              <div class="form-group">
                <label>Tag Lowongan</label>
                <input type="text" name="tag_lowongan" class="form-control" id="input-tags" style="width: 100%; max-width:794px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" value="<?php echo e($loker->tag_lowongan); ?>">
              </div>
              
              <div class="form-group">
                <label>Deskripsi SEO</label>
                <textarea name="deskripsi_seo" class="form-control" style="width: 100%; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">
                    <?php echo e($loker->deskripsi_seo); ?></textarea>
              </div>
              <div class="form-group">

                   <?php if($loker->cover_lowongan == 0): ?>
                  <img src="<?php echo e(asset('uploads/noimage.png')); ?>" />
                  <?php else: ?>
                  <img src="<?php echo e(asset('uploads/job_cover/' . $loker->cover_lowongan)); ?>"/>
                  <?php endif; ?>
              </div>
              <div class="form-group">
                <label>Ganti logo/cover</label>
                  <input type="file" name="cover_lowongan">
              </div>
            </div>

          <div class="col-md-3">
            <?php // blok 1 ?>
           <div class="box box-success">
            <div class="box-header">
              <h3 class="box-title">Tipe Pekerjaan</h3>
            </div>
              <div class="form-group">
                <?php $__currentLoopData = $tipes; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $t): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <label>
                  <input type="checkbox" class="minimal" name="tipe[]" value="<?php echo e($t->tipe_slug); ?>"                     
                    <?php 
                      foreach($selected_tipe as $jenis):
                      if ($jenis === $t->tipe_slug) 
                      echo 'checked';
                      endforeach;
                    ?>
                    >
                  <?php echo e($t->nama_tipe); ?>

                </label> <br>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              </div>
          </div><br>

            <?php // blok 2 ?>
           <div class="box box-success">
            <div class="box-header">
              <h3 class="box-title">Area</h3>
            </div>
              <div class="form-group">
                <?php $__currentLoopData = $areas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $area): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <label>
                  <input type="checkbox" class="minimal" name="area[]" value="<?php echo e($area->area_slug); ?>"
                    <?php 
                      foreach($selected_area as $wilayah):
                      if ($wilayah === $area->area_slug) 
                      echo 'checked';
                      endforeach;
                    ?>
                  >
                  <?php echo e($area->nama_area); ?>

                </label> <br>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              </div>
          </div><br>

            <?php // blok 3 ?>
           <div class="box box-success">
            <div class="box-header">
              <h3 class="box-title">Pendidikan</h3>
            </div>
              <div class="form-group">
                <?php $__currentLoopData = $pendidikans; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pendidikan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <label>
                  <input type="checkbox" class="minimal" name="pendidikan[]" value="<?php echo e($pendidikan->pendidikan_slug); ?>"
                    <?php 
                      foreach($selected_pendidikan as $sekolah):
                      if ($sekolah === $pendidikan->pendidikan_slug) 
                      echo 'checked';
                      endforeach;
                    ?>
                  >
                  <?php echo e($pendidikan->nama_pendidikan); ?>

                </label> <br>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              </div>
          </div><br>

       </div>
      </div>
    <div class="box-footer text-center">
      <button type="button" class="btn btn-default" onclick="window.location.href='/lowongankerja'"><i class="fa fa-refresh"></i> Batal</button>
      <button type="submit" class="btn btn-info"><i class="fa fa-save"></i> Simpan</button>
    </div>
  </div>
</form> 
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.admin_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>