<?php $__env->startSection('content'); ?>

<section class="mbr-section content5 cid-qLBLv2e5aG mbr-parallax-background" id="content5-28">
    <div class="mbr-overlay" style="opacity: 0.7; background-color: rgb(0, 0, 0);"></div>
    <div class="container">
        <div class="media-container-row">
            <div class="title col-12 col-md-8">
                <h2 class="align-center mbr-bold mbr-white pb-3 mbr-fonts-style display-1">Buat Proyek</h2>
            </div>
        </div>
    </div>
</section>

<section class="features18 popup-btn-cards cid-qMIamfi4LL" id="features18-67">
    <div class="container">
        <?php echo $__env->make('sweet::alert', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>
        <form class="form-ad" method="post" action="<?php echo e(url('uploadproyek')); ?>" enctype="multipart/form-data">
            <?php echo e(csrf_field()); ?>

            <div class="form-group">
                <label class="control-label">Jenis Pekerjaan</label>
                <select class="form-control select2" style="width: 100%;" name="jenis_pekerjaan" required="">
                    <?php $__currentLoopData = $jenis; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $r): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <option value="<?php echo e($r->tipe_slug); ?>"><?php echo e($r->nama_tipe); ?></option>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                </select>
            </div>
            <div class="form-group">
                <label class="control-label">Judul Pekerjaan <span>(padat singkat)</span></label>
                <input type="text" class="form-control" name="judul_pekerjaan" required="required">
            </div>
            <div class="form-group">
                <label class="control-label">Alamat Pekerjaan</label>
                <textarea id="konten" name="alamat" style="width: 100%; height: 100px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" placeholder="tempat pengerjaan" required="required"></textarea>
            </div>
            <div class="form-group">
                <label class="control-label">Waktu Kerja</label>
                <input type="date" class="form-control" name="tanggal_pengerjaan" required="required">
            </div>
            <div class="form-group">
                <label class="control-label">Deskripsi Pekerjaan</label>
                <textarea id="konten" name="deskripsi_pekerjaan" style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" placeholder="Misal, merapikan taman atau memberbaiki saluran air." required="required"></textarea>
            </div>
            <div class="form-group">
                <label class="control-label">File</label>
                <input type="file" name="cover_pekerjaan">
            </div>
            <button type="submit" class="btn btn-common">Simpan</button>
        </form>
    </div>
</section>

<?php $__env->stopSection(); ?>

<?php $__env->startSection('pagescript'); ?>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>