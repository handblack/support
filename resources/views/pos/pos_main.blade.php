@extends('layouts.app')

@section('header')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection


@section('container')
    <div class="content-header" style="padding: 5px .5rem;">
        <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-8">
            <h1 class="m-0 text-dark">Emitir Comprobante {{ session('pos_token') }}</h1>
            </div><!-- /.col -->
            <div class="col-sm-4">
            <ol class="breadcrumb float-sm-right">
                <li><a class="btn btn-primary" data-toggle="modal" data-target="#modal-payment"> PAGAR </a></li>
            </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>


<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col-2">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id=""><i class="far fa-calendar-alt"></i></span>
                    </div>
                    <input type="text" value="{{ date("Y-m-d") }}" class="form-control">   
                </div>
                
                
            </div>
            
            <div class="col-4">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id=""><i class="fas fa-warehouse"></i></span>
                    </div>
                    <input type="text" value="AVIACION" class="form-control" disabled>   
                </div>
            </div>
            <div class="col-6">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id="">SERIE&nbsp;&nbsp;<i class="fas fa-layer-group"></i></span>
                    </div>
                    <select name="" id="" class="form-control">
                        <option value="">F001 - FACTURA</option>
                        <option value="">F002 - FACTURA</option>
                        <option value="">B001 - BOLETA</option>
                        <option value="">B002 - BOLETA</option>
                    </select>

                    <input type="text" class="form-control">
                </div>


            </div>
        </div>
    </div>
    <div class="card-body" style="background-color: rgba(0,0,0,.03);">
        <div class="row">
            <!-- Socio de Negocio -->
            <div class="col-12">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id=""><i class="fas fa-user-circle"></i>&nbsp;&nbsp;CLIENTE</span>
                    </div>
                    <select name="bpartner_id" id="bpartner_id" class="form-control select2-bpartner" placeholder="Ingrese el RUC/DNI/Razon Social">

                    </select>

                    <div class="input-group-append">
                        <a href="#" class="btn btn-default" data-toggle="modal" data-target="#modal-bpartner-create"><i class="far fa-file"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
    <div class="card-body p-0">
        <div class="row">
            <!-- Cantidad -->
            <div class="col-4" style="padding-right: 0px;">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id=""><i class="fas fa-plus"></i> Cantidad</span>
                        <a href="#" class="btn btn-default"><i class="fas fa-cubes"></i></a>
                    </div>
                    <input type="text" class="form-control text-right" value="1" placeholder="Cantidad">
                    <div class="input-group-append">
                        <a href="#" class="btn btn-default" style="border-radius: 0;"><i class="fas fa-minus"></i></a>
                    </div>
                </div>
            </div>
            <!-- Codigo BAR -->
            <div class="col-5" style="padding-left: 0px;padding-right: 0px;">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" style="border-radius: 0;"><i class="fas fa-qrcode"></i></span>
                    </div>
                    <input type="text" class="form-control productcode" name="productcode" id="productcode" value="" placeholder="Codigo de barra">
                    <div class="input-group-append">
                        <a href="#" class="btn btn-info" style="border-radius: 0;"> Agregar </a>
                    </div>
                </div>
            </div>
            <!-- Buscar Producto -->
            <div class="col-2" style="padding-left: 0px;">
                
                <a href="#" class="btn btn-primary btn-block" data-toggle="modal" data-target="#modal-product-search" style="border-radius: 0;"><i class="fab fa-searchengin"></i> Buscar</a>
            </div>
            <div class="col-1">
                <a href="#" class="btn btn-default btn-block"><i class="fas fa-sync"></i></a>
            </div>
        </div>
  
        <div class="row">
            <!-- <table class="table  table-hover table-sm text-nowrap  table-borderless" data-toggle="dataTable" data-form="deleteForm"> -->
            <table class="table table-hover table-sm table-borderless table-striped grilla-detalle">
                <thead>
                    <tr>
                        <th width="80">CODIGO</th>
                        <th>PRODUCTO/DESCRIPCION</th>
                        <th width="40">UM</th>
                        <th class="text-right">CANT</th>
                        <th class="text-right">PU</th>
                        <th class="text-right">TOTAL</th>
                        <th width="40"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1125</td>
                        <td>JERSEY 90 ALGODON 30/1 - ROJO </td>
                        <td>KG</td>
                        <td class="text-right">120.32</td>
                        <td class="text-right">1.00</td>
                        <td class="text-right">120.32</td>
                        <td class="text-center">
                            <a href="#"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                   
                    
                </tbody>
            </table>
        </div>
        <!-- Totales -->
        <div class="row">

            <div class="col-md-5 offset-md-7 ">
                <table class="table  table-sm text-nowrap  table-borderless grilla-total" style="border:1px solid #dcdcdc;">
                    <tr>
                        <td>SUBTOTAL</td>
                        <td class="text-right">0.00</td>
                    </tr>
                    <tr>
                        <td>IGV 18%</td>
                        <td class="text-right">0.00</td>
                    </tr>
                    <tr>
                        <td>TOTAL</td>
                        <td class="text-right">0.00</td>
                    </div>
                </tr>
            </table>
        </div>
    </div>
    <div class="card-footer">
        Aqui va el footre
    </div>
