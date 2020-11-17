@extends('layouts.home')


@section('breadcrumbs')
 
 
 
<br>
@endsection


@section('container')
<div class="row">
    <div class="col-md-8">
        <div class="jumbotron">
            <h1 class="display-4">{{ env('APP_NAME','handblack') }}</h1>
            <p class="lead">{{ env('APP_NAME','handblack') }} es una manera sencilla de gestionar y controlar tu stock y cuenta coriente de clientes y proveedores. 
                Permite controlar multiples almacenes y productos ilimitados asi como el traspaso de mercaderia entre tus almacenes.
            </p>
            <p class="lead">
                De facil uso y de acceso de cualquier dispositivo, para mas información sobre los requerimientos pogase en contacto con nosotros.
                <br>
                <br><i class="fab fa-whatsapp"></i>&nbsp;&nbsp;+51 936 610 700
                <br><i class="fab fa-whatsapp"></i>&nbsp;&nbsp;+51 997 752 822
                <br><i class="far fa-envelope"></i>&nbsp;&nbsp;ventas@gruposbf.pe
            </p>
            <!--
            <hr class="my-4">
            <p class="lead">
                <a class="btn btn-primary btn-lg" href="#" role="button">Mas Información</a>
            </p> -->
        </div>
        
    </div>
    <div class="col-md-4">
        <div class="card card-primary card-outline">
            <div class="card-body">
                <h4>¿Necesitas más información?</h4>
                Déjanos tus datos, y en breve un asesor se contactará contigo
        
                <form id="form-contact" action="http://ticket.gruposbf.pe/api/warehouse.php" method="POST">

                    <div class="form-group">
                    <label for="exampleInputEmail1">Primer Nombre</label>
                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nombre" required>
                    </div>

                    <div class="form-group">
                    <label for="exampleInputEmail1">Email</label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ingresa tu email" required>
                    </div>

                    <div class="form-group">
                    <label for="exampleInputPassword1">Movil</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Movil" required>
                    </div>

                    <button type="submit" class="btn btn-primary" id="btnEnviar">Enviar</button>
                </form>
                <div class="respuesta"></div>
            </div>
        </div>
    </div>
</div>


@endsection



@section('script')
<script>
$(document).ready(function () {
    $("#form-contact").bind("submit",function(){
        // Capturamnos el boton de envío
        var btnEnviar = $("#btnEnviar");
        $.ajax({
            type: $(this).attr("method"),
            url: $(this).attr("action"),
            data:$(this).serialize(),
            beforeSend: function(){
                /*
                * Esta función se ejecuta durante el envió de la petición al
                * servidor.
                * */
                // btnEnviar.text("Enviando"); Para button 
                btnEnviar.val("Enviando"); // Para input de tipo button
                btnEnviar.attr("disabled","disabled");
            },
            complete:function(data){
                /*
                * Se ejecuta al termino de la petición
                * */
                btnEnviar.val("Enviar formulario");
                btnEnviar.removeAttr("disabled");
            },
            success: function(data){
                /*
                * Se ejecuta cuando termina la petición y esta ha sido
                * correcta
                * */
                $(".respuesta").html(data);
            },
            error: function(data){
                /*
                * Se ejecuta si la peticón ha sido erronea
                * */
                alert("Problemas al tratar de enviar el formulario");
            }
        });
        // Nos permite cancelar el envio del formulario
        return false;
    });
});
</script>
@endsection