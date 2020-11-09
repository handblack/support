
<div class="modal-header">
    <h5 class="modal-title" id="exampleModalLabel">Nota de Ingreso #{{ $header->id }}</h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<div class="modal-body">
    <div class="row">
        <div class="col-12">
            Aqui estamos
        </div>
    </div>
    <div class="row">
        <div class="col-12">
            <table class="table table-sm">
                <thead>
                    <th>Codigo</th>
                    <th>Producto</th>
                    <th>Cantidad</th>
                    <th>UM</th>
                </thead>
                <tbody>
                    @foreach ($lines as $item)
                        <tr>
                            <td>{{ $item->productcode }}</td>
                            <td>{{ $item->productname }}</td>
                            <td>{{ $item->qty }}</td>
                            <td>{{ $item->umname }}</td>
                        </tr>
                    @endforeach
                </tbody>
                <tfoot>
                    <tr>
                        <td></td>
                        <td></td>
                        <td>{{ $lines->sum('qty') }}</td>
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