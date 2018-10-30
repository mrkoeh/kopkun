<?php $__env->startSection('content'); ?>
<?php $__env->startSection('judul'); ?>
<div class="page-header" style="background: url(https://res.cloudinary.com/drlqsaffh/image/upload/v1523001816/banner1.jpg);">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="breadcrumb-wrapper">
					<h2 class="product-title"><?php echo e(isset($page_title) ? $page_title : null); ?></h2>
				</div>
			</div>
		</div>
	</div>
</div>
<?php $__env->stopSection(); ?>
<div class="col-md-8 col-sm-8 col-xs-12">
<?php if(count($res) == 0): ?>
<div class="alert alert-danger">Belum ada lowongan kerja.</div>
<?php else: ?>
<div class="job-alerts-item candidates">
<?php $__currentLoopData = $res; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $result): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<div class="manager-resumes-item">
<div class="manager-content">
<?php if(count($result->cover_lowongan)==0): ?>
<a href="<?php echo e(url('/lowker',$result->judul_slug)); ?>"><img class="resume-thumb" src="https://res.cloudinary.com/drlqsaffh/image/upload/v1523367046/l2-small.jpg" alt="<?php echo e($result->judul_lowongan); ?>"></a>
<?php else: ?>
<a href="<?php echo e(url('/lowker',$result->judul_slug)); ?>"><img class="resume-thumb" src="<?php echo e(asset('uploads/job_cover/' .$result->cover_lowongan)); ?>" alt="<?php echo e($result->judul_lowongan); ?>"></a>
<?php endif; ?>
<div class="manager-info">
<div class="manager-name">
<h5><a href="<?php echo e(url('/lowker',$result->judul_slug)); ?>"><?php echo e($result->judul_lowongan); ?></a></h5>
<h5><?php echo e($result->nama_perusahaan); ?></h5>
<span class="location"><i class="ti-location-pin"></i> <?php echo e($result->area_slug); ?></span>
</div>
<div class="manager-meta">

<span class="rate"><i class="ti-time"></i> <?php echo e($result->nama_waktu); ?></span>
</div>
</div>
</div>
<div class="update-date">
<p class="status">
<strong>Updated on:</strong> <?php echo e(date('d M Y', strtotime($result->created_at))); ?>

</p>
</div>
</div>

<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php echo $res->render(); ?> 
</div>
<?php endif; ?>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.fronthome_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>