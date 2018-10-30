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
<?php $__env->startSection('content'); ?>
<section id="content">
<div class="container">
<div class="row">
<?php echo $__env->make('layouts.errors', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->make('layouts.front_flash', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>  
<div class="col-md-4">
<h2 class="medium-title">
Contact Us
</h2>
<div class="information">
<div class="contact-datails">
<div class="icon">
<i class="ti-mobile"></i>
</div>
<div class="info">
<h3>Telp/HP :</h3>
<span class="detail"><?php echo e($kontak->tlp); ?></span>
</div>
</div>
<div class="contact-datails">
<div class="icon">
<i class="ti-location-arrow"></i>
</div>
<div class="info">
<h3>Email :</h3>
<span class="detail"><a href="mailto:<?php echo e($kontak->email); ?>"><?php echo e($kontak->email); ?></a></span>
</div>
</div>
</div>
</div>
<div class="col-md-8">
<?php echo $__env->make('sweet::alert', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<form class="contact-form" method="post" action="<?php echo e(url('/hubungi-kami')); ?>" enctype="multipart/form-data">
<?php echo e(csrf_field()); ?>

<div class="row">
<div class="col-md-12">
<div class="row">
<div class="col-md-6">
<div class="form-group">
<input type="text" class="form-control" name="name" placeholder="Full Name" required data-error="Please enter your name">
<div class="help-block with-errors"></div>
</div>
</div>
<div class="col-md-6">
<div class="form-group">
<input type="email" class="form-control"  name="email" placeholder="mail@sitename.com" required data-error="Please enter your email">
<div class="help-block with-errors"></div>
</div>
</div>
<div class="col-md-12">
<div class="form-group">
<input type="text" placeholder="Subject"  name="subject" class="form-control" data-error="Please enter your subject">
<div class="help-block with-errors"></div>
</div>
</div>
<div class="col-md-12">
<div class="form-group">
<textarea class="form-control"  placeholder="Massage" name="pesan" rows="11" data-error="Write your message" required></textarea>
<div class="help-block with-errors"></div>
</div>
</div>
<div class="col-md-12">
<button type="submit" id="submit" class="btn btn-common">Send Us</button>
<div id="msgSubmit" class="h3 text-center hidden"></div>
<div class="clearfix"></div>
</div>
</div>
</div>
</div>
</form>
</div>
</div>
</div>
</section>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front_jobpost_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>