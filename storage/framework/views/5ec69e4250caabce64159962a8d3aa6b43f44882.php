<?php $__env->startSection('content'); ?>

<section class="mbr-section content5 cid-qLBLv2e5aG mbr-parallax-background" id="content5-28">
    <div class="mbr-overlay" style="opacity: 0.7; background-color: rgb(0, 0, 0);"></div>
    <div class="container">
        <div class="media-container-row">
            <div class="title col-12 col-md-8">
                <h2 class="align-center mbr-bold mbr-white pb-3 mbr-fonts-style display-1">Semua Proyek</h2>
            </div>
        </div>
    </div>
</section>

<section class="features18 popup-btn-cards cid-qMIamfi4LL" id="features18-67">
    <div class="container">
        <div class="media-container-row pt-5 ">
            <?php if(count($lowongans) == 0): ?>
                <div class="alert alert-danger">Belum ada artikel ! </div>
            <?php else: ?>
                <?php $__currentLoopData = $lowongans; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $lowongan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="card p-4 col-12 col-lg-4">
                        <div class="card-wrapper">
                            <div class="card-img">
                                <div class="mbr-overlay"></div>
                                <div class="mbr-section-btn text-center">
                                    <a href="<?php echo e(url('detailproyek')); ?>/<?php echo e($lowongan->id); ?>" class="btn btn-white display-4">Detail</a>
                                </div>
                                <img src="<?php echo e(asset('template/frontend/images/renovasi.png')); ?>" alt="PEDIHELP" title="">
                            </div>
                            <div class="card-box">
                            	<b><?php echo e($lowongan->judul_pekerjaan); ?></b><br>
                                <p class="mbr-text mbr-fonts-style align-left display-7"><?php echo e($lowongan->deskripsi_pekerjaan); ?></p>
                            </div>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <?php endif; ?>
        </div>
    </div>
</section>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.front_template', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>