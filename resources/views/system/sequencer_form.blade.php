@extends('layouts.app')

@section('header')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection

@section('container')

@if($mode == 'new') 
<form class="form-horizontal needs-validation was-validated" action="{{ route('sequencer.store') }}" method="POST" novalidate>
    <input type="hidden" name="created_by" value="{{ Auth::id() }}">
@elseif($mode == 'edit')
<form class="form-horizontal" action="{{ route('sequencer.update',$row->id) }}" method="POST">
    <input type="hidden" name="_method" value="put">
    <input type="hidden" name="updated_by" value="{{ Auth::id() }}">
@endif    
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <div class="card card-primary card-outline">
        <div class="card-header">
            <h3 class="card-title">Serie <strong>[@if($mode=='new') NUEVO @else MODIFICAR @endif]</strong></h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            
                <div class="row">
                    <!-- Columa UNO -->
                    <div class="col-sm-7">
                        
                        
                        
                        
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Tipo Documento</label>
                            <div class="col-sm-8">
                                <select name="doctype_id" id="doctype_id" class="form-control" required>
                                    @if($mode=='new')
                                        <option disabled selected></option>
                                    @endif
                                    @foreach ($doctype as $item)
                                        <option value="{{ $item->id }}" {{ ($item->id == $row->doctype_id ) ? 'selected' : '' }}>{{ $item->doctypename }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>        
                        
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Identificador</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="sequencername" name="sequencername" placeholder="Identificador" value="{{ old('sequencername',$row->sequencername) }}"  required>
                            </div>
                        </div>  

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">CodSunat</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="codsunat" name="codsunat" placeholder="CodSunat" value="{{ old('codsunat',$row->codsunat) }}" >
                            </div>
                        </div>        
       
                    </div>
                    <!-- /.Columa UNO -->
                    <!-- Columa DOS -->
                    <div class="col-sm-5">
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-5 col-form-label">Serie</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" id="serial" name="serial" placeholder="Serie" value="{{ old('serial',$row->serial) }}" maxlength="4" required>
                            </div>
                        </div>  
                       
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-5 col-form-label">Ultimo Emitido</label>
                            <div class="col-sm-7">
                                <input type="number" class="form-control text-right" id="lastnumber" name="lastnumber" value="{{ old('lastnumber',$row->lastnumber) }}" placeholder="Ultimo Numero" required>
                            </div>
                        </div>  

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-5 col-form-label">FEX</label>
                            <div class="col-sm-7">
                                <select name="isfex" id="isfex" class="form-control">
                                    <option value="Y" @if($row->isfex=='Y') selected @endif>ACTIVO</option>
                                    <option value="N" @if($row->isfex=='N') selected @endif>DESACTIVADO</option>
                                </select>
                            </div>
                        </div> 

                        <div class="form-group row">
                            <label for="inputName" class="col-sm-5 col-form-label">Estado</label>
                            <div class="col-sm-7">
                                <select name="isactive" id="isactive" class="form-control">
                                    <option value="Y" @if($row->isactive=='Y') selected @endif>ACTIVO</option>
                                    <option value="N" @if($row->isactive=='N') selected @endif>DESACTIVADO</option>
                                </select>
                            </div>
                        </div>   

                        

                    </div>
                    <!-- /.Columa DOS -->
                </div>
            
            
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
            <div class="float-right">
                <a href="{{ route('sequencer.index') }}" class="btn btn-default"> <i class="fas fa-times"></i> Cancelar</a>
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
    
      
        $('.select2-line').select2({
            ajax: {
                type: 'post',
                url: '{{ route('ajax.search.product.line') }}',
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