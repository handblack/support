@extends('layouts.app')

@section('container')
<section class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1>Nota de Ingreso</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">DashBoard</a></li>
                    <li class="breadcrumb-item active">Ingreso</li>
                </ol>
            </div>
        </div>
    </div><!-- /.container-fluid -->
</section>




 

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title"><i class="fas fa-list"></i> Gestor de SubLineas</h3>
        
                    <div class="card-tools">
                        <form action="{{ router('temp.index') }}" method="GET" style="margin:0px;padding:0px;">
                            <input type="hidden" name="_token" value="qmdHtuSFYoSzLpjpbAIZnquHo0iowgWs4KIzBilM">                    
                            <div class="input-group input-group-sm" style="width: 400px;">
                                <input type="text" name="q" class="form-control float-right" id="q" placeholder="Buscar..." value="">
                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                                    <a href="#" class="btn btn-default"><i class="fas fa-sync"></i> Actualizar </a>
                                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modal-additem"><i class="fas fa-plus"></i> Nuevo </a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body table-responsive p-0">
                    <table class="table table-hover text-nowrap table-sm" data-toggle="dataTable" data-form="deleteForm">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Descripcion</th>
                            <th>Estado</th>
                            <th>Accion</th>
                        </tr>
                        </thead>
                        <tbody>
                                                </tbody>
                        <tfoot>
                            <tr>
                                <td>  
                                    <div class="card-title">
                                    
                                    </div>
                                </td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                    <button> Procesar</button>
                </div>
            </div>
            <!-- /.card -->
        </div>
    </div>
    @include('move.modal_item_add')
@endsection

@section('script')
<script>
 $(function () {
    //Initialize Select2 Elements
    $('.select2').select2()
 });
</script>
@endsection