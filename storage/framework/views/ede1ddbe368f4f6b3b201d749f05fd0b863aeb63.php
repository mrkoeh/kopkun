<footer>
<section class="footer-Content">
<div class="container">
<div class="row">
<div class="col-md-3 col-sm-6 col-xs-12">
<div class="widget">
<h3 class="block-title">About Us</h3>
<div class="textwidget">
<p>Merupakan situs direktori lowongan kerja terupdate khusus area Barlingmascakep. Jika anda mempunyai informasi lowongan di daerah anda silahkan share disini.</p>
</div>
</div>
</div>
<div class="col-md-3 col-sm-6 col-xs-12">
<div class="widget">
<h3 class="block-title">Quick Links</h3>
<ul class="menu">
	<?php $__currentLoopData = $menus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
<li><a href="<?php echo e($menu->link); ?>"><?php echo e($menu->nama_menu); ?></a></li>
	<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
</ul>
</div>
</div>

<div class="col-md-3 col-sm-6 col-xs-12">
<div class="widget">
<h3 class="block-title">Follow Us</h3>
<div class="bottom-social-icons social-icon">
<a class="twitter" href="#"><i class="ti-twitter-alt"></i></a>
<a class="facebook" href="#"><i class="ti-facebook"></i></a>
<a class="youtube" href="#"><i class="ti-youtube"></i></a>
<a class="dribble" href="#"><i class="ti-dribbble"></i></a>
<a class="linkedin" href="#"><i class="ti-linkedin"></i></a>
</div>
</div>
</div>
</div>
</div>
</section>


<div id="copyright">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="site-info text-center">
<p>Copyright &copy; <?php echo date("Y");?> - All Rights reserved. Design By <a href="https://nggolet.com" target="_blank">nggolet.com</a></p>
</div>
</div>
</div>
</div>
</div>

</footer>