  <?php $__env->startSection('content'); ?>
<div class="box-header with-border">
  <h3 class="box-title"><?php echo e($page_title); ?></h3>
</div>
<?php echo $__env->make('layouts.errors', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<form action="/ubah-pengguna/<?php echo e($user->id); ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
      <?php echo e(csrf_field()); ?>

  <div class="box box-default">
        <div class="box-body">
          <div class="row">
            <div class="col-md-9">
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Nama Pengguna</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="name" value="<?php echo e($user->name); ?>" >
                </div>
              </div>
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Email Pengguna</label>
                <div class="col-sm-10">
                  <input type="text" class="form-control" name="email" value="<?php echo e($user->email); ?>" >
                </div>
              </div>
              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Grup Pengguna</label>
                <div class="col-sm-5">
                 <select class="form-control select2" style="width: 100%;" name="role" >
                  <option value="0">--pilih grup--</option>
                    <?php $__currentLoopData = $roles; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $role): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <option value="<?php echo e($role->id); ?>" <?php if ($role->id == $selected_role) echo ' selected'; ?>><?php echo e($role->display_name); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
                </div>
              </div>

              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Password</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" name="password" >
                </div>
              </div>

              <div class="form-group">
                <label for="nama" class="col-sm-2 control-label">Ulangi Password</label>
                <div class="col-sm-10">
                  <input type="password" class="form-control" name="password_confirmation">
                </div>
              </div>

            </div>
        </div>
      </div>
    <div class="box-footer text-center">
      <button type="button" class="btn btn-default" onclick="window.location.href='/pengguna'"><i class="fa fa-refresh"></i> Batal</button>
      <button type="submit" class="btn btn-info"><i class="fa fa-save"></i> Simpan</button>
    </div>
  </div>
</form> 
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.admin_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>