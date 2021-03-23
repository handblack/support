@extends('layouts.app')

@section('style')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('container')
<form class="form-horizontal" action="{{ route('query.kardex.result') }}" method="POST">
    @csrf
    <div class="card card-primary card-outline">
        <div class="card-header">
            <h3 class="card-title">Kardex - Criterio de busqueda</h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <div class="row">
                <div class="col-8">

                    <div class="form-group row">
                        <label for="inputName" class="col-sm-3 col-form-label">Producto</label>
                        <div class="col-sm-9">
                            <select name="product_id" id="product_id" class="form-control select2-product" required>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputName" class="col-sm-3 col-form-label">Rango ( Inicio / Final )</label>
                        <div class="col-sm-5">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                  <span class="input-group-text" id=""><i class="far fa-calendar-alt"></i></span>
                                </div>
                                <input type="text" class="form-control" id="dateinit" name="dateinit" value="2020-10-13">
                                <input type="text" class="form-control" id="dateend" name="dateend" value="2020-11-13">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">

                  

                </div>
            </div>           
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
            <div class="float-right">
                <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i> Consultar</button>
            </div>
        </div>
        <!-- /.card-footer -->
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

    $('.select2-product').select2({
        ajax: {
            url: '{{ route('ajax.search.product') }}',
            type:'post',
            dataType: 'json',
            delay: 250,
            
            allowClear: true,
            data: function (params) {
                return {
                    q: params.term, // search term
                    page: params.page
                };
            },
            cache: true
        },
        multiple: false,
        placeholder: 'Seleccion multiple',
        minimumInputLength: 0
    });

  
});  
</script>   
@endsection