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
            <h3 class="card-title"> Configuracion POS <strong>[@if($mode=='new') NUEVO @else MODIFICAR @endif]</strong></h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            
                <div class="row">
                    <!-- Columa UNO -->
                    <div class="col-sm-8">
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">identificador</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="sequencername" name="sequencername" placeholder="Identificador" value="{{ old('sequencername',$row->sequencername) }}"  required>
                            </div>
                        </div>        
                    
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Serie</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="serial" name="serial" placeholder="Serie" value="{{ old('serial',$row->serial) }}"  required>
                            </div>
                        </div>        
                    
                             
                        
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-4 col-form-label">Tipo Documento</label>
                            <div class="col-sm-8">
                                <select name="line_id" id="line_id" class="form-control select2-line" required>
                                    @if($mode=='new')
                                        <option>-- SELECCIONE --</option>
                                    @else
                                        <option value="{{ $row->line_id }}" selected>{{ $row->linename }}</option>
                                    @endif
                                </select>
                            </div>
                        </div>        

       
                    </div>
                    <!-- /.Columa UNO -->
                    <!-- Columa DOS -->
                    <div class="col-sm-4">
                       
                        <div class="form-group row">
                            <label for="inputName" class="col-sm-5 col-form-label">Ultimo Emitido</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" id="lastnumber" name="lastnumber" placeholder="Ultimo Numero" required>
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
      
 
         
      
        // Aqui configuramos los elementos select2
        //$('.select2-bpartner').select2('data', {id: '1049', text: 'C10402147164 - FUENTES MEZA ELI'});
        //$(".select2-bpartner").val("1").trigger("change")
        //$("#e6").val("input id of the select2 option here").trigger("change")
    });
    
     
        
    
    </script>
@endsection