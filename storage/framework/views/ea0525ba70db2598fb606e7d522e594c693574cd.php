
  <?php $__env->startSection('content'); ?>
<div class="box-header with-border">
  <h3 class="box-title"><?php echo e($page_title); ?></h3>
</div>
<?php echo $__env->make('layouts.errors', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<form action="/tambah-pengguna" method="post" enctype="multipart/form-data" class="form-horizontal">
      <?php echo e(csrf_field()); ?>

  <div class="box box-default">
        <div class="box-body">
          <div class="row">
            <div class="col-md-9">
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Nama Pengguna</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="name" required="required">
                </div>
              </div>
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Email Pengguna</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="email" required="required">
                </div>
              </div>
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Grup Pengguna</label>
                <div class="col-sm-5">
                 <select class="form-control select2" style="width: 100%;" name="role" required="">
                  <option value="0">--pilih grup--</option>
                    <?php $__currentLoopData = $roles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $role): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <option value="<?php echo e($role->id); ?>"><?php echo e($role->display_name); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
                </div>
              </div>

              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" name="password" required="required">
                </div>
              </div>

              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Ulangi Password</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" name="password_confirmation" required="required">
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