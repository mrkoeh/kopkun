<div class="search-container">
<div class="container">
<div class="row">
<div class="col-md-12">
<h1>Mulai pencarian: </h1><br>
<div class="content">
<form method="post" action="<?php echo e(url('/')); ?>">
<?php echo e(csrf_field()); ?>

<div class="row">
<div class="col-md-5 col-sm-6">
<!-- <div class="search-category-container"> -->

<select class="dropdown" id="area" name="area" style="width: 100%">
<option></option>
<option value="all"> Semua area </option>
<?php $__currentLoopData = $areas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $area): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<option value="<?php echo e($area->area_slug); ?>"><?php echo e($area->nama_area); ?></option>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</select>

<!-- </div> -->
</div>
<div class="col-md-5 col-sm-6">
<div class="search-category-container">

<select class="dropdown" id="jenis" name="tipe" style="width: 100%">
<option></option>
<option value="all"> Semua Spesialis </option>
<?php $__currentLoopData = $pesialises; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pesialis): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<option value="<?php echo e($pesialis->tipe_slug); ?>"><?php echo e($pesialis->nama_tipe); ?></option>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</select>

</div>
</div>
<div class="col-md-2 col-sm-6">
<button type="submit" class="btn btn-search-icon"><i class="ti-search"></i></button>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>
<?php $__env->startSection('pagescript'); ?>

<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
<script>

$("#area").select2({
    placeholder: "Pilih area",
    allowClear: true
});

$("#jenis").select2({
    placeholder: "Pilih spesialis",
    allowClear: true
});
</script>
<?php $__env->stopSection(); ?>