<!-- Aqui trabajos las ventanas modales -->
<div class="modal fade" id="modal-payment">
    <div class="modal-dialog modal-xl" style="width:1140;">
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
                        <form id="form-payment">
                            <div class="card">
                                <div class="card-header" style="background-color:rgba(0,0,0,.03);">Medio de PAGO</div>
                                <div class="card-body">

                                    <div class="form-group row">
                                        <label for="staticEmail" class="col-sm-4 col-form-label">Forma de Pago</label>
                                        <div class="col-sm-8">
                                            <select class="form-control" name="payment_method_id" id="payment_method_id">
                                                @foreach ($medio_pago as $item)
                                                    <option value="{{ $item->id }}">{{ $item->pmname }}</option>
                                                @endforeach                   
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group row payment_class payment_group_2">
                                        <label for="staticEmail" class="col-sm-4 col-form-label">Tarjeta Credito</label>
                                        <div class="col-sm-8">
                                            <select class="form-control" name="card_id">
                                                @foreach ($medio_pago as $item)
                                                    <option value="{{ $item->id }}">{{ $item->pmname }}</option>
                                                @endforeach                   
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <div class="form-group row payment_class payment_group_2">
                                        <label for="staticEmail" class="col-sm-4 col-form-label">Numero Tarjeta</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" name="card_number">
                                            <small id="emailHelp" class="form-text text-muted">Ingresa los 4 ultimos digitos.</small>
                                        </div>
                                    </div>

                                    <div class="form-group row payment_class payment_group_3">
                                        <label for="staticEmail" class="col-sm-4 col-form-label">Cuenta Bancaria</label>
                                        <div class="col-sm-8">
                                            <select class="form-control" name="bankacccount_id">
                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group row payment_class  payment_group_3">
                                        <label for="staticEmail" class="col-sm-4 col-form-label">Nro Operacion</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control" name="documentope">
                                        </div>
                                    </div>
                                    
                                    
                                    <!-- NOTA DE CREDITO -->
                                    <div class="form-group row payment_class payment_group_4">
                                        <label for="staticEmail" class="col-sm-4 col-form-label">Nota de Credito</label>
                                        <div class="col-sm-8">
                                            <select name="return_id" id="" class="form-control">

                                            </select>
                                        </div>
                                    </div>

                                    <div class="form-group row payment_class payment_group_4">
                                        <label for="staticEmail" class="col-sm-4 col-form-label">Importe Abierto</label>
                                        <div class="col-sm-8">
                                            <input type="text" class="form-control text-right" value="0.00">
                                        </div>
                                    </div>

                                    <!-- CUPONES -->
                                    <div class="form-group row payment_class payment_group_5">
                                        <label for="staticEmail" class="col-sm-4 col-form-label">Codigo CUPON</label>
                                        <div class="col-sm-8">
                                            <input type="text" name="cuponno">
                                        </div>
                                    </div>

                                    <div class="form-group row payment_class payment_group_5">
                                        <label for="staticEmail" class="col-sm-4 col-form-label">Importe Abierto</label>
                                        <div class="col-sm-8">
                                            <input type="text" readonly class="form-control text-right" value="0.00">
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label for="staticEmail" class="col-sm-4 col-form-label">Importe a Cobrar</label>
                                        
                                        <div class="input-group mb-3 col-sm-8">
                                            <input type="text" class="form-control text-right" name="amount" id="amount" placeholder="Importe" aria-label="Importe" aria-describedby="basic-addon2">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary payment-btn-add" type="button">Agregar</button>
                                            </div>
                                        </div>
                                    </div>

                                    
                                      


                                </div>
                            
                            </div>
                        </form>

                             
                    </div>
                    <div class="col-7 " >
                        <div class="card">
                            <div class="card-header" style="background-color:rgba(0,0,0,.03);">
                                Detalle de MEDIOS DE PAGOS
                            </div>
                            <div class="card-body table-responsive p-0 voucher" style="font-size:13px;">
                                <table class="table  table-valign-middle table-sm payment-grilla-line" id="payment-grilla-line">
                                    <thead>
                                        <tr>
                                            <th>CONCEPTOS</th>
                                            <th class="text-right">Importe</th>
                                            <th></th>
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

                        <table class="table table-valign-middle table-sm table-bordered .payment-grilla-total" id="payment-grilla-total">
                            <tbody>
                                <tr>
                                    <td class="text-right">Total Doc</td>
                                    <td class="text-right">Pagado</td>
                                    <td class="text-right">Diferencia</td>
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
            <div class="modal-footer ">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                <button type="button" class="btn btn-primary">Crear Comprobante</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->