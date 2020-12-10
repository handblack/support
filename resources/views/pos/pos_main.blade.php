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
            <div class="col-7">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id=""><i class="far fa-calendar-alt"></i></span>
                    </div>
                    <input type="text" value="{{ date("Y-m-d") }}" class="form-control">   
                </div>
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id=""><i class="far fa-calendar-alt"></i></span>
                    </div>
                    <input type="text" value="{{ date("Y-m-d") }}" class="form-control">   
                </div>

                
                <input type="text" value="20101717098">   
            </div>
            <div class="col-5">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text" id=""><i class="far fa-copy"></i></span>
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
    
    <div class="card-body table-responsive p-0">
        <div class="row">
            <table class="table table-hover text-nowrap table-sm table-borderless">
                <thead>
                    <tr>
                        <th width="80">CODIGO</th>
                        <th>PRODUCTO/DESCRIPCION</th>
                        <th width="50">UM</th>
                        <th class="text-right">CANT</th>
                        <th class="text-right">PU</th>
                        <th class="text-right">TOTAL</th>
                        <th></th>
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
                        <td>
                            <a href="#"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                </tbody>
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


@endsection