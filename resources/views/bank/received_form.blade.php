@extends('layouts.app')


@section('style')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('container')
<!-- Informacion de la cabecera -->
@if($mode == 'new') 
<form class="form-horizontal" action="{{ route('received.store') }}" method="POST">
@elseif($mode == 'edit')
<form class="form-horizontal" action="{{ route('received.update',$row->id) }}" method="POST">
    <input type="hidden" name="_method" value="put">
@endif    
    <input type="hidden" name="_token" value="{{ csrf_token() }}">

<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header" style="background-color: #007bff;color:#fff;">
                <h3 class="card-title">
                    <i class="fas fa-text-width"></i>
                    Pagos Recibidos
                </h3>
                
            </div>
            <!-- /.card-header -->
            <!-- card-body -->
            <div class="card-body" style="background-color: rgba(0,0,0,.03);">
                <div class="row">
                    <div class="col-7">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Socio de Negocio</label>
                            <select name="bpartner_id" id="bpartner_id" class="form-control select2-bpartner" required>
                                @if($mode == 'edit')
                                    <option value="{{ $row->bpartner_id }}">{{ $row->bpartnername }}</option>
                                @endif
                            </select>                            
                        </div>
                    </div>
                    <div class="col-5">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Caja/Cuenta Banco</label>
                            <select name="bank_id" id="bank_id" class="form-control select2-bank">
                                @if ($mode == 'edit')
                                    <option value="{{ $row->bank_id }}">{{ $row->bankname }}</option>                                    
                                @endif
                            </select>
                        </div>
                    </div>
                     

                </div>
                
            </div>
            <!-- /.card-body -->
            <div class="card-body">
                <div class="row">
                    <div class="col-6">
                        
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Fecha Transaccion</label>
                            <div class="col-sm-7">
                                <div class="input-group date" id="reservationdate" data-target-input="nearest">
                                    <input type="text" class="form-control" id="datetrx" name="datetrx" value="{{ old('datetrx',$row->datetrx) }}">
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Moneda / Importe</label>
                            <div class="col-sm-7">
                                <div class="input-group">
                                    <select name="currency_id" id="currency_id" class="custom-select">
                                        @foreach ($currency as $item)
                                            <option value="{{ $item->id }}" {{ ($item->id == $row->currency_id) ? ' selected' :'' }}>{{ $item->isoname }} </option>
                                        @endforeach
                                    </select>
                                    <div class="input-group-prepend" style="width:160px;">
                                        <input type="text" name="amount" id="amount" class="form-control text-right" placeholder="Importe" value="{{ old('amount',$row->amount) }}">
                                    </div>
                                </div>
                            </div>
                        </div>


 
                        
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Tipo de Cambio</label>
                            <div class="col-sm-5">
                                <input type="text" name="exchange" id="exchange" value="{{ number_format(old('exchange',$row->exchange),3) }}" class="form-control text-right">
                            </div>
                        </div>

                   


                        
                    </div>
                    <div class="col-6">
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Tipo de Transaccion</label>
                            <div class="col-sm-8">
                                <select name="doctype" id="doctype" class="form-control">
                                    <option value="EFE">EFE</option>
                                    <option value="CHE">CHE</option>
                                    <option value="TRA">TRA</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Nro Operacion</label>
                            <div class="col-sm-8">
                                <input type="text" name="documentno" value="{{ old('documentno',$row->documentno) }}" class="form-control" required>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Oficina/Lugar</label>
                            <div class="col-sm-8">
                                <input type="text" name="office" value="{{ old('office',$row->office) }}" class="form-control" placeholder="Opcional">
                            </div>
                        </div>
                        
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Observacion</label>
                            <div class="col-sm-8">
                                <input type="text" name="observation" value="{{ old('observation',$row->observation) }}" class="form-control" placeholder="Opcional">
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- /.card-body -->
            <div class="card-footer">
                <a href="{{ route('received.index') }}" class="btn btn-danger"><i class="fas fa-times"></i> Cancelar</a>
                <button type="submit" class="btn btn-primary float-right"><i class="fas fa-save"></i> Procesar</button>
            </div>
        
        </div>
    </div>
</div>
</form>



<!-- Modal -->
<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Confirmacion de eliminar</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
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

 
@endsection

@section('script')
<script>
$(document).ready(function() {

 

   
    $('#datetrx').daterangepicker({
        singleDatePicker: true,
        showDropdowns: true,
        locale:{format: 'YYYY-MM-DD'}
    });

    $('table[data-form="deleteForm"]').on('click', '.form-delete', function(e){
        e.preventDefault();
        var $form=$(this);
        $('#confirm-delete').modal({ backdrop: 'static', keyboard: false })
                .on('click', '#delete-btn', function(){
                    $form.submit();
                });
    });

    $.ajaxSetup({
        headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $('.select2').select2({
        ajax: {
            url: "{{ route('ajax.search.product') }}",
            type:'post',
            dataType: 'json',
            delay: 150,
            data: function (params) {
                return {
                    q: params.term, // search term
                    page: params.page
                };
            },
            cache: true
        },
        minimumInputLength: 1
    });

    $('.select2-bpartner').select2({
        ajax: {
            url: "{{ route('ajax.search.bpartner') }}",
            type:'post',
            dataType: 'json',
            delay: 150,
            data: function (params) {
                return {
                    q: params.term, // search term
                    page: params.page
                };
            },
            cache: true
        },
        minimumInputLength: 1
    });

    $('.select2-currency').select2({
        ajax: {
            url: "{{ route('ajax.search.currency') }}",
            type:'post',
            dataType: 'json',
            delay: 150,
            data: function (params) {
                return {
                    q: params.term, // search term
                    page: params.page
                };
            },
            cache: true
        },
        minimumInputLength: 0
    });

    $('.select2-bank').select2({
        ajax: {
            url: "{{ route('ajax.search.bank') }}",
            type:'post',
            dataType: 'json',
            delay: 150,
            data: function (params) {
                return {
                    q: params.term,
                    page: params.page
                };
            },
            cache: true
        },
        minimumInputLength: 0
    });

});

 
    
@if ($errors->any())
    @foreach ($errors->all() as $error)
        toastr.error('{{ $error }}');
    @endforeach
@endif

</script>
@endsection