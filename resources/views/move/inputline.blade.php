@extends('layouts.app')


@section('style')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('container')
<!-- Informacion de la cabecera -->
<form action="{{ route('inputline.store') }}" method="POST" id="form-add-product">
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <input type="hidden" name="token" value="{{ $token }}">
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header" style="background-color: #007bff;color:#fff;">
                <h3 class="card-title">
                    <i class="fas fa-text-width"></i>
                    Nota de Ingreso [NUEVO]
                </h3>
                <div class="card-tools">
                    <div class="input-group input-group-sm date" id="reservationdate" data-target-input="nearest">
                        <input type="text" name="datetrx" id="datetrx"  class="form-control datetimepicker-input" data-target="#reservationdate"  value="{{ old('datetrx', $datetrx) }}">
                        <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
                            <div class="input-group-text"><i class="far fa-calendar-alt"></i></div>
                        </div>
                    </div>
               
                   
                </div>
            </div>
            <!-- /.card-header -->
            <!-- card-body -->
            <div class="card-body" style="background-color: rgba(0,0,0,.03);">
                <div class="row">
                    <div class="col-6">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Socio de Negocio</label>
                            <select name="bpartner_id" id="bpartner_id" class="form-control select2-bpartner" required>
                                @if($bpartner['id'])
                                    <option value="{{ $bpartner['id'] }}" selected="selected">{{ $bpartner['text'] }}</option>
                                @endif
                            </select>                            
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Almacen</label>
                            <select name="warehouse_id" id="warehouse_id" class="form-control select2-warehouse" required>
                                @if($warehouse['id'])
                                    <option value="{{ $warehouse['id'] }}" selected="selected">{{ $warehouse['text'] }}</option>
                                @endif
                            </select>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Motivo</label>
                            <select name="reason_id" id="reason_id" class="form-control select2-reason" required>
                                @if($reason['id'])
                                    <option value="{{ $reason['id'] }}" selected="selected">{{ $reason['text'] }}</option>
                                @endif
                            </select>
                        </div>
                    </div>
                   
                </div>
                
            </div>
            <!-- /.card-body -->
            <div class="card-body">
                <div class="row">
                    <div class="col-12">

                        <div class="row">
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Producto</label>
                                    <select name="product_id" id="add-product-name" class="form-control select2" required>

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Cantidad / Precio Unitario</label>
                                    <div class="input-group">
                                        <div class="input-group telephone-input">
                                            <!-- Cantidad -->
                                            <div class="input-group-prepend preselection-prepend">
                                                <div class="input-group-text"><i class="fas fa-calculator"></i></div>
                                            </div>
                                            <input class="form-control text-right" id="qty" name="qty" type="text"   placeholder="Cantidad" autocomplete="off" required>
                                            <!-- Precio Unitario -->
                                            <input class="form-control text-right" id="price" name="price" placeholder="Precio Unit" type="text"  autocomplete="off" required>
                                            <!-- Pack -->
                                            <div class="input-group-prepend preselection-prepend">
                                                <div class="input-group-text"><i class="fas fa-cubes"></i></div>
                                            </div>
                                            <input class="form-control text-right" id="pack" name="pack" placeholder="Pack" type="text"  autocomplete="off" required>
                                            <div class="input-group-prepend preselection-prepend">
                                                <button type="submit" class="btn btn-primary">Agregar</button>
                                            </div>
                                             
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- /.card-body -->
        
        </div>
    </div>
</div>
</form>


<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title"><i class="fas fa-list"></i> Detalle(s)</h3>

                <div class="card-tools">
                    <form action="{{ route('inputline.index') }}" method="GET" style="margin:0px;padding:0px;">
                        @csrf
                        <div class="input-group input-group-sm" style="width: 250px;">
                            <input type="text" name="q" class="form-control float-right" id="q" placeholder="Buscar..." value="{{ $q }}">
                            <div class="input-group-append">
                                <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                                <a href="{{ route('inputline.index') }}" class="btn btn-default"><i class="fas fa-sync"></i></a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap table-sm  " data-toggle="dataTable" data-form="deleteForm">
                    <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Descripcion</th>
                        <th class="text-right">Cantidad</th>
                        <th>UM</th>
                        <th class="text-right">PRECIO</th>
                        <th class="text-right">TOTAL</th>
                        <th><i class="far fa-play-circle"></i> Accion</th>
                    </tr>
                    </thead>
                    <tbody>
                        @foreach($result as $item)
                        <tr>
                            <td>{{ $item->productcode }}</td>
                            <td>{{ $item->productname }}</td>
                            <td class="text-right">{{ number_format($item->qty, env('ROUND_DECIMAL_QTY', 4),) }}</td>
                            <td style="width:80px;">{{ $item->umshort }}</td>
                            <td style="width:80px;" class="text-right">{{ number_format($item->price, env('ROUND_DECIMAL_PRICE', 2),) }}</td>
                            <td class="text-right">{{ number_format($item->grandline, env('ROUND_DECIMAL_GRANDLINE', 2),) }}</td>
                            <td style="width:80px;">
                                <a href="{{ route('inputline.destroy',$item->id) }}" onclick="event.preventDefault(); document.getElementById('form-delete').submit();"><i class="far fa-trash-alt"></i> Eliminar</a>
                                <form action="{{ route('inputline.destroy',$item->id) }}" method="POST" id='form-delete' style="display:none;">
                                    @method('delete')
                                    {{ csrf_field() }}
                                </form>
                            </td>
                        </tr>
                             
                        @endforeach
                        <tr style="border-top:1px solid #dcdcdc;">
                            <td colspan="2"><strong>{{ $result->count('id') }} - items </strong></td>
                            <td class="text-right"><strong>{{ number_format($result->sum('qty'), env('ROUND_DECIMAL_QTY', 1),) }}</strong></td>
                            <td></td>
                            <td></td>
                            <td class="text-right"><strong>{{ number_format($result->sum('grandline'), env('ROUND_DECIMAL_AMOUNT', 1),) }}</strong></td>
                            <td></td>
                        </tr>
                    </tbody>
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
$(function(){
    $('input[name="datetrx"]').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true,
        minYear: 2020,
        maxYear: parseInt(moment().format('YYYY'),10),
        locale: {
            format: 'YYYY-MM-DD'
        }
    }, function(start, end, label) {
        //var years = moment().diff(start, 'years');
        //alert("You are " + years + " years old!");
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

    $('.select2-bpartner').select2({
        ajax: {
            url: "{{ route('ajax.search.bpartner') }}",
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
    $('.select2-warehouse').select2({
        ajax: {
            url: "{{ route('ajax.search.warehouse') }}",
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
        minimumInputLength: 0
    });
    $('.select2-reason').select2({
        ajax: {
            url: "{{ route('ajax.search.reason.input') }}",
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
        minimumInputLength: 0
    });
    // Aqui configuramos los elementos select2
    //$('.select2-bpartner').select2('data', {id: '1049', text: 'C10402147164 - FUENTES MEZA ELI'});
    //$(".select2-bpartner").val("1").trigger("change")
    //$("#e6").val("input id of the select2 option here").trigger("change")
});

 
    
@if ($errors->any())
    @foreach ($errors->all() as $error)
        toastr.error('{{ $error }}');
    @endforeach
@endif

</script>
@endsection