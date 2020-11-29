@extends('layouts.app')

@section('style')
<style type="text/css">
   
    
      h1, p {
      font-family: "Helvetica Neue", "Segoe UI", Segoe, Helvetica, Arial, "Lucida Grande", sans-serif;
      font-weight: normal;
      margin: 0;
      padding: 0;
      text-align: center;
    }
    
    .containerx {
      margin-left:  auto;
      margin-right:  auto;
      margin-top: 177px;
      max-width: 1170px;
      padding-right: 15px;
      padding-left: 15px;
    }
    
    .row:before, .row:after {
      display: table;
      content: " ";
    }
    
    .col-md-6 {
      width: 50%;
    }
    
    .col-md-push-3 {
      margin-left: 25%;
    }
    
    h1 {
      font-size: 48px;
      font-weight: 300;
      margin: 0 0 20px 0;
    }
    
    .lead {
      font-size: 21px;
      font-weight: 200;
      margin-bottom: 20px;
    }
    
    p {
      margin: 0 0 10px;
    }
    
    a {
      color: #3282e6;
      text-decoration: none;
    }
</style>
@endsection

@section('container')
<div class="containerx text-center" id="error">
    <svg height="100" width="100">
        <polygon points="50,25 17,80 82,80" stroke-linejoin="round" style="fill:none;stroke:#FF0000;stroke-width:8" />
        <text x="42" y="74" fill="#FF0000" font-family="sans-serif" font-weight="900" font-size="42px">!</text>
    </svg>
    <div class="row">
        <div class="col-md-12">
        <div class="main-icon text-warning"><span class="uxicon uxicon-alert"></span></div>
            <h1>
                @if($action == 'isgrant')
                    Acceso Denegado
                @elseif($action == 'iscreate')
                    Crear registro - Denegado
                @elseif($action == 'isread')
                    Leer registro - Denegado
                @elseif($action == 'isupdate')
                    Actualiar registro - Denegado
                @elseif($action == 'isdelete')
                    Eliminar registro - Denegado
                @endif
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 col-md-push-3">
        <p class="lead"><!-- Si requiere tener acceso debes de solicitarlo al administrador del sistema enviando un mail. -->
            {{ $grant->module }}              
        </p>
        </div>
    </div>
</div>
@endsection