@extends('layouts.app')

@section('container')

@if($mode == 'new') 
<form class="form-horizontal" action="{{ route('barcode.store') }}" method="POST">
@elseif($mode == 'edit')
<form class="form-horizontal" action="{{ route('barcode.update',$row->id) }}" method="POST">
    <input type="hidden" name="_method" value="put">
@endif    
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="card card-primary card-outline">
        <div class="card-header">
            <h3 class="card-title">Codigo de Barra <strong>[@if($mode=='new') NUEVO @else MODIFICAR @endif]</strong></h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            
            <div class="form-group row">
                <label for="inputName" class="col-sm-2 col-form-label">Codigo de Barra</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="barcode" name="barcode" placeholder="Codigo Barra" value="{{ old('barcode',$row->barcode) }}">
                </div>
            </div>        

            <div class="form-group row">
                <label for="inputName" class="col-sm-2 col-form-label">Estado</label>
                <div class="col-sm-5">
                    <select name="isactive" id="isactive" class="form-control">
                        <option value="Y" @if($row->isactive=='Y') selected @endif>ACTIVO</option>
                        <option value="N" @if($row->isactive=='N') selected @endif>DESACTIVADO</option>
                    </select>
                </div>
            </div>   
                
            
            
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
            <div class="float-right">
                <a href="{{ route('barcode.index') }}" class="btn btn-default"> <i class="fas fa-times"></i> Cancelar</a>
                <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Guardar</button>
            </div>
        </div>
        <!-- /.card-footer -->
</div>
</form>
@endsection