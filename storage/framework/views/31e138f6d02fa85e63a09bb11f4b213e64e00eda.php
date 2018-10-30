
  <?php $__env->startSection('content'); ?>
<div class="box-header with-border">
  <h3 class="box-title"><?php echo e($page_title); ?></h3>
</div>
<form action="/ubah-grup/<?php echo e($getroles->id); ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
      <?php echo e(csrf_field()); ?>

  <div class="box box-default">
        <div class="box-body">
          <div class="row">
            <div class="col-md-12">
            <div class="form-group">
              <label for="nama" class="col-sm-2 control-label">Nama grup</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" name="display_name"  value="<?php echo e($getroles->display_name); ?>">
              </div>
            </div>


              <label for="nama" class="col-sm-2 control-label"></label>
              <div class="col-md-5">
                <div class="box">
                  <div class="box-body">
                    <table class="table table-bordered">
                      <tr>
                        <th style="width: 10px">#</th>
                        <th>Permission Name</th>
                        <th><input type="checkbox" disabled /></th>
                      </tr>
                    <?php $__currentLoopData = $permissions; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $term): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                      <tr>
                        <td>#</td>
                        <td><?php echo e($term->display_name); ?></td>
                        <td>
                          <input type="checkbox"  name="permissions[]" value="<?php echo e($term->id); ?>"
                            <?php foreach($haspermision as $ship):
                            if ($ship->permission_id == $term->id) 
                            echo 'checked';
                            endforeach;
                            ?>
                          >
                        </td>
                      </tr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                    </table>
                  </div>
                </div>
              </div>
           </div>
        </div>
      </div>
    <div class="box-footer text-center">
      <button type="button" class="btn btn-default" onclick="window.location.href='/grup'"><i class="fa fa-refresh"></i> Batal</button>
      <button type="submit" class="btn btn-info"><i class="fa fa-save"></i> Simpan</button>
    </div>
  </div>
</form> 
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.admin_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>