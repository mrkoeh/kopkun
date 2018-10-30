  
  <?php $__env->startSection('content'); ?>
  <div class="box-header">
    <h3 class="box-title"><?php echo e($page_title); ?></h3>
  </div>
    <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('tambah_lowongan')): ?>
    <button type="button" class="btn btn-info" onclick="window.location.href='/tambah-lowongan'">
    <i class="fa fa-plus-square"></i> Tambah</button><br><br>
    <?php endif; ?>
<?php echo $__env->make('layouts.errors', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->make('layouts.flash_message', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>     
<div class="box">
  <div class="box-body">
    <table id="example1" class="table table-bordered table-striped">
      <thead>
      <tr>
            <th>Judul Lowker</th>
            <th>Perusahaan</th>
            <th>Pengiklan</th>
            <th>Publish</th>
            <th>Tgl. post</th>
            <th></th>
      </tr>
      </thead>
      <tbody>
    <?php $__currentLoopData = $lokers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $loker): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
      <tr>
      <td><?php echo e($loker->judul_lowongan); ?><br>
      <?php if($loker->publish == 'Y'): ?>
      <a href="<?php echo e(url('/lowker',$loker->judul_slug)); ?>" target="_blank"><?php echo e(url('/lowker',$loker->judul_slug)); ?></a>
      <?php else: ?>
      <?php echo e(url('/lowker',$loker->judul_slug)); ?>   
      <?php endif; ?>
      </td>
      <td><?php echo e($loker->nama_perusahaan); ?></td>
      <td><?php echo e($loker->created_user); ?> 
        <?php if($loker->user_verify == 'pending'): ?>
        <span class="label label-warning ">pending</span>
        <?php else: ?>
        <span class="label label-info ">verified</span>
        <?php endif; ?>
        </td>
      <td>
          <?php if($loker->publish == 'Y' ): ?> 
            <small class="label label-info">Publish</small>
          <?php else: ?>
            <small class="label label-warning">Draft</small> 
          <?php endif; ?> 
      </td>
      <td><?php echo e(\Carbon\Carbon::parse($loker->created_at)->format('d/m/Y')); ?></td>
        <td>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('edit_lowongan')): ?>
          <button type="button" class="btn btn-xs btn-info" title="Edit Kategori" onclick="window.location.href='/ubah-lowongan/<?php echo e($loker->id); ?>'"><i class="fa fa-pencil-square-o"></i> Edit</button>
            <?php endif; ?>
            <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('hapus_lowongan')): ?>
          <button type="button" class="btn btn-xs btn-danger" title="Hapus Kategori" onclick="window.location.href='/hapus-lowongan/<?php echo e($loker->id); ?>'"><i class="fa fa-trash"></i> Hapus</button>
            <?php endif; ?>
        <?php if (app(\Illuminate\Contracts\Auth\Access\Gate::class)->check('ubah_status_lowongan')): ?>
            <form method="post" action="<?php echo e(url('/status-lowongan', $loker->id )); ?>">
              <?php echo e(csrf_field()); ?>

              <input type="hidden" name="publish" value="<?php echo e($loker->publish); ?>">
              <input type="hidden" name="id" value="<?php echo e($loker->id); ?>">
              <div class="btn-group-horizontal">
              <?php if($loker->publish == 'Y'): ?>
              <button type="submit" class="btn btn-flat btn-xs text-danger">
                  <span class="glyphicon glyphicon-ban-circle"></span> Simpan sebagai draft
              </button>
              <?php elseif($loker->publish == 'N'): ?>
              <button type="submit" class="btn btn-flat btn-xs text-green">
                  <span class="glyphicon glyphicon-ok-circle"></span> publikasikan
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