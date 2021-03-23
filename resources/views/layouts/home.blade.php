
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>{{ env('APP_NAME','handblack') }}</title>
    <link rel="stylesheet" href="{{ asset('plugins') }}/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="{{ asset('adminlte') }}/css/adminlte.min.css">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition layout-top-nav">
    <div class="wrapper">

    <!-- Navbar -->
    @include('layouts.home_navbar')
 
    @yield('breadcrumbs')
 
    <!-- /.navbar -->
    
   

    <!-- Main content -->
    <div class="content">
        <div class="container">
            @yield('container')
        </div>
    </div>

    <footer>
        <div class="content">
            <div class="container">
               
            </div>
        </div>
    </footer>
    


 

    <!-- Main Footer -->
    <!--
    <footer class="main-footer">
        <div class="float-right d-none d-sm-inline">
        Anything you want
        </div>
        <strong>Copyright &copy; 2014-2019 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
    </footer>
    --> 
</div>
    <!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="{{ asset('plugins') }}/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="{{ asset('plugins') }}/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="{{ asset('adminlte') }}/js/adminlte.min.js"></script>
</body>
</html>
