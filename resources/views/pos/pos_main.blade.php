@extends('layouts.app')
@section('container')
    <div class="content-header" style="padding: 5px .5rem;">
        <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
            <h1 class="m-0 text-dark">Emitir Comprobante Electronico</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Dashboard v1</li>
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
                   

                    <input type="text" class="form-control" style="text-transform: uppercase;" placeholder="Ingrese el RUC/DNI/Razon Social">
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
                        <span class="input-group-text" id=""><i class="fas fa-cubes"></i> Cantidad</span>
                        <a href="#" class="btn btn-default"><i class="fas fa-plus"></i></a>
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
                    <input type="text" class="form-control" value="" placeholder="Codigo de barra">
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
            <table class="table table-hover table-sm table-borderless">
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
                    <tr>
                        <td>1125</td>
                        <td>JERSEY 90 ALGODON 30/1 - ROJO </td>
                        <td>KG</td>
                        <td class="text-right">120.32</td>
                        <td class="text-right">1.00</td>
                        <td class="text-right">120.32</td>
                        <td>
                            <a href="#"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>1125</td>
                        <td>JERSEY 90 ALGODON 30/1 - ROJO </td>
                        <td>KG</td>
                        <td class="text-right">120.32</td>
                        <td class="text-right">1.00</td>
                        <td class="text-right">120.32</td>
                        <td>
                            <a href="#"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td>1125</td>
                        <td>JERSEY 90 ALGODON 30/1 - ROJO </td>
                        <td>KG</td>
                        <td class="text-right">120.32</td>
                        <td class="text-right">1.00</td>
                        <td class="text-right">120.32</td>
                        <td>
                            <a href="#"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                    <tr style="border-bottom:1px solid #dcdcdc;">
                        <td>1125</td>
                        <td>JERSEY 90 ALGODON 30/1 - ROJO </td>
                        <td>KG</td>
                        <td class="text-right">120.32</td>
                        <td class="text-right">1.00</td>
                        <td class="text-right">120.32</td>
                        <td>
                            <a href="#"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- Totales -->
        <div class="row">

            <div class="col-md-5 offset-md-7">
                <table class="table  table-sm text-nowrap  table-borderless" style="border:1px solid #dcdcdc;">
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

<!-- Aqui trabajos las ventanas modales -->
<div class="modal fade" id="modal-product-search">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
            <h4 class="modal-title">Large Modal</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body">
            <p>One fine body&hellip;</p>
            </div>
            <div class="modal-footer justify-content-between">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
  <!-- /.modal -->

<!-- NUEVO CLIENTE -->
<div class="modal fade" id="modal-bpartner-create">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
            <h4 class="modal-title">Cliente - NUEVO</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body">

                <form class="form-horizontal">
              
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-3 col-form-label">Tipo Documento/Nro</label>
                        <div class="col-sm-9">

                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <select name="" id="" class="form-control">
                                        <option value="">06 - RUC</option>
                                        <option value="">01 - DNI</option>
                                        <option value="">99 - OTROS</option>
                                    </select>
                                </div>
                                <input type="number" class="form-control">
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-3 col-form-label">Razon Social</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputPassword3" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-3 col-form-label">Apellido Paterno</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="inputPassword3" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-3 col-form-label">Apellido Materno</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="inputPassword3" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-3 col-form-label">Nombres</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" id="inputPassword3" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-3 col-form-label">Direccion Fiscal</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="inputPassword3" placeholder="Password">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-3 col-form-label">Ubigeo</label>
                        <div class="col-sm-9">
                            <select name="" id="">
                                
                            </select>
                        </div>
                    </div>
                       
                   
                    <!-- /.card-footer -->
                </form>
            </div>
            <div class="modal-footer justify-content-between">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->


@endsection