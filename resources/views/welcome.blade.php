@extends('layouts.home')


@section('breadcrumbs')
    @include('layouts.home_breadcrumbs')
@endsection


@section('container')
<div class="row">
    <div class="col-md-8">
        <div class="jumbotron">
            <h1 class="display-4">{{ env('APP_NAME','handblack') }}</h1>
            <p class="lead">{{ env('APP_NAME','handblack') }} es una manera sencilla de gestionar y controlar tu stock y cuenta coriente de clientes y proveedores. 
                Permite controlar multiples almacenes y productos ilimitados asi como el traspaso de mercaderia entre tus almacenes.
                <br>
                <br>
                Ten tu negocio en orden para que sigas creciendo. 
            </p>
            <hr class="my-4">
            <p class="lead">
                <a class="btn btn-primary btn-lg" href="#" role="button">Mas Información</a>
            </p>
        </div>
        
    </div>
    <div class="col-md-4">
        <div class="card card-primary card-outline">
            <div class="card-body">
                <h4>¿Necesitas más información?</h4>
                Déjanos tus datos, y en breve un asesor se contactará contigo
        
                <form>

                    <div class="form-group">
                    <label for="exampleInputEmail1">Primer Nombre</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nombre">
                    </div>

                    <div class="form-group">
                    <label for="exampleInputEmail1">Email</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ingresa tu email">
                    </div>

                    <div class="form-group">
                    <label for="exampleInputPassword1">Movil</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Movil">
                    </div>

                    <button type="submit" class="btn btn-primary">Enviar</button>
                </form>
            </div>
        </div>
    </div>
</div>


@endsection