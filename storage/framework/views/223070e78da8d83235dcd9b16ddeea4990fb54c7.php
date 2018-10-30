 
  <?php $__env->startSection('content'); ?>
  <div class="box-header">
    <h3 class="box-title"><?php echo e($page_title); ?></h3>
  </div>
    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('tambah_area')): ?>
    <button type="button" class="btn btn-info" onclick="window.location.href='/tambah-area'">
    <i class="fa fa-plus-square"></i> Tambah</button><br><br>
    <?php endif; ?>
<?php echo $__env->make('layouts.errors', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->make('layouts.flash_message', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>     
<div class="box">
  <div class="box-body">
    <table id="example1" class="table table-bordered table-striped">
      <thead>
      <tr>
            <th>Nama</th>
            <th>Slug</th>
            <th></th>
      </tr>
      </thead>
      <tbody>
      <?php $__currentLoopData = $areas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $area): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <tr>
        <td><?php echo e($area->nama_area); ?></td>
        <td><?php echo e($area->area_slug); ?></td>
        <td>
         <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('edit_area')): ?>  
          <button type="button" class="btn btn-xs btn-info" title="Edit Kategori" onclick="window.location.href='/ubah-area/<?php echo e($area->id); ?>'"><i class="fa fa-pencil-square-o"></i> Edit</button>
         <?php endif; ?>
         <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('hapus_area')): ?>
          <button type="button" class="btn btn-xs btn-danger" title="Hapus Kategori" onclick="window.location.href='/hapus-area/<?php echo e($area->id); ?>'"><i class="fa fa-trash"></i> Hapus</button>
        <?php endif; ?>     
        </td>
      </tr>
      <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
      </tbody>
    </table>
  </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.admin_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>