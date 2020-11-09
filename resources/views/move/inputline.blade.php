@extends('layouts.app')


@section('style')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('container')



<div class="row">

    <div class="col-12">
        <div class="card card-primary card-tabs">
            <div class="card-header p-0 pt-1">
                <ul class="nav nav-tabs" id="custom-tabs-two-tab" role="tablist">
                    <li class="pt-2 px-3"><h3 class="card-title"><i class="fas fa-edit"></i> Agregar ITEM</h3></li>
                    <li class="nav-item">
                        <a class="nav-link active" id="tabs-product-tab" data-toggle="pill" href="#tabs-product" role="tab" aria-controls="custom-tabs-two-home" aria-selected="true">Producto</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="tabs-barcode-tab" data-toggle="pill" href="#tabs-barcode" role="tab" aria-controls="tabs-barcode" aria-selected="false">Codigo SKU / EAN</a>
                    </li>
                    
                </ul>
            </div>
            <div class="card-body">
            <div class="tab-content" id="custom-tabs-two-tabContent">
                <div class="tab-pane fade show active" id="tabs-product" role="tabpanel" aria-labelledby="tabs-product-tab">
                    <form action="{{ route('inputline.store') }}" method="POST" id="form-add-product">
                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                        <input type="hidden" name="token" value="{{ $token }}">
                        <div class="row">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Producto</label>
                                    <select name="product_id" id="add-product-name" class="form-control select2">

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Cantidad</label>
                                    <div class="input-group mb-3">
                                        <input type="text" name="qty" id="qty" class="form-control" placeholder="0.00" aria-label="Recipient's username" aria-describedby="button-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="submit" id="button-addon2">Button</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="tab-pane fade" id="tabs-barcode" role="tabpanel" aria-labelledby="custom-tabs-two-profile-tab">
                    <form action="" action="POST">
                        <div class="row">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Producto</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">Ingrese el codigo de barra .</small>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Cantidad</label>
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="button-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button" id="button-addon2">Button</button>
                                        </div>
                                    </div>
                                    <small id="emailHelp" class="form-text text-muted">Float.</small>
                                </div>
                            </div>
                        </div>
                    </form>
                
                </div>
                
            </div>
            </div>
            <!-- /.card -->
        </div>
    </div>
  </div>




<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
            <h3 class="card-title"><i class="fas fa-list"></i> Gestor de Lineas</h3>

            <div class="card-tools">
                <form action="{{ route('line.index') }}" method="GET" style="margin:0px;padding:0px;">
                    @csrf
                    <div class="input-group input-group-sm" style="width: 350px;">
                        <input type="text" name="q" class="form-control float-right" id="q" placeholder="Buscar..." value="{{ $q }}">
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                            <a href="{{ route('line.index') }}" class="btn btn-default"><i class="fas fa-sync"></i></a>
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
                        <th>Codigo</th>
                        <th>Descripcion</th>
                        <th>Cantidad</th>
                        <th>UM</th>
                        <th>Accion</th>
                    </tr>
                    </thead>
                    <tbody>
                        @foreach($result as $item)
                            <form action="{{ route('line.destroy',$item->id) }}" method="POST" class="forn-inline form-delete">
                                <tr>
                                    <td width="100">{{ $item->productcode }}</td>
                                    <td>{{ $item->productname }}</td>
                                    <td width="80">{{ $item->qty }}</td>
                                    <td width="80">{{ $item->umname }}</td>
                                    <td width="80">
                                    
                                        @method('delete')
                                        @csrf
                                        <a href="{{ route('line.edit',$item->id) }}"><i class="fas fa-edit"></i> Modificar </a> | 
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
            <form action="{{ route('input.update',0) }}" method="POST">
                @method('PUT')
                @csrf
                <input type="hidden" name="token" value="{{ $token }}">
                <div class="card-footer">
                    <a href="{{ route('input.index') }}" class="btn btn-danger"><i class="fas fa-times"></i> Cancelar</a>
                    <button type="submit" class="btn btn-primary float-right"><i class="fas fa-save"></i> Crear Documento</button>
                </div>
            </form>
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

    $.ajaxSetup({
        headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $('.select2').select2({
        ajax: {
            url: "{{ route('ajax.search.product') }}",
            type:'post',
            dataType: 'json',
            delay: 150,
            data: function (params) {
                return {
                    q: params.term, // search term
                    page: params.page
                };
            },
            cache: true
        },
        minimumInputLength: 1
    });
    
});

 
    
@if ($errors->any())
    @foreach ($errors->all() as $error)
        toastr.error('{{ $error }}');
    @endforeach
@endif

</script>
@endsection