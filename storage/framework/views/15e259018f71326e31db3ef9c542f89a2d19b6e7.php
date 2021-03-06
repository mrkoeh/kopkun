<?php $__env->startSection('title'); ?>
<?php echo isset($detail->judul_lowongan) ? $detail->judul_lowongan : null; ?> 
<?php $__env->stopSection(); ?>
<?php $__env->startSection('meta-description'); ?>
<?php echo isset($detail->deskripsi_seo) ? $detail->deskripsi_seo : null; ?> 
<?php $__env->stopSection(); ?>
<?php $__env->startSection('meta-keyword'); ?>
<?php echo isset($detail->tag_lowongan) ? $detail->tag_lowongan : null; ?> 
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
<div class="col-md-8 col-sm-8 col-xs-12">
<div class="inner-box my-resume">
<div class="author-resume">
<div class="thumb">
<?php if(count($detail->cover_lowongan)== 0): ?>
<img src="https://res.cloudinary.com/drlqsaffh/image/upload/v1523367046/l2-small.jpg" alt="<?php echo e($detail->judul_lowongan); ?>" width="100" height="100">  
<?php else: ?>
<img src="<?php echo e(asset('uploads/job_cover/' .$detail->cover_lowongan)); ?>" alt="<?php echo e($detail->judul_lowongan); ?>">
<?php endif; ?>
</div>
<div class="author-info">
 <h3><?php echo e($detail->judul_lowongan); ?></h3>
<p class="sub-title"><?php echo e($detail->nama_perusahaan); ?></p>
<p><span class="address"><i class="ti-location-pin"></i> <?php echo e($detail->area_slug); ?> </span> </p>

</div>
</div>
<br>
<div class="sharethis-inline-share-buttons"></div>
<div class="about-me item">
<h3>Deskripsi Lowongan : </h3>
<p><?php echo $detail->deskripsi_lowongan; ?></p>
</div>
<div class="work-experence item">
<h3>Informasi Lowongan : </h3>
<table class="table">
<tr><td> <i class="ti-check-box"></i> Nama Perushaaan </td><td class="col-md-1">:</td><td><?php echo e($detail->nama_perusahaan); ?></td></tr>
<tr><td> <i class="ti-check-box"></i> Status Pegawai </td><td class="col-md-1">:</td><td><?php echo e($detail->nama_status); ?></td></tr>
<tr><td> <i class="ti-check-box"></i> Level Pegawai </td><td class="col-md-1">:</td><td><?php echo e($detail->nama_level); ?></td></tr>
<tr><td> <i class="ti-check-box"></i> Jam Kerja </td><td class="col-md-1">:</td><td><?php echo e($detail->nama_waktu); ?></td></tr>
<tr><td> <i class="ti-check-box"></i> Jenis Lowongan </td><td class="col-md-1">:</td><td><?php echo e(str_replace('-', ' ', $detail->tipe_slug)); ?></td></tr>
<tr><td> <i class="ti-check-box"></i> Pendidikan </td><td class="col-md-1">:</td><td><?php echo e(str_replace('-', ' ', $detail->pendidikan_slug)); ?></td></tr>
<tr><td> <i class="ti-check-box"></i> Area Lowongan </td><td class="col-md-1">:</td><td><?php echo e(str_replace('-', ' ', $detail->area_slug)); ?></td></tr>
</table>
</div>
</div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.fronthome_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>