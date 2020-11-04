@extends('layouts.app')

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
                            <input type="text" class="form-control" id="sublinename" name="sublinename" placeholder="Nombre del producto" value="{{ old('sublinename',$row->sublinename) }}">
                        </div>
                    </div>  

                    <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Almacen</label>
                        <div class="col-sm-10">
                            <select name="" id="" class="form-control">
                                <option value=""></option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Socio de Negocio</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="sublinename" name="sublinename" placeholder="Nombre del producto" value="{{ old('sublinename',$row->sublinename) }}">
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