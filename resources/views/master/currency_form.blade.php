@extends('layouts.app')

@section('header')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('container')

@if($mode == 'new') 
<form class="form-horizontal needs-validation was-validated" action="{{ route('currency.store') }}" method="POST" novalidate>
    <input type="hidden" name="created_by" value="{{ Auth::id() }}">
@elseif($mode == 'edit')
<form class="form-horizontal" action="{{ route('currency.update',$row->id) }}" method="POST">
    <input type="hidden" name="_method" value="put">
    <input type="hidden" name="updated_by" value="{{ Auth::id() }}">
@endif    
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="card card-primary card-outline">
        <div class="card-header">
            <h3 class="card-title">Divisa/Moneda <strong>[@if($mode=='new') NUEVO @else MODIFICAR @endif]</strong></h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            
                <div class="row">
                    <!-- Columa UNO -->
                    <div class="col-sm-8">

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Denominacion de la divisa</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="productname" name="productname" placeholder="Nombre del producto" value="{{ old('currencyname',$row->currencyname) }}"  required>
                            </div>
                        </div>        

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Codigo ISO</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="productcode" name="productcode" placeholder="Codigo Producto" value="{{ old('isoname',$row->isoname) }}"  required>
                            </div>
                        </div>        
                    
                    
          
                        
 
                    </div>
                    <!-- /.Columa UNO -->
                    <!-- Columa DOS -->
                    <div class="col-sm-4">
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-5 col-form-label">Prefijo</label>
                            <div class="col-sm-7">
                                <input type="numeric" class="form-control" id="stk_min" name="stk_min" value="{{ old('prefix',$row->prefix) }}" placeholder="Prefijo">
                            </div>
                        </div>        
                       
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-5 col-form-label">Sufijo</label>
                            <div class="col-sm-7">
                                <input type="numeric" class="form-control" id="stk_max" name="stk_max" value="{{ old('suffix',$row->suffix) }}" placeholder="Sufijo">
                            </div>
                        </div>  

                    

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-5 col-form-label">Estado</label>
                            <div class="col-sm-7">
                                <select name="isactive" id="isactive" class="form-control">
                                    <option value="Y" @if($row->isactive=='Y') selected @endif>ACTIVO</option>
                                    <option value="N" @if($row->isactive=='N') selected @endif>DESACTIVADO</option>
                                </select>
                            </div>
                        </div>   

                        

                    </div>
                    <!-- /.Columa DOS -->
                </div>
            
            
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
            <div class="float-right">
                <a href="{{ route('currency.index') }}" class="btn btn-default"> <i class="fas fa-times"></i> Cancelar</a>
                <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Guardar</button>
            </div>
            
        </div>
        <!-- /.card-footer -->
</div>
</form>
@endsection

@section('script')
<script>
    $(function(){
   
        $.ajaxSetup({
            dataType: 'json',
            delay: 150,
            cache: true,
            headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
    
      
        $('.select2-line').select2({
            ajax: {
                type: 'post',
                url: '{{ route('ajax.search.product.line') }}',
                data: function (params) {
                    return {
                        q: params.term, 
                        page: params.page
                    };
                },
            },
            minimumInputLength: 0
        });
      
        $('.select2-subline').select2({
            ajax: {
                type: 'post',
                url: '{{ route('ajax.search.product.subline') }}',
                data: function (params) {
                    return {
                        q: params.term, 
                        page: params.page
                    };
                },
            },
            minimumInputLength: 0
        });
      
        $('.select2-family').select2({
            ajax: {
                type: 'post',
                url: '{{ route('ajax.search.product.family') }}',
                data: function (params) {
                    return {
                        q: params.term, 
                        page: params.page
                    };
                },
            },
            minimumInputLength: 0
        });
         
      
        // Aqui configuramos los elementos select2
        //$('.select2-bpartner').select2('data', {id: '1049', text: 'C10402147164 - FUENTES MEZA ELI'});
        //$(".select2-bpartner").val("1").trigger("change")
        //$("#e6").val("input id of the select2 option here").trigger("change")
    });
    
     
        
    
    </script>
@endsection