<!-- Aqui trabajos las ventanas modales -->
<div class="modal fade" id="modal-payment">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
            <h4 class="modal-title">Forma de Pago</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-5">
                            <div class="card card-primary card-outline card-outline-tabs">
                                <div class="card-header p-0 border-bottom-0">
                                    <ul class="nav nav-tabs" id="custom-tabs-four-tab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link active" 
                                                id="payment-tabs-efe-tab" 
                                                data-toggle="pill" 
                                                href="#payment-tabs-efe" 
                                                role="tab" 
                                                aria-controls="payment-tabs-efe" 
                                                aria-selected="true">
                                                <i class="far fa-money-bill-alt"></i> EFE   
                                            </a>
                                        </li>

                                        <li class="nav-item">
                                            <a class="nav-link" 
                                                id="payment-tabs-card-tab" 
                                                data-toggle="pill" 
                                                href="#payment-tabs-card" 
                                                role="tab" 
                                                aria-controls="payment-tabs-card" 
                                                aria-selected="true">
                                                
                                                <i class="far fa-credit-card"></i> Tarjeta
                                            </a>
                                        </li>

                                        <li class="nav-item">
                                            <a class="nav-link" 
                                                id="payment-tabs-trans-tab" 
                                                data-toggle="pill" 
                                                href="#payment-tabs-trans" 
                                                role="tab" 
                                                aria-controls="payment-tabs-trans" 
                                                aria-selected="true">
                                                <i class="fas fa-money-check"></i> Transfer
                                            </a>
                                        </li>

                                        <li class="nav-item">
                                            <a class="nav-link" 
                                                id="payment-tabs-credit-tab" 
                                                data-toggle="pill" 
                                                href="#payment-tabs-credit" 
                                                role="tab" 
                                                aria-controls="payment-tabs-credit" 
                                                aria-selected="true">
                                                <i class="far fa-file-alt"></i> Nota Credito   
                                            </a>
                                        </li>

                                       
                                    </ul>
                                </div>
                                <div class="card-body">
                                    <div class="tab-content" id="custom-tabs-four-tabContent">
                                        <!-- EFECTIVO -->
                                        <div class="tab-pane fade active show" id="payment-tabs-efe" role="tabpanel" aria-labelledby="payment-tabs-efe-tab">
                                            <form>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Importe Cobrado</label>
                                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputPassword1">Importe Abierto</label>
                                                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Password" disabled>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputPassword1">Vuelto</label>
                                                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Password" disabled>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Agregar EFE</button>
                                            </form>
                                        </div>
                                        <!-- TARJETA -->
                                        <div class="tab-pane fade" id="payment-tabs-card" role="tabpanel" aria-labelledby="payment-tabs-card-tab">
                                            <form>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Tipo de Tarjeta</label>
                                                    <select name="" id="" class="form-control">
                                                        <option value="">VISA</option>
                                                        <option value="">MASTERCARD</option>
                                                        <option value="">DINNER</option>
                                                        <option value="">AMERICAN XPRESS</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputPassword1">Numero Tarjeta</label>
                                                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Password" disabled>
                                                    <small id="emailHelp" class="form-text text-muted">Ingresar los 4 ultimos numeros.</small>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputPassword1">Importe</label>
                                                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Password" disabled>
                                                </div>
                                                <button type="submit" class="btn btn-primary">Agregar Tarjeta</button>
                                            </form>
                                        </div>
                                        <!-- TRANSFERENCIA -->
                                        <div class="tab-pane fade" id="payment-tabs-trans" role="tabpanel" aria-labelledby="payment-tabs-trans-tab">
                                            <form>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Fecha Operacion</label>
                                                    <select name="" id="" class="form-control">
                                                        
                                                    </select>
                                                </div>
                                               
                                                <div class="form-group">
                                                    <label for="exampleInputPassword1">Nro de Operacion</label>
                                                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                                    <small id="emailHelp" class="form-text text-muted">Voucher de transaccion del banco.</small>
                                                </div>

                                                <div class="form-group">
                                                    <label for="exampleInputPassword1">Importe</label>
                                                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                                </div>
                                                <button type="submit" class="btn btn-primary">Agregar Tarjeta</button>
                                            </form>
                                        </div>
                                        <!-- NOTA DE CREDITO -->
                                        <div class="tab-pane fade" id="payment-tabs-credit" role="tabpanel" aria-labelledby="payment-tabs-credit-tab">
                                            <form>
                                                <div class="form-group">
                                                    <label for="exampleInputEmail1">Nota de Credito</label>
                                                    <select name="" id="" class="form-control">
                                                        
                                                    </select>
                                                </div>
                                               
                                                <div class="form-group">
                                                    <label for="exampleInputPassword1">Aplicar Importe</label>
                                                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                                </div>
                                                <button type="submit" class="btn btn-primary">Agregar Tarjeta</button>
                                            </form>
                                        </div>
                                        <div class="tab-pane fade" id="custom-tabs-four-settings" role="tabpanel" aria-labelledby="custom-tabs-four-settings-tab">
                                            Pellentesque vestibulum commodo nibh nec blandit. Maecenas neque magna, iaculis tempus turpis ac, ornare sodales tellus. Mauris eget blandit dolor. Quisque tincidunt venenatis vulputate. Morbi euismod molestie tristique. Vestibulum consectetur dolor a vestibulum pharetra. Donec interdum placerat urna nec pharetra. Etiam eget dapibus orci, eget aliquet urna. Nunc at consequat diam. Nunc et felis ut nisl commodo dignissim. In hac habitasse platea dictumst. Praesent imperdiet accumsan ex sit amet facilisis. 
                                        </div>
                                    </div>
                                </div>
                                <!-- /.card -->
                            </div>
                    </div>
                    <div class="col-7">
                        <div class="card">
                            <div class="card-header card-primary">
                                Detalle de MEDIOS DE PAGOS
                            </div>
                            <div class="card-body table-responsive p-0">
                                <table class="table table-striped table-valign-middle table-sm">
                                    <thead>
                                        <tr>
                                            <th>CONCEPTOS</th>
                                            <th class="text-right">Importe</th>
                                            <th>Accion</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>GRUPO SBF PERU SAC</td>
                                            <td class="text-right" style="width:100px;">0.00</td>
                                            <td style="width:70px">
                                                <a href="#" class="text-muted">&nbsp;&nbsp;<i class="fas fa-trash"></i>&nbsp;&nbsp;</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>GRUPO SBF PERU SAC</td>
                                            <td class="text-right" style="width:100px;">0.00</td>
                                            <td style="width:70px">
                                                <a href="#" class="text-muted">&nbsp;&nbsp;<i class="fas fa-trash"></i>&nbsp;&nbsp;</a>
                                            </td>
                                        </tr>
                                                            
                                                           
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <table class="table table-striped table-valign-middle table-sm">
                            <tbody>
                                <tr>
                                    <td>Total Doc</td>
                                    <td>Pagado</td>
                                    <td>Diferencia</td>
                                </tr>
                                <tr>
                                    <td class="text-right">0.00</td>
                                    <td class="text-right">0.00</td>
                                    <td class="text-right">0.00</td>
                                </tr>
                            </tbody>
                        </table>
                        
                    </div>
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-primary">Crear Comprobante</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->