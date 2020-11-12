@extends('layouts.app')


@section('container')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
            <h3 class="card-title"><i class="fas fa-boxes"></i> Ingreso de Productos/Mercaderia</h3>

            <div class="card-tools">
                <form action="{{ route('input.index') }}" method="GET" style="margin:0px;padding:0px;">
                    @csrf
                    <div class="input-group input-group-sm" style="width: 250px;">
                        <input type="text" name="q" class="form-control float-right" id="q" placeholder="Buscar..." value="{{ $q }}">
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                            <a href="{{ route('input.index') }}" class="btn btn-default"><i class="fas fa-sync"></i></a>
                            <a href="{{ route('input.create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Nuevo </a>
                        </div>
                    </div>
                </form>
            </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap table-sm table-borderless" data-toggle="dataTable" data-form="deleteForm">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Fecha</th>
                        <th>CodigoSN</th>
                        <th>Socio de Negocio</th>
                        <th>Almacen</th>
                        <th>Motivo</th>
                        <th>Usuario</th>
                        <th>Accion</th>
                    </tr>
                    </thead>
                    <tbody>
                        @foreach($result as $item)
                            <tr>
                                <td style="width:60px;">{{ str_pad($item->id, 4, "0", STR_PAD_LEFT) }}</td>
                                <td style="width:90px;">{{ $item->datetrx }}</td>
                                <td style="width:100px;">{{ $item->bpartnercode }}</td>
                                <td>{{ $item->bpartnername }}</td>
                                <td>{{ $item->warehousename }}</td>
                                <td>{{ $item->reasonname }}</td>
                                <td>{{ $item->username }}</td>
                                <td width="80">
                                    @method('delete')
                                    @csrf
                                    <a href="#" 
                                        class="ajax-view" 
                                        data-id="{{ $item->id }}"
                                        data-toggle="modal" 
                                        data-target="#ajax-doc-view"><i class="fas fa-print"></i> Ver </a> | 
                                    <a href="{{ route('input.show',$item->id) }}?pdf"><i class="far fa-file-pdf"></i> PDF</a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                    <tfoot>
                        <tr>
                            <td>  
                                <div class="card-title">
                                
                                </div>
                            </td>
                        </tr>
                    </tfoot>
                </table>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                {{ $result->links('layouts.paginate') }}
            </div>
        </div>
      <!-- /.card -->
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Confirmacion de eliminar</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
            <p>Estas seguro, quieres eliminar?</p>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-primary" id="delete-btn"> Eliminar</button>
            <button type="button" class="btn btn-default" data-dismiss="modal"> Cancelar</button>
        </div>
      </div>
    </div>
</div>
<!-- /.Modal -->

<!-- Modal -->
<div class="modal fade" id="ajax-doc-view" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content ajax-doc-details">
             
        </div>
    </div>
</div>
<!-- /.Modal -->

 
@endsection

@section('script')
<script>
$(document).ready(function () {
  
  
    $('.ajax-view').click(function(){
                
                var id = $(this).data('id');

                // AJAX request
                $.ajax({
                    url: '{{ route('input.index') }}/' + id,
                    type: 'get',
                    data: {
                        id: id,
                        _token:'Ylosz0WZxhhJKVORJQqoAH05RV91INlRz2jZkZbZ'
                    },
                    success: function(response){ 
                        // Add response in Modal body
                        $('.ajax-doc-details').html(response); 
                        // Display Modal
                        //$('.ajax-guia').modal('show'); 
                    }
                });
            });

});
</script>
@endsection