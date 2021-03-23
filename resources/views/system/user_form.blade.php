@extends('layouts.app')

@section('container')



@if($mode == 'new') 
<form class="form-horizontal" action="{{ route('users.store') }}" method="POST">
@elseif($mode == 'edit')
<form class="form-horizontal" action="{{ route('users.update',$row->id) }}" method="POST">
    <input type="hidden" name="_method" value="put">
@endif    
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="card card-primary card-outline">
        <div class="card-header">
            <div class="card-title"><i class="fas fa-user-shield"></i> Usuario <strong>[@if($mode=='new') NUEVO @else MODIFICAR @endif]</strong></div>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            
            <div class="form-group row">
                <label for="inputName" class="col-sm-2 col-form-label">Nombre de Usuario</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="name" name="name" placeholder="nombre.apellido" value="{{ old('name',$row->name) }}" required>
                </div>
            </div>

            <div class="form-group row">
                <label for="inputName" class="col-sm-2 col-form-label">Correo Electronico</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="email" name="email" placeholder="usuario@dominio.com" value="{{ old('email',$row->email) }}" required>
                </div>
            </div>  

            <div class="form-group row">
                <label for="inputName" class="col-sm-2 col-form-label">Contraseña</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="password" name="password" placeholder="" value="">
                </div>
            </div>  

            <div class="form-group row">
                <label for="inputName" class="col-sm-2 col-form-label">Perfil (Equipo)</label>
                <div class="col-sm-10">
                    <select name="current_team_id" id="current_team_id" class="form-control"  required>
                        @if($mode == 'new')
                            <option value="">-- SELECCIONE UNA OPCION --</option>
                        @endif
                        @foreach ($teams as $item)
                            <option value="{{ $item->id }}" @if($row->current_team_id == $item->id) selected @endif >{{ $item->name }}</option>
                        @endforeach
                    </select>
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
                <a href="{{ route('users.index') }}" class="btn btn-default"> <i class="fas fa-times"></i> Cancelar</a>
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

@if(session()->has('error'))
    Toastr.error('{{ session()->get('error') }}')
@endif
</script>
@endsection