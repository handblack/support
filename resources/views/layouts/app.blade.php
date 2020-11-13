
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 3 | Invoice</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('/plugins')}}/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="{{ asset('plugins')}}/overlayScrollbars/css/OverlayScrollbars.min.css">
  <link rel="stylesheet" href="{{ asset('plugins')}}/select2/css/select2.min.css">
  <link rel="stylesheet" href="{{ asset('plugins')}}/toastr/toastr.min.css">
  
  <link rel="stylesheet" href="{{ asset('plugins')}}/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <link rel="stylesheet" href="{{ asset('plugins')}}/daterangepicker/daterangepicker.css">
    

  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset('/adminlte')}}/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  <style>
  .table thead{
    background-color: rgba(0,0,0,.03);
    border-bottom: 2px solid #dee2e6;
  }
  .form-group {
    margin-bottom: 5px;
}
  </style>
  @yield('style')
  @yield('header')
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  @include('layouts.navbar')
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  @include('layouts.sidebar')
  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    

    <section class="content">
      <br>
    </section>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            @yield('container')


           
            <!-- /.invoice -->
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer no-print">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.0.5
    </div>
    <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong> All rights
    reserved.
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="{{ asset('plugins') }}/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="{{ asset('plugins') }}/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="{{ asset('plugins') }}/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script src="{{ asset('plugins') }}/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="{{ asset('plugins') }}/select2/js/select2.min.js"></script>
<script src="{{ asset('plugins') }}/toastr/toastr.min.js"></script>

<!-- daterangepicker -->
<script src="{{ asset('plugins') }}/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<script src="{{ asset('plugins') }}/moment/moment.min.js"></script>
<script src="{{ asset('plugins') }}/daterangepicker/daterangepicker.js"></script>
<!-- AdminLTE App -->
<script src="{{ asset('adminlte') }}/js/adminlte.js"></script>
<script>
  $('.query-product-engine-bnt').click(function(){
      var id = $('#query-product-code').val();
      $.ajax({
          url: '{{ route('ajax.search.productcode') }}',
          type: 'post',
          data: {
              productcode: id,
              _token:'{{ csrf_token() }}'
          },
          success: function(response){ 
              // Add response in Modal body
              $('.query-result-product-engine').html(response); 
              // Display Modal
              //$('.ajax-guia').modal('show'); 
          }
      });
  });

</script>
@yield('script')
</body>
</html>
