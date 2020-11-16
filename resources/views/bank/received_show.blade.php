<div class="modal-header">
    <h5 class="modal-title">Pago RECIBIDO</h5>
    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
    <span aria-hidden="true">&times;</span>
    </button>
</div>
<div class="modal-body">
    <dl class="row">
        <dt class="col-sm-4">Socio de Negocio</dt>
        <dd class="col-sm-8">{{ $row->bpartner->bpartnername }}</dd>
        
        <dt class="col-sm-4">Cuenta/Caja</dt>
        <dd class="col-sm-8"></dd>
        
        <dt class="col-sm-4">Tipo Transaccion</dt>
        <dd class="col-sm-8">{{ $row->doctype }}</dd>
        
        <dt class="col-sm-4">Fecha Operacion</dt>
        <dd class="col-sm-8">{{ $row->datetrx }}</dd>
        
        <dt class="col-sm-4">Importe</dt>
        <dd class="col-sm-8">{{ $row->currency->isoname }}&nbsp;&nbsp;{{ number_format($row->amount,env(ROUND_DECIMAL_AMOUNT,2)) }}</dd>
        
        <dt class="col-sm-4">Nro Operacion</dt>
        <dd class="col-sm-8">{{ $row->documentno }}</dd>
        
        <dt class="col-sm-4">Oficina/Lugar</dt>
        <dd class="col-sm-8">{{ $row->office }}</dd>
        
        <dt class="col-sm-4">Observacion</dt>
        <dd class="col-sm-8">{{ $row->observation }}</dd>

    </dl>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
</div>