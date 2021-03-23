@extends('layouts.app')


@section('style')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('container')
<div class="row">
    <div class="col-12">
      



        <form class="form-horizontal" action="{{ route('query.stock.result') }}" method="POST">

            @csrf
            <div class="card card-primary card-outline">
                <div class="card-header">
                    <h3 class="card-title">Consulta de STOCK</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <div class="row">
                        <div class="col-8">

                            <div class="form-group row">
                                <label for="inputName" class="col-sm-2 col-form-label">Almacen</label>
                                <div class="col-sm-10">
                                    <select name="warehouse_id[]" id="warehouse_id" class="form-control select2-warehouse"></select>                                    
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputName" class="col-sm-2 col-form-label">Linea</label>
                                <div class="col-sm-10">
                                    <select name="line_id" id="warehouse_id" class="form-control select2-line"></select> 
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputName" class="col-sm-2 col-form-label">SubLinea</label>
                                <div class="col-sm-10">
                                    <select name="subline_id" id="warehouse_id" class="form-control select2-subline"></select> 
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputName" class="col-sm-2 col-form-label">Familia</label>
                                <div class="col-sm-10">
                                    <select name="family_id" id="warehouse_id" class="form-control select2-family"></select> 
                                </div>
                            </div>


                        </div>
                        <div class="col-4">

                            <div class="form-group row">
                                <label for="inputName" class="col-sm-4 col-form-label">Fecha Inicial</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="dateinit" name="dateinit" placeholder="DD/MM/YYYY" value="{{ date("Y-m-d") }}">
                                </div>
                            </div>  
                            <div class="form-group row">
                                <label for="inputName" class="col-sm-4 col-form-label">Fecha Final</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="dateend" name="dateend" placeholder="DD/MM/YYYY" value="{{ date("Y-m-d") }}">
                                </div>
                            </div>  
                            <div class="form-group row">
                                <label for="inputName" class="col-sm-4 col-form-label">Criterio de busqueda</label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" id="datetrx" name="datetrx" placeholder="ProductName" value="">
                                </div>
                            </div>  

                        </div>
                    </div>



                    

                    
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                    <div class="float-right">
                        <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Consultar</button>
                    </div>
                </div>
                <!-- /.card-footer -->
            </div>
      
        </form>


     
      <!-- /.invoice -->
    </div><!-- /.col -->
  </div>
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
            url: '{{ route('ajax.search.warehouse') }}',
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
        multiple: true,
        placeholder: 'Seleccion multiple',
        minimumInputLength: 0
    });

  
});
</script>
@endsection