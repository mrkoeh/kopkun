
  <?php $__env->startSection('content'); ?>
<div class="box-header with-border">
  <h3 class="box-title"><?php echo e($page_title); ?></h3>
</div>
<?php echo $__env->make('layouts.errors', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->make('layouts.flash_message', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?> 
<form action="/ubah-password/<?php echo e($user->id); ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
      <?php echo e(csrf_field()); ?>

  <div class="box box-default">
        <div class="box-body">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Password Lama</label>
                <div class="col-sm-5">
                  <input type="hidden" name="id" value="<?php echo e($user->id); ?>">
                  <input type="password" class="form-control" name="password_lama">
                </div>
              </div>

              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Password Baru</label>
                <div class="col-sm-5">
                  <input type="password" class="form-control" name="password">
                </div>
              </div>
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Verifikasi Password</label>
                <div class="col-sm-5">
                  <input type="password" class="form-control" name="password_confirmation">
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