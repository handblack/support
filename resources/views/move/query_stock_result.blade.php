@extends('layouts.app')

@section('container')

<div class="row">
    <div class="col-12">
      <div class="row">
<div class="col-12">
  <div class="card">
      <div class="card-header">
      <h3 class="card-title"><i class="fas fa-boxes"></i> Ingreso de Productos/Mercaderia</h3>

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
                  <th>ID</th>
                  <th>Fecha</th>
                  <th>Socio de Negocio</th>
                  <th>Almacen</th>
                  <th>Motivo</th>
                  <th>Estado</th>
                  <th>Accion</th>
              </tr>
              </thead>
              <tbody>
                                              <form action="http://almacen.localhost/move/input/1" method="POST" class="forn-inline form-delete"></form>
                          <tr>
                              <td width="60">1</td>
                              <td width="100">2020-11-09</td>
                              <td>COMERCIAL PICHARA PERU SAC</td>
                              <td>ALMACEN PRINCIPAL</td>
                              <td>COMPRA</td>
                              <td>Y</td>
                              <td width="80">
                                  <input type="hidden" name="_method" value="delete">                                        <input type="hidden" name="_token" value="8f9mY2ZGk0AeGmFG1twD3q6SHEIDW8KOGXK5sbVY">                                        <a href="http://almacen.localhost/master/subline/1/edit" class="ajax-view" data-id="1" data-toggle="modal" data-target="#ajax-doc-view"><i class="fas fa-print"></i> Ver </a> | 
                                  <a href="#" data-toggle="modal" data-target="#confirm-delete"><i class="far fa-trash-alt"></i> Eliminar</a>
                              </td>
                          </tr>
                      
                                               
                                              
                        
                      
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