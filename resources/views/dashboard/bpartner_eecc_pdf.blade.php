@extends('layouts.pdf')

@section('container')

<h2 class="card-title">Estado de Cuenta [ <strong>{{ $dateinit }}</strong> hasta <strong>{{ $dateend }}</strong> ]</h2>
<br>{{ $bpartner->bpartnername }}

 
<table class="table table-sm table-hover text-nowrap">
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