</div>

<div class="row">
    <div class="col-8">
        Documentos Vinculado [<a href="">Agregar</a>]
    </div>
    <div class="col-4">
        <table>
            <tr>
                <td width="50%">SUB-TOTAL</td>
                <td width="50%" class="text-right">0.00</td>
            </tr>
        </table>
    </div>
</div>

<div class="row">
    <div class="col-12"></div>
</div>



{{-- Modal - Product-Search --}}
@include('pos.modal_productsearch');

{{-- Modal - Nuevo Cliente --}}
@include('pos.modal_bpartner');

{{-- Modal - Cobrar --}}
@include('pos.modal_payment',[
    'medio_pago' => $medio_pago
]);




@endsection

@section('script')
<script>
    $(function(){
   
        $.ajaxSetup({
            dataType: 'json',
            delay: 150,
            cache: true,
            headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        
        $('.select2-bpartner').select2({
            ajax: {
                type: 'post',
                url: '{{ route('ajax.search.bpartner') }}',
                data: function (params) {
                    return {
                        q: params.term, 
                        page: params.page
                    };
                },
            },
            minimumInputLength: 0
        });
        // Capturamos el Evento del AddProduct
        $(".productcode").on('keyup', function (e) {
            if (e.key === 'Enter' || e.keyCode === 13) {
                var code = $('.productcode').val();
                //enviamos el producto en ajax
                $.ajax({
                    method:'POST',
                    url:'{{ route('ajax.pos.product.add') }}',
                    data:{
                        productcode: code,
                    },
                    success: function(response){
                        switch(response.status){
                            case 1:
                                    // Actualizamos el detalle
                                    $(".grilla-detalle > tbody").prepend(response.line);
                                    $('#productcode').val('');
                                    toastr.success(response.message);       
                                    // Actualizamos el total
                                    $(".grilla-total").html(response.total);
                                    break;
                            case 2:
                                    toastr.error(response.message);
                                    break;
                            default:
                                    toastr.error(response.message);

                        }
                    },
                    error: function(){
                        alert('error ajax');
                    }
                });
                //alert('*'+code.trim()+'*');
            }
        });
        // Enviando los Payment
        $(".payment-btn-add").click(function(){
            $.ajax({
                method:'POST',
                url:'{{ route('ajax.pos.payment.add') }}',
                data: $('#form-payment').serialize(),
                success: function(response){
                    $('#payment-grilla-line').html(response.detalle);
                    $('#payment-grilla-total').html(response.total);
                }
            });
        });
        // Eliminando los Payment
        $(".payment-btn-remove").click(function(){
            alert('a');
        });
        $(".payment-btn-remove2").click(function(){
            $.ajax({
                method:'POST',
                url:'{{ route('ajax.pos.payment.delete') }}',
                data: {id: $('.payment-btn-remove').data('id') },
                success: function(response){
                    $('#payment-grilla-line').html(response.detalle);
                    $('#payment-grilla-total').html(response.total);
                }
            });
        });

        // Manipulando en payment y sus opciones
        $('#payment_method_id').click(function(){

        });
        $("#payment_method_id").change(function(){
            $('.payment_class').hide();
            var MethodID = $(this).children("option:selected").val();
            $('.payment_group_' + MethodID).show();

        });

        $('.payment_class').hide();
 
    });
function payment_delete(ii){
    $.ajax({
        method:'POST',
        url:'{{ route('ajax.pos.payment.delete') }}',
        data: {id: ii },
        success: function(response){
            if(response.status = 1 ){
                $('#payment-grilla-line').html(response.detalle);
                $('#payment-grilla-total').html(response.total);
            }else{
                toastr.error(response.message);
            }
        }
    });
}
</script>
    
@endsection