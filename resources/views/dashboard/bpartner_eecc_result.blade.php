@extends('layouts.app')

@section('style')
<style>
    .xx  td {
        padding:0px;
    }
</style>
@endsection

@section('container')

<div class="card">
    <div class="card-header">
        <h3 class="card-title">Estado de Cuenta [ <strong>{{ $dateinit }}</strong> hasta <strong>{{ $dateend }}</strong> ]</h3>

        <div class="card-tools">
            <div class="input-group input-group-sm" >
                <div class="input-group-append">
                    <a href="{{ route('bpartner.eecc.pdf',['id' => $bpartner->id , 'fi' => $dateinit, 'ff' => $dateend]) }}" class="btn btn-default"><i class="fas fa-file-pdf"></i> PDF</a>
                    <!--
                    <a href="#" class="btn btn-default"><i class="fas fa-file-excel"></i> Excel</a>
                    -->
                    <a href="{{ route('bpartner.eecc') }}" class="btn btn-primary"><i class="fas fa-chevron-circle-left"></i> Regresar</a>
                </div>
            </div>
        </div>
    </div>
    <!-- /.card-header -->
    <div class="card-body">
        <div class="post">
            <div class="user-block" style="margin-bottom: 0px;">
              <img class="img-circle img-bordered-sm" src='data:image/svg+xml;utf8,<svg style="enable-background:new 0 0 24 24;" version="1.1" viewBox="0 0 24 24" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g id="info"/><g id="icons"><path d="M12,0C5.4,0,0,5.4,0,12c0,6.6,5.4,12,12,12s12-5.4,12-12C24,5.4,18.6,0,12,0z M12,4c2.2,0,4,2.2,4,5s-1.8,5-4,5   s-4-2.2-4-5S9.8,4,12,4z M18.6,19.5C16.9,21,14.5,22,12,22s-4.9-1-6.6-2.5c-0.4-0.4-0.5-1-0.1-1.4c1.1-1.3,2.6-2.2,4.2-2.7   c0.8,0.4,1.6,0.6,2.5,0.6s1.7-0.2,2.5-0.6c1.7,0.5,3.1,1.4,4.2,2.7C19.1,18.5,19.1,19.1,18.6,19.5z" id="user2"/></g></svg>' alt="user image">
              <span class="username">
                <a href="#">{{ $bpartner->bpartnername }}</a>
              </span>
              <span class="description">Shared publicly - 7:45 PM today</span>
            </div>
            <!-- /.user-block -->
        </div>
    </div>
    <div class="card-body table-responsive p-0">
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
    </div>
    <!-- /.card-body -->
  </div>

    
@endsection