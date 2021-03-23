//------------------------------------------------------------------------------------------
// Esta funcion es para eliminar un registro del maestro
// Se usan jquery + swal + toastr
$(function(){
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $('.confirm-delete').click(function(e){
        var id = $(this).data('id');
        Swal.fire({
            title: 'Estas seguro?',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Si, eliminar!'
        }).then((result) => {
            if(result.value){
                $.ajax({
                    url: $(this).data('url'),
                    type: 'DELETE',
                    dataType: "JSON",
                    processData: false,
                    contentType: false,
                    success: function (data, status){
                        if(data.status){
                            toastr.success(data.message)
                            $('#form-field-'+id).remove();
                        }else{
                            toastr.error(data.message)
                        }
                    },
                    error: function (xhr, desc, err){
                        toastr.error(err + ' + ' + desc)
                    }
                });    
            }
        });
    });
});