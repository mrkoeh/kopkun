  <?php $__env->startSection('content'); ?>
<div class="box-header with-border">
  <h3 class="box-title"><?php echo e($page_title); ?></h3>
</div>
<?php echo $__env->make('layouts.errors', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->make('layouts.flash_message', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<form action="/tambah-artikel" method="post" enctype="multipart/form-data">
      <?php echo e(csrf_field()); ?>

  <div class="box box-default">
        <div class="box-body">
          <div class="row">
            <div class="col-md-9">
              <div class="form-group">
                <label>Judul</label>
                <input type="text" name="judul_artikel" class="form-control" required="required">
              </div>
              <div class="form-group">
                <label>Konten</label>
                <textarea id="ckonten" name="isi_artikel"></textarea>
              </div>
            </div>

          <div class="col-md-3">
          <div class="box box-success">
            <div class="box-header">
              <h3 class="box-title">Tag</h3>
            </div>
              <div class="form-group">
                <?php $__currentLoopData = $tags; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $tag): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <label>
                  <input type="checkbox" class="minimal" name="tag_artikel[]" value="<?php echo e($tag->tag_slug); ?>">
                  <?php echo e($tag->nama_tag); ?>

                </label> <br>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              </div>
          </div><br>
          <div class="box box-success">
            <div class="box-header">
              <h3 class="box-title">Deskripsi SEO</h3>
            </div>
              <div class="form-group">
                  <textarea name="deskripsi_seo" style="width: 100%; height: 100px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
              </div>
          </div>
        </div>
      </div>
    <div class="box-footer text-center">
      <button type="button" class="btn btn-default" onclick="window.location.href='/semua-artikel'"><i class="fa fa-refresh"></i> Batal</button>
      <button type="submit" class="btn btn-info"><i class="fa fa-save"></i> Simpan</button>
    </div>
  </div>
</form> 
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.admin_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>