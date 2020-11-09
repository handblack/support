@extends('layouts.app')

@section('style')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('container')



@if($mode == 'new') 
<form class="form-horizontal" action="{{ route('input.store') }}" method="POST">
@elseif($mode == 'edit')
<form class="form-horizontal" action="{{ route('input.update',$row->id) }}" method="POST">
    <input type="hidden" name="_method" value="put">
@endif    
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card card-primary card-outline">
                <div class="card-header">
                    <h3 class="card-title">Nota de INGRESO <strong>[@if($mode=='new') NUEVO @else MODIFICAR @endif]</strong></h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    
                    <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Fecha Emision</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="datetrx" name="datetrx" placeholder="DD/MM/YYYY" value="{{ old('datetrx',date("Y-m-d")) }}">
                        </div>
                    </div>  

                    <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Almacen</label>
                        <div class="col-sm-10">
                            <select name="warehouse_id" id="warehouse_id" class="form-control select2-warehouse"></select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Socio de Negocio</label>
                        <div class="col-sm-10">
                            <select name="bpartner_id" id="bpartner_id" class="form-control select2-bpartner"></select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Motivo</label>
                        <div class="col-sm-10">
                            <select name="reason_id" id="reason_id" class="form-control select2-reason"></select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Orden de Servicio</label>
                        <div class="col-sm-3">
                            <input type="text" class="form-control" id="sublinename" name="sublinename" placeholder="Nombre del producto" value="{{ old('sublinename',$row->sublinename) }}">
                        </div>
                    </div>        

            
                        
                    
                    
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                    <div class="float-right">
                        <a href="{{ route('input.index') }}" class="btn btn-default"> <i class="fas fa-times"></i> Cancelar</a>
                        <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Siguiente</button>
                    </div>
                </div>
                <!-- /.card-footer -->
            </div>
        </div>
    </div>
</form>
@endsection


@section('script')
<script>
$(document).ready(function () {
    $.ajaxSetup({
        headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $('.select2-warehouse').select2({
        ajax: {
            url: "{{ route('ajax.search.warehouse') }}",
            type:'post',
            dataType: 'json',
            delay: 250,
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

    $('.select2-bpartner').select2({
        ajax: {
            url: "{{ route('ajax.search.bpartner') }}",
            type:'post',
            dataType: 'json',
            delay: 250,
            data: function (params) {
                return {
                    q: params.term, // search term
                    page: params.page
                };
            },
            cache: false
        },
        minimumInputLength: 0
    });

    $('.select2-reason').select2({
        ajax: {
            url: "{{ route('ajax.search.reason.input') }}",
            type:'post',
            dataType: 'json',
            delay: 250,
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
});


@if ($errors->any())
    @foreach ($errors->all() as $error)
    $(document).Toasts('create', {
        class: 'bg-danger', 
        title: 'Error de validacion',
        body: '{{ $error }}'
    });
    @endforeach
@endif
</script>
@endsection