
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>{{ env('APP_NAME','SysAdminManager') }}</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('plugins')}}/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="{{ asset('plugins')}}/overlayScrollbars/css/OverlayScrollbars.min.css">
  <link rel="stylesheet" href="{{ asset('plugins')}}/select2/css/select2.min.css">
  <link rel="stylesheet" href="{{ asset('plugins')}}/toastr/toastr.min.css">
  <link rel="stylesheet" href="{{ asset('plugins')}}/sweetalert2/sweetalert2.min.css">
  
  <link rel="stylesheet" href="{{ asset('plugins')}}/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <link rel="stylesheet" href="{{ asset('plugins')}}/daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="{{ asset('plugins')}}/summernote/summernote.min.css">
    

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
<body class="hold-transition 
{{ (env('SIDEBAR_MINI') ? 'sidebar-mini' :'' ) }} 
{{ (env('SIDEBAR_COLLAPSE') ? 'sidebar-collapse' :'' ) }} 
{{ (env('LAYOUT_NAVBAR_FIXED') ? 'layout-navbar-fixed' :'' ) }} 
">
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
      github <a href="https://github.com/handblack">нαи∂вℓαςк</a>
    </div>
    <strong>Grupo SBF Perú SAC.</strong>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->





<!-- Modal 
    Punto de Venta
-->
<div class="modal fade" id="ticket-bug-create" tabindex="-1" role="dialog" aria-labelledby="modal-pos" aria-hidden="true">
  <form  method="POST" id="ticket-form-bug" name="ticket-form-bug">
    <input type="hidden" name="name" value="{{ Auth::user()->name }}">
    <input type="hidden" name="email" value="{{ Auth::user()->email }}">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle"><i class="fas fa-bug"></i> Reportar Bug</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <textarea id="ticket-message" name="ticket_message" required></textarea>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fas fa-times"></i> Cancelar</button>
                <button type="submit" class="btn btn-primary" id="ticket-form-button-submit"><i class="fas fa-share-square"></i> Reportar</button>
            </div>
        </div>
    </div>
  </form>
</div>
<!-- ./Modal -->


<!-- Modal -->
<div class="modal fade" id="ticket-bug-create" tabindex="-1" role="dialog" aria-labelledby="ticket-bug-create" aria-hidden="true">
  <form  method="POST" id="ticket-form-bug" name="ticket-form-bug">
    <input type="hidden" name="name" value="{{ Auth::user()->name }}">
    <input type="hidden" name="email" value="{{ Auth::user()->email }}">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle"><i class="fas fa-bug"></i> Reportar Bug</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <textarea id="ticket-message" name="ticket_message" required></textarea>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><i class="fas fa-times"></i> Cancelar</button>
                <button type="submit" class="btn btn-primary" id="ticket-form-button-submit"><i class="fas fa-share-square"></i> Reportar</button>
            </div>
        </div>
    </div>
  </form>
</div>
<!-- ./Modal -->

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
<script src="{{ asset('plugins') }}/sweetalert2/sweetalert2.min.js"></script>
<!-- daterangepicker -->
<script src="{{ asset('plugins') }}/moment/moment.min.js"></script>
<script src="{{ asset('plugins') }}/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<script src="{{ asset('plugins') }}/daterangepicker/daterangepicker.js"></script>
<script src="{{ asset('plugins') }}/summernote/summernote.min.js"></script>

<!-- AdminLTE App -->
<script src="{{ asset('adminlte') }}/js/adminlte.js"></script>
<script src="{{ asset('js/utility.js') }}"></script>
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

  /* ticket - manejo de contenido */
  $('#ticket-message').summernote({
    height: 180,
    placeholder: '-- Informar el problema lo mas detallado posible --',
    codemirror: {
      mode: 'text/html',
      htmlMode: true,
      lineNumbers: true,
      theme: 'yeti'
    },
    toolbar: []
  });
  /* ticket - envio del form */
  $("#ticket-form-bug").submit(function(e) {
    e.preventDefault();  
    let name = $('input[name=name]').val();
    let email = $('input[name=email]').val();


    //let message = $('#ticketnote').html();
    let mess = $('#ticket-message').summernote('code');
    let subject = 'Reportado - {{ url()->current() }}';
    if(mess == ''){
      alert('Debes de detallar el FeedBack');
    }else{
      $.ajax({
            type: "POST",
            url: 'http://ticket.gruposbf.pe/api/warehouse.php',
            dataType: 'html',
            data: {
              name:name,
              email:email,
              subject:subject,
              msg:mess 
            },
          }).done(function( response ) {
              $('#ticket-bug-create').modal('hide');
              $('#ticketnote').summernote('reset');
              toastr.success('Se a generado el Ticket #' + response)
          });
    }
  });

</script>
@yield('script')


  
</body>
</html>
