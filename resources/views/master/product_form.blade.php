@extends('layouts.app')

@section('header')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('container')

@if($mode == 'new') 
<form class="form-horizontal needs-validation was-validated" action="{{ route('product.store') }}" method="POST" novalidate>
    <input type="hidden" name="created_by" value="{{ Auth::id() }}">
@elseif($mode == 'edit')
<form class="form-horizontal" action="{{ route('product.update',$row->id) }}" method="POST">
    <input type="hidden" name="_method" value="put">
    <input type="hidden" name="updated_by" value="{{ Auth::id() }}">
@endif    
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="card card-primary card-outline">
        <div class="card-header">
            <h3 class="card-title">Producto <strong>[@if($mode=='new') NUEVO @else MODIFICAR @endif]</strong></h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            
                <div class="row">
                    <!-- Columa UNO -->
                    <div class="col-sm-8">
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Codigo del Producto</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="productcode" name="productcode" placeholder="Codigo Producto" value="{{ old('sku',$row->productcode) }}"  required>
                            </div>
                        </div>        
                    
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Descripcion Producto</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="productname" name="productname" placeholder="Nombre del producto" value="{{ old('productname',$row->productname) }}"  required>
                            </div>
                        </div>        
                    
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Nombre de Corto</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="shortname" name="shortname" placeholder="Descrip corta">
                            </div>
                        </div>        
                        
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Linea</label>
                            <div class="col-sm-8">
                                <select name="line_id" id="line_id" class="form-control select2-line" required>
                                    @if($mode=='new')
                                        <option>-- SELECCIONE --</option>
                                    @else
                                        <option value="{{ $row->line_id }}" selected>{{ $row->linename }}</option>
                                    @endif
                                </select>
                            </div>
                        </div>        

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Sub Linea</label>
                            <div class="col-sm-8">
                                <select name="subline_id" id="subline_id" class="form-control select2-subline" required>
                                    @if($mode=='new')
                                        <option>-- SELECCIONE --</option>
                                    @else
                                        <option value="{{ $row->subline_id }}" selected>{{ $row->sublinename }}</option>
                                    @endif
                                </select>
                            </div>
                        </div> 

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Familia</label>
                            <div class="col-sm-8">
                                <select name="family_id" id="family_id" class="form-control select2-family" required>
                                    @if($mode=='new')
                                        <option>-- SELECCIONE --</option>
                                    @else
                                        <option value="{{ $row->family_id }}" selected>{{ $row->familyname }}</option>
                                    @endif
                                </select>
                            </div>
                        </div>  
                    </div>
                    <!-- /.Columa UNO -->
                    <!-- Columa DOS -->
                    <div class="col-sm-4">
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-5 col-form-label">Stock Minimo</label>
                            <div class="col-sm-7">
                                <input type="numeric" class="form-control text-right" id="stk_min" name="stk_min" value="{{ old('stk_min',$row->stk_min) }}" placeholder="Stock Minimo" required>
                            </div>
                        </div>        
                       
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-5 col-form-label">Stock Maximo</label>
                            <div class="col-sm-7">
                                <input type="numeric" class="form-control text-right" id="stk_max" name="stk_max" value="{{ old('stk_max',$row->stk_max) }}" placeholder="Stock Maximo" required>
                            </div>
                        </div>  

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-5 col-form-label">Unidad Medida</label>
                            <div class="col-sm-7">
                                <select name="um_id" id="um_id" class="form-control" required>
                                    @foreach ($ums as $item)
                                        <option value="{{ $item->id }}">{{ $item->umname }}</option>
                                    @endforeach
                                </select>
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
                <a href="{{ route('product.index') }}" class="btn btn-default"> <i class="fas fa-times"></i> Cancelar</a>
                <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Guardar</button>
            </div>
            <button type="reset" class="btn btn-default"><i class="fas fa-qrcode"></i> Codigo de Barra</button>
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