@extends('layouts.pdf')

@section('container')
    

<div class="modal-header">
    <h5 class="modal-title" id="exampleModalLabel">Nota de Ingreso #{{ $header->id }}</h5>
   
</div>
<div class="modal-body">
    <div class="row">
        
        <dl class="row">
            <dt class="col-sm-3">Socio de Negocio</dt>
            <dd class="col-sm-9">{{ $header->bpartnername }}</dd>
            <dt class="col-sm-3">Fecha</dt>
            <dd class="col-sm-8">{{ $header->datetrx }}</dd>
            <dt class="col-sm-3">Almacen</dt>
            <dd class="col-sm-8">{{ $header->warehousename }}</dd>
            <dt class="col-sm-3">Motivo</dt>
            <dd class="col-sm-8">{{ $header->reasonname }}</dd>

          </dl>
    </div>
    <div class="row">
        <div class="col-12">
            <table class="">
                <thead>
                    <th>Codigo</th>
                    <th>Producto</th>
                    <th>Cantidad</th>
                    <th>UM</th>
                    <th>PRECIO</th>
                    <th>TOTAL</th>
                </thead>
                <tbody>
                    @foreach ($lines as $item)
                        <tr>
                            <td>{{ $item->productcode }}</td>
                            <td>{{ $item->productname }}</td>
                            <td class="text-right">{{ number_format($item->qty,env('ROUND_DECIMAL_QTY', 2)) }}</td>
                            <td>{{ $item->umname }}</td>
                            <td class="text-right">{{ number_format($item->price,env('ROUND_DECIMAL_PRICE', 2)) }}</td>
                            <td class="text-right">{{ number_format($item->grandline,env('ROUND_DECIMAL_GRANDLINE', 2)) }}</td>
                        </tr>
                    @endforeach
                </tbody>
                <tfoot>
                    <tr>
                        <td></td>
                        <td></td>
                        <td class="text-right"><strong>{{ number_format($lines->sum('qty'),env('ROUND_DECIMAL_QTY', 2)) }}</strong></td>
                        <td></td>
                        <td></td>
                        <td class="text-right"><strong>{{ number_format($lines->sum('grandline'),env('ROUND_DECIMAL_GRANDLINE', 2)) }}</strong></td>
                    </tr>
                </tfoot>
            </table>

        </div>
    </div>
</div>

@endsection

@section('footer')
    <div class="container">
        <div class="row">
            <div class="col-12">
                MIASOFTWARE - soluciones en desarrollo de sistema
                <br>http://warehouse.miasoftware.net  soporte@miasoftware.net
            </div>
        </div>
    </div>
@endsection