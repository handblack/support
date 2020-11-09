<!-- Modal -->
<div class="modal fade" id="modal-additem" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-xl modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalCenterTitle">Agregar item</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                
                <form>
                    <div class="form-group row">
                      <label for="staticEmail" class="col-sm-2 col-form-label">Producto</label>
                      <div class="col-sm-10">
                        <select class="form-control select2" style="width: 100%;">
                        </select>
                      </div>
                    </div>
                    <div class="form-group row">
                      <label for="inputPassword" class="col-sm-2 col-form-label">Cantidad</label>
                      <div class="col-sm-2">
                        <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                      </div>
                    </div>
                  </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-primary">Agregar</button>
            </div>
        </div>
    </div>
</div>
<!-- /.Modal -->