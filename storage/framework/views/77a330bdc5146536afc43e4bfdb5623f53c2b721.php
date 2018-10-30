<div class="col-md-4 col-sm-4 col-xs-12">
<div class="right-sidebar">
<div class="inner-box">
<h3>Level Pendidikan:</h3>
<ul class="cat-list">
<?php $__currentLoopData = $pendidikans; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pendidikan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<li class="active"><a href="<?php echo e(url('/pendidikan',$pendidikan->pendidikan_slug)); ?>"><?php echo e($pendidikan->nama_pendidikan); ?></a></li>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</ul>
</div>
<div class="inner-box">
<h3>Wilayah/Area:</h3>
<ul class="cat-list">
<?php $__currentLoopData = $areas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $area): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<li class="active"><a href="<?php echo e(url('/wilayah',$area->area_slug)); ?>"><?php echo e($area->nama_area); ?></a></li>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</ul>
</div>
</div>
</div>

