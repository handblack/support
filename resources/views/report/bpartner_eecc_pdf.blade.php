@extends('layouts.pdf')

@section('style')
<style>
    .xx td {
        padding:1px;
    }
</style>
@endsection


@section('header')
<table width="100%" cellspacing="0" cellpadding="0" style="border-collapse: collapse;">
    <tr>
        <td colspan="2" style="border-bottom:1px solid #000;">
            <span style="font-size:18px;padding-top:25px;"><strong>Estado de Cuenta</strong></span>
           
        </td>
    </tr>
    <tr>
        <td valign="top">
            <!-- Informacion del CLIENTE -->
            {{ $bpartner->bpartnername }}<br>
            DIRECCCION<br>
            TELEFONOS Y EMAIL
        </td>
        <td width="160"  valign="top" >
            <!-- Informacion del REPORTE -->
            <table width="100%" cellspacing="0" cellpadding="0" style="border-collapse: collapse;">
                <tr>
                    <td><strong>CODIGO</strong></td>
                    <td>: {{ $bpartner->bpartnercode }}</td>
                </tr>
                <tr>
                    <td><strong>PERIODO</strong></td>
                    <td>: {{ $dateinit }} al {{ $dateend }}</td>
                </tr>
                <tr>
                    <td><strong>GENERADO</strong></td>
                    <td>: {{ date("d-m-Y H:i:s") }}</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <hr class="new1">
        </td>
    </tr>
</table>
@endsection


@section('container')
<table width="100%" cellspacing="0" cellpadding="0" style="border-collapse: collapse;">
    <thead>
        <tr>
            <th width="45" class="text-left">FECHA</th>
            <th>DESCRIPCION</th>
            <th>CARGO</th>
            <th>ABONO</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($result as $item)
        <tr>
            <td>{{ \Carbon\Carbon::parse($item->datetrx)->format("d/m/Y") }}</td>
            <td>{{ $item->description }}</td>
            <td class="text-right" style="width:80px;border-left:1px solid #dee2e6;">{{ ($item->typesignal == '-') ? number_format($item->amount,env('ROUND_DECIMAL_GRANDLINE', 2)) : '' }}</td>
            <td class="text-right" style="width:80px;border-left:1px solid #dee2e6;">{{ ($item->typesignal == '+') ? number_format($item->amount,env('ROUND_DECIMAL_GRANDLINE', 2)) : '' }}</td>
            <!-- td class="text-right" style="width:130px;border-left:1px solid #dee2e6;">{{ number_format($item->balance,env('ROUND_DECIMAL_GRANDLINE', 2)) }}</td> -->
        </tr>
    @endforeach
    </tbody>
</table>
@endsection


@section('container2') 
<table class="table table-sm table-hover text-nowrap xx">
    <thead>
        <tr>
            <th>FechaTRX</th>
            <th>Descripcion</th>
            <th class="text-right">Cargo/Debe</th>
            <th class="text-right">Abono/Haber</th>
            <th class="text-right">Saldo</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($result as $item)
            <tr>
                <td style="width:100px">{{ $item->datetrx }}</td>
                <td>{{ $item->description }}</td>
                <td class="text-right" style="width:130px;border-left:1px solid #dee2e6;">{{ ($item->typesignal == '-') ? number_format($item->amount,env('ROUND_DECIMAL_GRANDLINE', 2)) : '' }}</td>
                <td class="text-right" style="width:130px;border-left:1px solid #dee2e6;">{{ ($item->typesignal == '+') ? number_format($item->amount,env('ROUND_DECIMAL_GRANDLINE', 2)) : '' }}</td>
                <td class="text-right" style="width:130px;border-left:1px solid #dee2e6;">{{ number_format($item->balance,env('ROUND_DECIMAL_GRANDLINE', 2)) }}</td>
            </tr>
        @endforeach
    </tbody>
    <tfoot>
        <tr>
            <td colspan="2"></td>
            <td class="text-right" style="width:130px;border-left:1px solid #dee2e6;background-color:#f5f5f5;">0.00</td>
            <td class="text-right" style="width:130px;border-left:1px solid #dee2e6;background-color:#f5f5f5;">0.00</td>
            <td class="text-right" style="width:130px;border-left:1px solid #dee2e6;"></td>
        </tr>
    </tfoot>
</table>
  

@endsection