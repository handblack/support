@extends('layouts.app')

@section('header')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('container')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
            <h3 class="card-title"><i class="fas fa-users nav-icon"></i> Gestor de Socio de Negocio</h3>

            <div class="card-tools">
                <form action="{{ route('bpartner.index') }}" method="GET" style="margin:0px;padding:0px;">
                    @csrf
                    <div class="input-group input-group-sm" style="width: 350px;">
                        <input type="text" name="q" class="form-control float-right" id="q" placeholder="Buscar..." value="{{ $q }}">
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                            <a href="{{ route('bpartner.index') }}" class="btn btn-default"><i class="fas fa-sync"></i> Actualizar </a>
                            <a href="{{ route('bpartner.create') }}" class="btn btn-primary"><i class="fas fa-plus"></i> Nuevo </a>
                        </div>
                    </div>
                </form>
            </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap table-sm table-borderless" data-toggle="dataTable" data-form="deleteForm">
                    <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Razon Social</th>
                        <th class="text-right">Credito</th>
                        <th>Estado</th>
                        <th>Accion</th>
                    </tr>
                    </thead>
                    <tbody>
                        @foreach($result as $item)
                            <form action="{{ route('bpartner.destroy',$item->id) }}" method="POST" class="forn-inline form-delete">
                                <tr id="form-field-{{ $item->id }}">
                                    <td width="125">{{ $item->bpartnercode }}</td>
                                    <td>{{ $item->bpartnername }}</td>
                                    <td class="text-right">{{ number_format($item->creditline,2) }}</td>
                                    <td>{{ $item->isactive }}</td>
                                    <td width="80">
                                        <a href="{{ route('bpartner.edit',$item->id) }}"><i class="fas fa-edit"></i> Modificar </a> | 
                                        <a href="#"  class="confirm-delete" data-id="{{ $item->id }}" data-url="{{ route('bpartner.destroy',$item->id) }}"><i class="far fa-trash-alt"></i> Eliminar</a>
                                    </td>
                                </tr>
                            </form>
                        @endforeach
                    </tbody>
                  
                </table>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                {{ $result->links('layouts.paginate') }}
            </div>
        </div>
      <!-- /.card -->
    </div>
</div>
@endsection

@section('script')
<script>
    @if (\Session::has('message'))
        toastr.info('{{ session('message') }}');
    @endif
</script>
@endsection
