
<div class="modal-header">
    <h5 class="modal-title" id="exampleModalLabel">Nota de Salida #{{ $header->id }} [Vista Preliminar]</h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
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
            <table class="table table-sm">
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
<div class="modal-footer" style="background-color: rgba(0,0,0,.03);">
    <button type="button" class="btn btn-primary" id="delete-btn"> Eliminar</button>
    <button type="button" class="btn btn-default" data-dismiss="modal"> Cancelar</button>
</div>