<!DOCTYPE html>
<html lang="en">
<head>
<?php echo $__env->make('layouts.meta_title', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.min.css" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="https://static-xx.nggolet.com/template/front/fonts/themify-icons.css')}}">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/SlickNav/1.0.3/slicknav.css" type="text/css">
<link rel="stylesheet" href="https://static-xx.nggolet.com/template/front/css/main.css" type="text/css">
<link rel="stylesheet" href="https://static-xx.nggolet.com/template/front/css/responsive.css" type="text/css">
<link rel="stylesheet" type="text/css" href="https://static-xx.nggolet.com/template/front/css/colors/red.css" media="screen" />
<link rel="stylesheet" href="https://static-xx.nggolet.com/template/front/css/select2.min.css" type="text/css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

</head>
<body>
<?php echo $__env->make('layouts.front_header', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<?php echo $__env->yieldContent('judul'); ?>
<section class="job-browse section">
<div class="container">
<div class="row">
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
<script type="text/javascript" src="https://static-xx.nggolet.com/template/front/js/main.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
<?php echo $__env->yieldContent('pagescript'); ?>
</body>
</html>