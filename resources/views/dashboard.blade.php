@extends('layouts.app')

@section('container')
<div class="card">
    <div class="card-header border-0">
        <h3 class="card-title"><i class="far fa-id-card"></i>&nbsp;&nbsp;Panel de Control - Cuentas Activas - &nbsp;&nbsp;</h3>
        <div class="card-tools">
            Generado {{ date("Y-m-d H:i:s") }}&nbsp;&nbsp;&nbsp;&nbsp;
            <a href="#" class="btn btn-tool btn-sm"><i class="fas fa-download"></i></a>
            <a href="#" class="btn btn-tool btn-sm">
            <i class="fas fa-bars"></i>
            </a>
        </div>
    </div>
    <div class="card-body table-responsive p-0">
        <table class="table table-striped table-valign-middle table-sm">
            <thead>
                <tr>
                    <th>Socio de Negocio</th>
                    <th class="text-right" style="border-left:1px solid #dcdcdc; ">Linea</th>
                    <th class="text-right">Abierto</th>
                    <th></th>
                    <th>Accion</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($bpartner as $item)
                    <tr>
                        <td>{{ $item->bpartnername }}
                            <!--
                            <small class="badge badge-success"><i class="far fa-clock"></i> Ultimo despacho</small>
                            -->
                        </td>
                        <td class="text-right" style="border-left:1px solid #dcdcdc; width:100px;">{{ number_format($item->creditline,env('ROUND_DECIMAL_AMOUNT',2)) }}</td>
                        <td class="text-right" style="width:100px;">0.00</td>
                        <td style="width:150px">
                            <div class="progress progress-xs progress-striped active">
                                <div class="progress-bar bg-primary" style="width: 30%"></div>
                            </div>
                        </td>
                        <td style="width:70px">
                            <a href="#" class="text-muted">&nbsp;&nbsp;<i class="fas fa-search"></i>&nbsp;&nbsp;</a>
                        </td>
                    </tr>
                @endforeach 
            </tbody>
        </table>
    </div>
</div>
@endsection

@section('script')
<script>
    
</script>    
@endsection