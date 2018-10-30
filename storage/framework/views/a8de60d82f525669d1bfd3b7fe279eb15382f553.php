<!DOCTYPE html>
<html lang="en">
<head>
<?php echo $__env->make('layouts.meta_title', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.min.css" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/SlickNav/1.0.3/slicknav.css" type="text/css">
<link rel="stylesheet" href="https://static-xx.nggolet.com/template/front/css/main.css" type="text/css">
<link rel="stylesheet" href="https://static-xx.nggolet.com/template/front/css/responsive.css" type="text/css">
<link rel="stylesheet" href="https://static-xx.nggolet.com/template/front/css/select2.min.css" type="text/css">
<link rel="stylesheet" type="text/css" href="https://static-xx.nggolet.com/template/front/css/colors/red.css" media="screen" />

</head>
<body>
<?php // header ?>
<div class="header">
	<section id="intro" class="section-intro">
		<div class="logo-menu">
			<nav class="navbar navbar-default" role="navigation" data-spy="affix" data-offset-top="50">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
							<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand logo" href="/">
							<img src="<?php echo e(asset('template/front/img/l4.png')); ?>" alt="">
						</a>
					</div>
	<div class="collapse navbar-collapse" id="navbar">
		<ul class="nav navbar-nav navbar-right float-right">
			<li class="right"><a href="<?php echo e(url('/semua-lowongan')); ?>"> Semua Lowongan</a></li>
			<li class="right"><a href="<?php echo e(url('/posting-lowongan')); ?>"><i class="ti-desktop"></i> Pasang Lowongan</a></li>
	
		</ul>
	</div>
</div>
<?php // for mobile menu ?>
<ul class="wpb-mobile-menu">
		<li class="right"><a href="<?php echo e(url('/semua-lowongan')); ?>"> Semua Lowongan</a></li>
<li class="btn-m"><a href="<?php echo e(url('/posting-lowongan')); ?>"><i class="ti-desktop"></i> Pasang Lowongan</a></li>
</ul>
</nav>
</div>
<?php echo $__env->make('layouts.home_search', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
</section>
</div>
<?php // header end ?>
<?php echo $__env->make('layouts.front_footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<a href="#" class="back-to-top">
<i class="ti-arrow-up"></i>
</a>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/SlickNav/1.0.3/jquery.slicknav.js"></script>
<script type="text/javascript" src="https://static-xx.nggolet.com/template/front/js/main.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/js/bootstrap-select.min.js"></script>
<?php echo $__env->yieldContent('pagescript'); ?>
</body>
</html>