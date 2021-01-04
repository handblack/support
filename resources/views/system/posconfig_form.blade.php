@extends('layouts.app')

@section('header')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection




@section('container')

@if($mode == 'new') 
<form class="form-horizontal needs-validation was-validated" action="{{ route('posconfig.store') }}" method="POST" novalidate>
    <input type="hidden" name="created_by" value="{{ Auth::id() }}">
@elseif($mode == 'edit')
<form class="form-horizontal" action="{{ route('posconfig.update',$row->id) }}" method="POST">
    <input type="hidden" name="_method" value="put">
    <input type="hidden" name="updated_by" value="{{ Auth::id() }}">
@endif    
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="card card-primary card-outline">
        <div class="card-header">
            <h3 class="card-title"> Configuracion POS <strong>[@if($mode=='new') NUEVO @else MODIFICAR @endif]</strong></h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            
                <div class="row">
                    <!-- Columa UNO -->
                    <div class="col-sm-6">

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Identificador</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="posname" name="posname" placeholder="Identificador" value="{{ old('posname',$row->posname) }}"  required>
                            </div>
                        </div>        
                    
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Divisa</label>
                            <div class="col-sm-8">
                                <select class="form-control select2-currency" name="currency_id" id="currency_id" required>
                                    @if($row->currency)
                                        <option value="{{ $row->currency->id }}">{{ $row->currency->currencyname }}</option>
                                    @endif
                                </select>
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Almacen</label>
                            <div class="col-sm-8">
                                <select class="form-control select2-warehouse" name="warehouse_id" id="warehouse_id" required>
                                    @if($row->warehouse)
                                        <option value="{{ $row->warehouse->id }}">{{ $row->warehouse->warehousename }}</option>
                                    @endif
                                </select>
                            </div>
                        </div> 
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Movimiento Almacen</label>
                            <div class="col-sm-8">
                                <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success" style="padding-top:4px">
                                    <input type="checkbox" class="custom-control-input" id="ismovestock" name="ismovestock"  {{ ($row->ismovestock=='Y')? 'checked' : '' }}>
                                    <label class="custom-control-label" for="ismovestock">Genera movimientos en almacenes</label>
                                </div>
                            </div>
                        </div> 

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Crear Producto</label>
                            <div class="col-sm-8">
                                <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success" style="padding-top:4px">
                                    <input type="checkbox" class="custom-control-input" id="iscreateproduct" name="iscreateproduct"  {{ ($row->iscreateproduct=='Y')? 'checked' : '' }}>
                                    <label class="custom-control-label" for="iscreateproduct">Permite Crear product rapidamente</label>
                                </div>
                            </div>
                        </div> 

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Crear Socio de Negocio</label>
                            <div class="col-sm-8">
                                <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success" style="padding-top:4px">
                                    <input type="checkbox" class="custom-control-input" id="iscreatebpartner" name="iscreatebpartner"  {{ ($row->iscreatebpartner=='Y')? 'checked' : '' }}>
                                    <label class="custom-control-label" for="iscreatebpartner">Permite Crear Socio de Negocio</label>
                                </div>
                            </div>
                        </div> 

                      


                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Estado</label>
                            <div class="col-sm-8">
                                <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success" style="padding-top:4px">
                                    <input type="checkbox" class="custom-control-input" id="isactive" name="isactive"  {{ ($row->isactive=='Y')? 'checked' : '' }}>
                                    <label class="custom-control-label" for="isactive">Situacion del registro</label>
                                </div>
                            </div>
                        </div> 

                    </div> 
                    <!-- Columna DOS -->
                    <div class="col-6">
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Secuenciador Factura</label>
                            <div class="col-sm-6">
                                <select class="form-control select2-sequencer" name="sequencer_fac_id" id="sequencer_fac_id">
                                    @if($row->fac)
                                        <option value="{{ $row->fac->id }}">{{ $row->fac->sequencername }}</option>
                                    @endif
                                </select>
                            </div>
                        </div> 
                        
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Secuenciador Boleta</label>
                            <div class="col-sm-6">
                                <select class="form-control select2-sequencer" name="sequencer_bve_id" id="sequencer_bve_id">
                                    @if($row->bve)
                                        <option value="{{ $row->bve->id }}">{{ $row->bve->sequencername }}</option>
                                    @endif
                                </select>
                            </div>
                        </div> 
                        
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Secuenciador Debito</label>
                            <div class="col-sm-6">
                                <select class="form-control select2-sequencer" name="sequencer_ndb_id" id="sequencer_ndb_id">
                                    @if($row->ndb)
                                        <option value="{{ $row->ndb->id }}">{{ $row->ndb->sequencername }}</option>
                                    @endif
                                </select>
                            </div>
                        </div> 
                        
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Secuenciador Credito</label>
                            <div class="col-sm-6">
                                <select class="form-control select2-sequencer" name="sequencer_ncr_id" id="sequencer_ncr_id">
                                    @if($row->ncr)
                                        <option value="{{ $row->ncr->id }}">{{ $row->ncr->sequencername }}</option>
                                    @endif
                                </select>
                            </div>
                        </div> 
                        
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Secuenciador Almacen</label>
                            <div class="col-sm-6">
                                <select class="form-control select2-sequencer" name="sequencer_who_id" id="sequencer_who_id">
                                    @if($row->who)
                                        <option value="{{ $row->who->id }}">{{ $row->who->sequencername }}</option>
                                    @endif
                                </select>
                            </div>
                        </div> 
                    </div>       
                </div>        
            </div>        
          
     
        <!-- /.card-body -->
        <div class="card-footer">
            <div class="float-right">
                <a href="{{ route('posconfig.index') }}" class="btn btn-default"> <i class="fas fa-times"></i> Cancelar</a>
                <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Guardar</button>
            </div>
        </div>
        <!-- /.card-footer -->
</div>
</form>
@endsection

@section('script')
<script>
    $(function(){
   
        $.ajaxSetup({
            dataType: 'json',
            delay: 150,
            cache: true,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
    
      
        $('.select2-currency').select2({
            ajax: {
                type: 'post',
                url: '{{ route('ajax.search.currency') }}',
                data: function (params) {
                    return {
                        q: params.term, 
                        page: params.page
                    };
                },
            },
            minimumInputLength: 0
        });

        $('.select2-warehouse').select2({
            ajax: {
                type: 'post',
                url: '{{ route('ajax.search.warehouse') }}',
                data: function (params) {
                    return {
                        q: params.term, 
                        page: params.page
                    };
                },
            },
            minimumInputLength: 0
        });

        $('.select2-sequencer').select2({
            ajax: {
                type: 'post',
                url: '{{ route('ajax.search.sequencer') }}',
                data: function (params) {
                    return {
                        q: params.term, 
                        page: params.page
                    };
                },
            },
            minimumInputLength: 0
        });
      
        //Muestra los mensajes de error de validacion
        @if ($errors->any())
            @foreach ($errors->all() as $error)
                toastr.error('{{ $error }}');
            @endforeach
        @endif
 
         
      
        // Aqui configuramos los elementos select2
        //$('.select2-bpartner').select2('data', {id: '1049', text: 'C10402147164 - FUENTES MEZA ELI'});
        //$(".select2-bpartner").val("1").trigger("change")
        //$("#e6").val("input id of the select2 option here").trigger("change")
    });
    
     
        
    
    </script>
@endsection