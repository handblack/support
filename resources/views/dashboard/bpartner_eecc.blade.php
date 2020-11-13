@extends('layouts.app')
@section('header')
    <meta name="csrf-token" content="{{ csrf_token() }}">
@endsection
@section('container')
<form class="form-horizontal" action="{{ route('bpartner.eecc.result') }}" method="POST">
    @csrf         
    <div class="card card-primary card-outline">
        <div class="card-header">
            <h3 class="card-title">Socio de Negocio - Estado de Cuenta</h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <div class="row">
                <div class="col-8">

                    <div class="form-group row">
                        <label for="inputName" class="col-sm-3 col-form-label">Socio de Negocio</label>
                        <div class="col-sm-9">
                            <select name="bpartner_id" id="bpartner_id" class="form-control select2-bpartner">
                                @if($bpartner->id)
                                    <option value="{{ $bpartner->id }}">{{ $bpartner->bpartnername }}</option>
                                @endif
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputName" class="col-sm-3 col-form-label">Rango ( Inicio / Final )</label>
                        <div class="col-sm-5">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                  <span class="input-group-text" id=""><i class="far fa-calendar-alt"></i></span>
                                </div>
                                <input type="text" class="form-control" id="dateinit" name="dateinit" value="{{ $dateinit }}">
                                <input type="text" class="form-control" id="dateend" name="dateend" value="{{ $dateend }}">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">

                  

                </div>
            </div>



            

            
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
            <div class="float-right">
                <button type="submit" class="btn btn-primary"><i class="fas fa-search"></i> Consultar</button>
            </div>
        </div>
        <!-- /.card-footer -->
    </div>

</form>
@endsection


@section('script')
<script>
    $(function(){
        $('#dateinit, #dateend').daterangepicker({
            singleDatePicker: true,
            showDropdowns: true,
            minYear: 2020,
            maxYear: parseInt(moment().format('YYYY'),10),
            locale: {
                format: 'YYYY-MM-DD'
            }
        }, function(start, end, label) {
            //var years = moment().diff(start, 'years');
            //alert("You are " + years + " years old!");
        });

        $.ajaxSetup({
            headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
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
    });   
</script>
@endsection