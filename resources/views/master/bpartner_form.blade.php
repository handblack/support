@extends('layouts.app')

@section('container')



@if($mode == 'new') 
<form class="form-horizontal" action="{{ route('bpartner.store') }}" method="POST">
@elseif($mode == 'edit')
<form class="form-horizontal" action="{{ route('bpartner.update',$row->id) }}" method="POST">
    <input type="hidden" name="_method" value="put">
@endif    
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="card card-primary card-outline">
        <div class="card-header">
            <h3 class="card-title">Socio de Negocio <strong>[@if($mode=='new') NUEVO @else MODIFICAR @endif]</strong></h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <div class="row">
                <!-- COL UNO -->
                <div class="col-md-8">
                    <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Razon Social</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="bpartnername" name="bpartnername" placeholder="Socio de Negocio" value="{{ old('bpartnername',$row->bpartnername) }}">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label">Nombre Comercial</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="shortname" name="shortname" placeholder="Nombre Corto" value="{{ old('shortname',$row->shortname) }}">
                        </div>
                    </div>   
                </div>
                <!-- COL DOS -->
                <div class="col-md-4">
                    <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">Codigo SN</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="bpartnercode" name="bpartnercode" placeholder="Codigo" value="{{ old('bpartnercode',$row->bpartnercode) }}">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">Tipo Documento</label>
                        <div class="col-sm-8">
                            <select name="" id="" class="form-control">
                                <option value="">RUC</option>
                                <option value="">DNI</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">Numero Documento</label>
                        <div class="col-sm-8">
                            <input type="text" class="form-control" id="documentno" name="documentno" placeholder="Numero Documento" value="{{ old('documentno',$row->documentno) }}">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">Estado</label>
                        <div class="col-sm-8">
                            <select name="isactive" id="isactive" class="form-control">
                                <option value="Y" @if($row->isactive=='Y') selected @endif>ACTIVO</option>
                                <option value="N" @if($row->isactive=='N') selected @endif>DESACTIVADO</option>
                            </select>
                        </div>
                    </div>   
                </div>
            </div>

                

                
            
            
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
            <div class="float-right">
                <a href="{{ route('bpartner.index') }}" class="btn btn-default"> <i class="fas fa-times"></i> Cancelar</a>
                <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Guardar</button>
            </div>
        </div>
        <!-- /.card-footer -->
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