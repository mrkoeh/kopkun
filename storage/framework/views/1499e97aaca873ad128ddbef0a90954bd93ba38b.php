<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
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
<?php echo $__env->make('layouts.front_header', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->yieldContent('judul'); ?>
<div id="content">
<div class="container">
<div class="row">
<?php echo $__env->yieldContent('content'); ?>

<?php // sidebar ?>
<aside id="sidebar" class="col-md-3 right-sidebar">
<div class="widget widget-popular-posts">
<h5 class="widget-title">Sering Dibaca</h5>
<ul class="posts-list">
<?php $__currentLoopData = $populers; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $popular): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<li>
<div class="widget-content">
<a href="<?php echo e(url('/blog',$popular->judul_slug)); ?>"><?php echo e($popular->judul_artikel); ?></a>
<span><i class="icon-calendar"></i> <?php echo e(date('d M Y', strtotime($popular->created_at))); ?></span>
</div>
<div class="clearfix"></div>
</li>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</ul>
</div>

</aside>
<?php // sidebar end ?>
</div>
</div>
</div>
<?php echo $__env->make('layouts.front_footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<a href="#" class="back-to-top">
<i class="ti-arrow-up"></i>
</a>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/SlickNav/1.0.3/jquery.slicknav.js"></script>
<script type="text/javascript" src="https://static-xx.nggolet.com/template/front/js/main.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
<?php echo $__env->yieldContent('pagescript'); ?>
</body>
</html>