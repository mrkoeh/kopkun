
  <?php $__env->startSection('content'); ?>
<div class="box-header with-border">
  <h3 class="box-title"><?php echo e($page_title); ?></h3>
</div>
<?php echo $__env->make('layouts.errors', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->make('layouts.flash_message', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<form action="/konfigurasi/<?php echo e($getkonfig->id); ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
      <?php echo e(csrf_field()); ?>

  <div class="box box-default">
        <div class="box-body">
          <div class="row">
            <div class="col-md-9">
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Judul Web</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="judul_web" value="<?php echo e($getkonfig->judul_web); ?>">
                </div>
              </div>
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">URL Web </label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="url_web" value="<?php echo e($getkonfig->url_web); ?>">
                </div>
              </div>

              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Deskripsi </label>
                <div class="col-sm-10">
                  <textarea name="meta_deskripsi" rows="3" class="form-control"><?php echo e($getkonfig->meta_deskripsi); ?></textarea>
                </div>
              </div>

              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Keyword </label>
                <div class="col-sm-10">
                  <textarea name="meta_keyword" rows="3" class="form-control"><?php echo e($getkonfig->meta_keyword); ?></textarea>
                </div>
              </div>

              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Alamat Kantor </label>
                <div class="col-sm-10">
                  <textarea name="alamat" rows="3" class="form-control"><?php echo e($getkonfig->alamat); ?></textarea>
                </div>
              </div>

              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">No. Hp/Tlp</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="tlp" value="<?php echo e($getkonfig->tlp); ?>">
                </div>
              </div>
 
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Email</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="email" value="<?php echo e($getkonfig->email); ?>">
                </div>
              </div>

            </div>
        </div>
      </div>
    <div class="box-footer text-center">
      <button type="submit" class="btn btn-info"><i class="fa fa-save"></i> Simpan</button>
    </div>
  </div>
</form> 
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.admin_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>