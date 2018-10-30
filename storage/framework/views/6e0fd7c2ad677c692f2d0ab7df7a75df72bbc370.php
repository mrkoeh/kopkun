<?php $__env->startSection('title'); ?>
<?php echo $details->judul_artikel; ?> 
<?php $__env->stopSection(); ?>

<?php $__env->startSection('meta-description'); ?>
<?php echo $details->deskripsi_seo; ?>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('meta-keyword'); ?>
<?php echo $details->tag_artikel; ?>

<?php $__env->stopSection(); ?>


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
<div class="blog-post">
<div class="post-content">
<h3 class="post-title"><a href="#"><?php echo e($details->judul_artikel); ?></a></h3>
<div class="meta">
<span class="meta-part"><a href="#"><i class="ti-user"></i> <?php echo e($details->created_user); ?></a></span>
<span class="meta-part"><i class="ti-calendar"></i><a href="#"> <?php echo e(date('d M Y', strtotime($details->created_at))); ?></a></span>
</div>
<p><?php echo $details->isi_artikel; ?></p>
</div>
</div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.frontblog_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>