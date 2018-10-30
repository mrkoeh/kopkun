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
<div class="col-sm-12 col-md-9 col-md-offset-2">
<?php echo $__env->make('sweet::alert', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
<div class="page-ads box">
<form class="form-ad" method="post" action="<?php echo e(url('/posting-lowongan')); ?>" enctype="multipart/form-data">
  <?php echo e(csrf_field()); ?>

<div class="form-group">
<label class="control-label">Email Anda <span>(Pastikan aktif)</span></label>
<input type="email" class="form-control" name="created_user" required="required">
</div>
<div class="form-group">
<label class="control-label">Nama Lowongan</label>
<input type="text" class="form-control" name="judul_lowongan"  required="required">
</div>
<div class="form-group">
<label class="control-label">Nama Perusahaan</label>
<input type="text" class="form-control" name="nama_perusahaan"  required="required">
</div>
<div class="form-group">
<label class="control-label">Bidang Pekerjaan <span>(bisa lebih dari satu)</span></label>
<select class="multiple-selected" name="jenis[]" multiple="multiple" style="width: 100%;"  required="required">
  <?php $__currentLoopData = $jenis; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $r): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
  <option value="<?php echo e($r->tipe_slug); ?>"><?php echo e($r->nama_tipe); ?></option>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</select>
</div>
<div class="form-group">
<label class="control-label">Area/Wilayah <span>(bisa lebih dari satu)</span></label>
<select class="multiple-selected" name="area[]" multiple="multiple" style="width: 100%;"  required="required">
  <?php $__currentLoopData = $area; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $a): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
  <option value="<?php echo e($a->area_slug); ?>"><?php echo e($a->nama_area); ?></option>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</select>
</div>
<div class="form-group">
<label class="control-label">Level Pendidikan Tersedia <span>(bisa lebih dari satu)</span></label>
<select class="multiple-selected" name="pendidikan[]" multiple="multiple" style="width: 100%;"  required="required">
  <?php $__currentLoopData = $pendidikan; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $p): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
  <option value="<?php echo e($p->pendidikan_slug); ?>"><?php echo e($p->nama_pendidikan); ?></option>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</select>
</div>
<div class="form-group">
<label class="control-label">Waktu Kerja</label>
<div class="search-category-container">
<select class="multiple-selected" name="jamkerja"  style="width: 100%;"  required="required">
<option></option>
  <?php $__currentLoopData = $waktu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $w): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
  <option value="<?php echo e($w->id); ?>"><?php echo e($w->nama_waktu); ?></option>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</select>
</div>
</div>
<div class="form-group">
<label class="control-label">Level Jabatan</label>
<div class="search-category-container">
<select class="multiple-selected" name="jabatan"  style="width: 100%;"  required="required">
<option></option>
  <?php $__currentLoopData = $level; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $l): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
  <option value="<?php echo e($l->id); ?>"><?php echo e($l->nama_level); ?></option>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</select>
</div>
</div>
<div class="form-group">
<label class="control-label">Status Pegawai</label>
<div class="search-category-container">
<select class="multiple-selected" name="status"  style="width: 100%;"  required="required">
<option></option>
  <?php $__currentLoopData = $status; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
  <option value="<?php echo e($s->id); ?>"><?php echo e($s->nama_status); ?></option>
  <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</select>
</div>
</div>
<div class="form-group">
<label class="control-label">Description</label>

<textarea id="konten" name="deskripsi_lowongan" style="width: 100%; height: 400px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" placeholder="jelaskan tentang perusahaan, cara melamar, syarat untuk melamar dan informasi kontak" required="required"></textarea>
</div>

<label class="control-label">Logo/Cover Perusahaan</label>
<input type="file" name="cover_lowongan">

<center><button type="submit" class="btn btn-common">Submit</button></center>

</form>
</div>
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('pagescript'); ?>

<script src="<?php echo e(asset('template/plugin/ckeditor/ckeditor.js')); ?>"></script>
<script type="text/javascript">
   CKEDITOR.replace( 'konten' );

$(document).ready(function() {
    $('.multiple-selected').select2({
    placeholder: "Pilih",
    allowClear: true      
    });
});

</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front_jobpost_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>