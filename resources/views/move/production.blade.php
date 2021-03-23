@extends('layouts.app')


@section('container')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
            <h3 class="card-title"><i class="fas fa-boxes"></i> Produccion</h3>

            <div class="card-tools">
                <form action="{{ route('production.index') }}" method="GET" style="margin:0px;padding:0px;">
                    @csrf
                    <div class="input-group input-group-sm" style="width: 280px;">
                        <input type="text" name="q" class="form-control float-right" id="q" placeholder="Buscar..." value="{{ $q }}">
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                            <a href="{{ route('production.index') }}" class="btn btn-default"><i class="fas fa-sync"></i></a>
                            <a href="{{ route('production.create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Nuevo </a>
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
                        <th>Socio de Negocio</th>
                        <th>Almacen</th>
                        <th>Motivo</th>
                        <th>Estado</th>
                        <th>Accion</th>
                    </tr>
                    </thead>
                    <tbody>
                        @foreach($result as $item)
                            <form action="{{ route('production.destroy',$item->id) }}" method="POST" class="forn-inline form-delete">
                                <tr>
                                    <td width="60">{{ $item->id }}</td>
                                    <td width="100">{{ $item->datetrx }}</td>
                                    <td>{{ $item->bpartnername }}</td>
                                    <td>{{ $item->warehousename }}</td>
                                    <td>{{ $item->reasonname }}</td>
                                    <td>{{ $item->isactive }}</td>
                                    <td width="80">
                                        @method('delete')
                                        @csrf
                                        <a href="{{ route('production.edit',$item->id) }}" 
                                            class="ajax-view" 
                                            data-id="{{ $item->id }}"
                                            data-toggle="modal" 
                                            data-target="#ajax-doc-view"><i class="fas fa-print"></i> Ver </a> | 
                                        <a href="#" data-toggle="modal" data-target="#confirm-delete"><i class="far fa-trash-alt"></i> Eliminar</a>
                                    </td>
                                </tr>
                            </form>
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
    <div class="modal-dialog" role="document">
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
    <div class="modal-dialog  modal-dialog-centered modal-lg" role="document">
        <div class="modal-content ajax-doc-details">
             
        </div>
    </div>
</div>
<!-- /.Modal -->

 
@endsection

@section('script')
<script>
$(document).ready(function () {
    $('table[data-form="deleteForm"]').on('click', '.form-delete', function(e){
        e.preventDefault();
        var $form=$(this);
        $('#confirm-delete').modal({ backdrop: 'static', keyboard: false })
                .on('click', '#delete-btn', function(){
                    $form.submit();
                });
    });
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