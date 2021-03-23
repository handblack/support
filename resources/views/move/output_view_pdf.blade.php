@extends('layouts.pdf')

@section('header')
<table>
    <tr>
        <td><span style="font-size:18px">{{ env('APP_NAME','sip') }}</span></td>
    </tr>
    <tr>
        <td><span style="">DESPACHO #{{ $header->id }}</span></td>
    </tr>
</table>
@endsection

@section('container')
<br>
<table width="100%">
    <tr>
        <td>Codigo</td>
        <td>Cliente</td>
        <td>Fecha</td>
    </tr>
    <tr>
        <td>{{ $header->bpartnercode }}</td>
        <td>{{ $header->bpartnername }}</td>
        <td>{{ $header->datetrx }}</td>
    </tr>
</table>
<table width="100%">
    <tr>
        <td>Almacen</td>
        <td>Motivo</td>
    </tr>
    <tr>
        <td>{{ $header->warehousename }}</td>
        <td>{{ $header->reasonname }}</td>
    </tr>
</table>



<table class="table" width="100%">
    <thead>
        <tr>
            <th>Codigo</th>
            <th>Producto</th>
            <th>Cantidad</th>
            <th>UM</th>
            <th>PRECIO</th>
            <th>TOTAL</th>
        </tr>
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



@endsection

 