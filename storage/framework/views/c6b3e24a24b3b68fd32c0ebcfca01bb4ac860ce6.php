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
<div class="inner-box my-resume">
<div class="about-me item">
<h3><?php echo e($detail->judul_halaman); ?> </h3>
<p><?php echo $detail->isi_halaman; ?></p>
</div>
</div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.fronthome_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>