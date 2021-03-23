@extends('layouts.app')

@section('container')

<div class="row">
    <div class="col-12">
      <div class="row">
<div class="col-12">
  <div class="card">
      <div class="card-header">
      <h3 class="card-title"><i class="fas fa-boxes"></i> Stock LIVE - <strong>{{ date("d/m/Y") }}</strong></h3>

      <div class="card-tools">
          <form action="http://almacen.localhost/move/input" method="GET" style="margin:0px;padding:0px;">
              <input type="hidden" name="_token" value="8f9mY2ZGk0AeGmFG1twD3q6SHEIDW8KOGXK5sbVY">                    <div class="input-group input-group-sm" style="width: 350px;">
                  <input type="text" name="q" class="form-control float-right" id="q" placeholder="Buscar..." value="">
                  <div class="input-group-append">
                      <button type="submit" class="btn btn-default"><i class="fas fa-search"></i></button>
                      <a href="http://almacen.localhost/move/input" class="btn btn-default"><i class="fas fa-sync"></i> Actualizar </a>
                      <a href="http://almacen.localhost/move/input/create" class="btn btn-primary"><i class="fas fa-plus"></i> Nuevo </a>
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
                  <th>Almacen</th>
                  <th>Codigo</th>
                  <th>Producto</th>
                  <th>Stock</th>
                  <th>UM</th>
                  <th>Linea</th>
                  <th>SubLinea</th>
                  <th>Familia</th>
              </tr>
              </thead>
              <tbody>
                    @foreach ($result as $item)
                        <tr>
                            <td>{{ $item->warehousecode }}</td>
                            <td>{{ $item->productcode }}</td>
                            <td>{{ $item->productname }}</td>
                            <td>{{ $item->stock }}</td>
                            <td>{{ $item->umname }}</td>
                            <td>{{ $item->linename }}</td>
                            <td>{{ $item->sublinename }}</td>
                            <td>{{ $item->familyname }}</td>
                        </tr>
                    @endforeach
                                               
                         
                                               
                                              
                        
                      
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
          
      </div>
  </div>
<!-- /.card -->
</div>
</div>


<!-- Modal -->
<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog" role="document">
<div class="modal-content">
  <div class="modal-header">
    <h5 class="modal-title" id="exampleModalLabel">Confirmacion de eliminar</h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
      <span aria-hidden="true">×</span>
    </button>
  </div>
  <div class="modal-body">
      <p>Estas seguro, quieres eliminar?</p>
  </div>
  <div class="modal-footer">
      <button type="button" class="btn btn-primary" id="delete-btn"> Eliminar</button>
      <button type="button" class="btn btn-default" data-dismiss="modal"> Cancelar</button>
  </div>
</div>
</div>
</div>
<!-- /.Modal -->

<!-- Modal -->
<div class="modal fade" id="ajax-doc-view" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog  modal-dialog-centered modal-lg" role="document">
  <div class="modal-content ajax-doc-details">
       
  </div>
</div>
</div>
<!-- /.Modal -->




     
      <!-- /.invoice -->
    </div><!-- /.col -->
</div>

@endsection