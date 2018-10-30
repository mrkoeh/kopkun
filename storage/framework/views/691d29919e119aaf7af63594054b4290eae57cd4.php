 
  <?php $__env->startSection('content'); ?>
  <div class="box-header">
    <h3 class="box-title"><?php echo e($page_title); ?></h3>
  </div>
    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('tambah_daftar_pengguna')): ?>
    <button type="button" class="btn btn-info" onclick="window.location.href='/tambah-pengguna'">
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
            <th>Email </th>
            <th>Grup Pengguna</th>
            <th>Status Pengguna</th>
            <th></th>
      </tr>
      </thead>
      <tbody>
    <?php $__currentLoopData = $penggunas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pengguna): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <tr>
      <td><?php echo e($pengguna->name); ?></td>
      <td><?php echo e($pengguna->email); ?></td>
      <td><?php echo e($pengguna->roles()->pluck('display_name')->implode(' ')); ?></td>
      <td>
          <?php if($pengguna->active == 1 ): ?> 
            <small class="label label-info">Aktif</small>
          <?php else: ?>
            <small class="label label-warning">Tidak Aktif</small> 
          <?php endif; ?> 
      </td>
        <td>
         <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('edit_daftar_pengguna')): ?>  
          <button type="button" class="btn btn-xs btn-info" title="Edit Kategori" onclick="window.location.href='/ubah-pengguna/<?php echo e($pengguna->id); ?>'"><i class="fa fa-pencil-square-o"></i> Edit</button>
        <?php endif; ?>
        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('hapus_daftar_pengguna')): ?>
          <button type="button" class="btn btn-xs btn-danger" title="Hapus Kategori" onclick="window.location.href='/hapus-pengguna/<?php echo e($pengguna->id); ?>'"><i class="fa fa-trash"></i> Hapus</button>
        <?php endif; ?>
        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('ubah_status_pengguna')): ?>
            <form method="post" action="<?php echo e(url('/status-pengguna', $pengguna->id )); ?>">
              <?php echo e(csrf_field()); ?>

              <input type="hidden" name="active" value="<?php echo e($pengguna->active); ?>">
              <input type="hidden" name="id" value="<?php echo e($pengguna->id); ?>">
              <div class="btn-group-horizontal">
              <?php if($pengguna->active == 1): ?>
              <button type="submit" class="btn btn-flat btn-xs text-danger">
                  <span class="glyphicon glyphicon-ban-circle"></span> Nonaktifkan
              </button>
              <?php elseif($pengguna->active == 0): ?>
              <button type="submit" class="btn btn-flat btn-xs text-green">
                  <span class="glyphicon glyphicon-ok-circle"></span> Aktifkan
              </button>
              <?php endif; ?>
              </div>
          </form>
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