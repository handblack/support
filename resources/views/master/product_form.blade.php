@extends('layouts.app')

@section('container')

@if($mode == 'new') 
<form class="form-horizontal" action="{{ route('product.store') }}" method="POST">
@elseif($mode == 'edit')
<form class="form-horizontal" action="{{ route('product.update',$row->id) }}" method="POST">
    <input type="hidden" name="_method" value="put">
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
                            <label for="inputName" class="col-sm-2 col-form-label">Codigo SKU</label>
                            <div class="col-sm-3">
                                <input type="text" class="form-control" id="sku" name="sku" placeholder="Codigo SKU" value="{{ old('sku',$row->sku) }}">
                            </div>
                        </div>        
                    
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-2 col-form-label">Producto</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="productname" name="productname" placeholder="Nombre del producto" value="{{ old('productname',$row->productname) }}">
                            </div>
                        </div>        
                    
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-2 col-form-label">Nombre de Corto</label>
                            <div class="col-sm-5">
                                <input type="email" class="form-control" id="inputName" placeholder="Name">
                            </div>
                        </div>        
                        
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-2 col-form-label">Linea</label>
                            <div class="col-sm-10">
                                <select name="" id="" class="form-control">
                                    @foreach ($lines as $item)
                                        <option value=""></option>
                                    @endforeach
                                </select>
                            </div>
                        </div>        

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-2 col-form-label">Sub Linea</label>
                            <div class="col-sm-10">
                                <select name="" id="" class="form-control">
                                    @foreach ($sublines as $item)
                                        <option value=""></option>
                                    @endforeach
                                </select>
                            </div>
                        </div> 

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-2 col-form-label">Familia</label>
                            <div class="col-sm-10">
                                <select name="" id="" class="form-control">
                                    @foreach ($families as $item)
                                        <option value=""></option>
                                    @endforeach
                                </select>
                            </div>
                        </div>  

                    </div>
                    <!-- /.Columa UNO -->
                    <!-- Columa DOS -->
                    <div class="col-sm-4">
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Stock Minimo</label>
                            <div class="col-sm-8">
                                <input type="email" class="form-control" id="inputName" placeholder="Name">
                            </div>
                        </div>        
                       
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Stock Maximo</label>
                            <div class="col-sm-8">
                                <input type="email" class="form-control" id="inputName" placeholder="Name">
                            </div>
                        </div>  

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Unidad de Medida</label>
                            <div class="col-sm-8">
                                <select name="" id="">
                                    @foreach ($ums as $item)
                                        <option value=""></option>
                                    @endforeach
                                </select>
                            </div>
                        </div>   

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Estado</label>
                            <div class="col-sm-8">
                                <select name="isactive" id="isactive" class="form-control">
                                    <option value="Y">ACTIVO</option>
                                    <option value="N">DESACTIVADO</option>
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