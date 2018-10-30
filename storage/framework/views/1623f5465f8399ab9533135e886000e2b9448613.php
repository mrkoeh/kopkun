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
<link rel="stylesheet" href="<?php echo e(asset('template/front/css/main.css')); ?>" type="text/css">
<link rel="stylesheet" href="<?php echo e(asset('template/front/css/responsive.css')); ?>" type="text/css">
<link rel="stylesheet" type="text/css" href="<?php echo e(asset('template/front/css/colors/red.css')); ?>" media="screen" />

</head>
<body>
<?php echo $__env->make('layouts.front_header', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

<?php echo $__env->yieldContent('judul'); ?>
<section class="job-browse section">
<div class="container">
<div class="row">
<?php echo $__env->make('layouts.front_sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

<?php echo $__env->yieldContent('content'); ?>

</div>
</div>
</section>
<?php // konten end ?>

<?php echo $__env->make('layouts.front_footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

<a href="#" class="back-to-top">
<i class="ti-arrow-up"></i>
</a>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/SlickNav/1.0.3/jquery.slicknav.js"></script>
<script type="text/javascript" src="<?php echo e(asset('template/front/js/main.js')); ?>"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
<script type='text/javascript' src='//platform-api.sharethis.com/js/sharethis.js#property=5acc1a19cb29150013b938cb&product=inline-share-buttons' async='async'></script>

<?php echo $__env->yieldContent('pagescript'); ?>
</body>
</html>