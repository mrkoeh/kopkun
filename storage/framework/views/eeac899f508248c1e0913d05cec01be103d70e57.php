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
<div class="col-md-9">
<?php if(count($artikels) == 0): ?>
<div class="alert alert-danger">Belum ada artikel ! </div>
<?php else: ?>
<?php $__currentLoopData = $artikels; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $artikel): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<div class="blog-post">
<div class="post-content">
<h3 class="post-title"><a href="<?php echo e(url('/blog',$artikel->judul_slug)); ?>"><?php echo e($artikel->judul_artikel); ?></a></h3>
<div class="meta">
<span class="meta-part"><a href="#"><i class="ti-user"></i> <?php echo e($artikel->created_user); ?></a></span>
<span class="meta-part"><i class="ti-calendar"></i><a href="#"> <?php echo e(date('d M Y', strtotime($artikel->created_at))); ?></a></span>
</div>
<p><?php echo str_limit($artikel->isi_artikel,$limit = 200,  $end='...'); ?></p>
<a href="<?php echo e(url('/blog',$artikel->judul_slug)); ?>" class="btn btn-common">Read More</a>
</div>
</div>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php echo $artikels->render(); ?> 
<?php endif; ?>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.frontblog_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>