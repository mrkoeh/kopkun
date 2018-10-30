<!DOCTYPE html>
<html lang="en">
<head>
	<?php echo $__env->make('layouts.meta_title', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

    <link rel="stylesheet" href="<?php echo e(asset('template/frontend/tether/tether.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('template/frontend/bootstrap/css/bootstrap.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('template/frontend/bootstrap/css/bootstrap-grid.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('template/frontend/bootstrap/css/bootstrap-reboot.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('template/frontend/dropdown/css/style.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('template/frontend/animatecss/animate.min.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('template/frontend/socicon/css/styles.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('template/frontend/theme/css/style.css')); ?>">
    <link rel="stylesheet" href="<?php echo e(asset('template/frontend/additionalcss/css/additional.css')); ?>" type="text/css">
    <link rel="stylesheet" href="<?php echo e(asset('template/frontend/icon/style.css')); ?>">

</head>
<body>
<?php echo $__env->make('layouts.front_header', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

<?php echo $__env->yieldContent('content'); ?>

<?php echo $__env->make('layouts.front_footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>

</body>
</html>