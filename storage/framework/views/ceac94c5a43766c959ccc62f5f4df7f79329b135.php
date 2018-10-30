<?php if(Auth::check() == 0): ?>
<center>Anda Tidak berhak mengakses halaman ini</center>
<?php else: ?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Dashboard</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.7 -->
        <link rel="stylesheet" href="<?php echo e(asset('template/backend/bower_components/bootstrap/dist/css/bootstrap.min.css')); ?>">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="<?php echo e(asset('template/backend/bower_components/font-awesome/css/font-awesome.min.css')); ?>">
        <!-- Ionicons -->
        <link rel="stylesheet" href="<?php echo e(asset('template/backend/bower_components/Ionicons/css/ionicons.min.css')); ?>">
        <!-- Theme style -->
        <link rel="stylesheet" href="<?php echo e(asset('template/backend/dist/css/AdminLTE.min.css')); ?>">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
        folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="<?php echo e(asset('template/backend/dist/css/skins/_all-skins.min.css')); ?>">
        <!-- Morris chart -->
        <!--   <link rel="stylesheet" href="<?php echo e(asset('template/backend/bower_components/morris.js/morris.css')); ?>"> -->
        <!-- jvectormap -->
        <link rel="stylesheet" href="<?php echo e(asset('template/backend/bower_components/jvectormap/jquery-jvectormap.css')); ?>">
        <!-- Date Picker -->
        <link rel="stylesheet" href="<?php echo e(asset('template/backend/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')); ?>">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="<?php echo e(asset('template/backend/bower_components/bootstrap-daterangepicker/daterangepicker.css')); ?>">
        <link rel="stylesheet" href="<?php echo e(asset('template/backend/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css')); ?>">
        <link rel="stylesheet" href="<?php echo e(asset('template/backend/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css')); ?>">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-tagsinput/1.3.6/jquery.tagsinput.min.css" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <link rel="shortcut icon" href="favicon.ico">
        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>

    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <header class="main-header">
                <!-- Logo -->
                <a href="#" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>cPanel</b></span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Admin</b>PANEL</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                <li ><a href="<?php echo e(url('/ubah-password')); ?>"><i class="fa fa-lock"></i> <span> Ubah Password</span></a></li>
                <li ><a href="<?php echo e(url('/')); ?>" target="_blank"><i class="fa fa-external-link"></i> <span> Lihat Web</span></a></li>
                <li ><a href="<?php echo e(url('/logout')); ?>"><i class="fa fa-sign-out"></i> <span> Sign Out</span></a></li> 
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <?php echo $__env->make('layouts.admin_sidebar', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Main content -->
                <section class="content">
                    <?php echo $__env->yieldContent('content'); ?>
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <footer class="main-footer">
                <strong>Copyright &copy; <?php echo date("Y");?> pedihelp Design By <a href="https://kukuhnugroho.com" target="_blank"> pedihelp.id </a>.</strong> All rights reserved.
            </footer>
        </div>
        <!-- ./wrapper -->
        <?php echo $__env->make('layouts.admin_footer', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
    </body>
</html>
<?php endif; ?>
