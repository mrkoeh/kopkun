<!-- jQuery 3 -->
<script src="{{asset('template/backend/bower_components/jquery/dist/jquery.min.js')}}"></script>
<!-- jQuery UI 1.11.4 -->
<script src="{{asset('template/backend/bower_components/jquery-ui/jquery-ui.min.js')}}"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="{{asset('template/backend/bower_components/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<!-- Morris.js charts -->
<!-- <script src="{{asset('template/backend/bower_components/raphael/raphael.min.js')}}"></script>
<script src="{{asset('template/backend/bower_components/morris.js/morris.min.js')}}"></script> -->
<!-- Sparkline -->
<script src="{{asset('template/backend/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js')}}"></script>
<!-- jvectormap -->
<script src="{{asset('template/backend/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js')}}"></script>
<script src="{{asset('template/backend/plugins/jvectormap/jquery-jvectormap-world-mill-en.js')}}"></script>
<!-- jQuery Knob Chart -->
<script src="{{asset('template/backend/bower_components/jquery-knob/dist/jquery.knob.min.js')}}"></script>
<!-- daterangepicker -->
<script src="{{asset('template/backend/bower_components/moment/min/moment.min.js')}}"></script>
<script src="{{asset('template/backend/bower_components/bootstrap-daterangepicker/daterangepicker.js')}}"></script>
<!-- datepicker -->
<script src="{{asset('template/backend/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')}}"></script>

<!-- Slimscroll -->
<script src="{{asset('template/backend/bower_components/jquery-slimscroll/jquery.slimscroll.min.js')}}"></script>
<!-- FastClick -->
<script src="{{asset('template/backend/bower_components/fastclick/lib/fastclick.js')}}"></script>
<script src="{{asset('template/backend/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js')}}"></script>
<!-- DataTables -->
<script src="{{asset('template/backend/bower_components/datatables.net/js/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('template/backend/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js')}}"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-tagsinput/1.3.6/jquery.tagsinput.min.js"></script>
<!-- tinyMce -->
<script src="{{asset('template/backend/plugins/tinymce/jscripts/tinymce.min.js')}}"></script>
<script src="{{asset('template/backend/plugins/tinymce/jscripts/tiny_function.js')}}"></script>
<script src="{{asset('template/backend/dist/js/adminlte.min.js')}}"></script>
<!-- <script src="{{asset('template/backend/dist/js/pages/dashboard.js')}}"></script> -->
<!-- <script src="{{asset('template/backend/dist/js/demo.js')}}"></script> -->
<script>
  $(function () {
    $('.textarea').wysihtml5();
    $('#example1').DataTable();
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  });
  
 	$('#input-tags').tagsInput();
</script>