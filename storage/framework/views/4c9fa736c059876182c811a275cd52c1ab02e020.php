
  <?php $__env->startSection('content'); ?>
<div class="box-header with-border">
  <h3 class="box-title"><?php echo e($page_title); ?></h3>
</div>
<?php echo $__env->make('layouts.errors', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->make('layouts.flash_message', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<form action="/update-webmaster/<?php echo e($getkode->id); ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
      <?php echo e(csrf_field()); ?>

  <div class="box box-default">
        <div class="box-body">
          <div class="row">
            <div class="col-md-9">
              <div class="form-group">
                <label for="nama" class="col-sm-4 control-label">Google Verification</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" name="google" value="<?php echo e($getkode->google); ?>">
                </div>
              </div>
              <div class="form-group">
                <label for="nama" class="col-sm-4 control-label">Bing Verifiction </label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" name="bing" value="<?php echo e($getkode->bing); ?>">
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