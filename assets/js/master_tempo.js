$(document).ready(function() {
    tableMasterTempo();
    $('#id').val('');
    $('#masterTempoForm').trigger("reset");
    
    $('#save-data').click(function (e) { 
        e.preventDefault();

        // Swal.fire({
        //     icon: 'info',
        //     title: 'Data Sedang diproses',
        //     showConfirmButton: false,
        //     // timer: 3000
        // })

        $.ajax({
            data: $('#masterTempoForm').serialize(),
            url: BASE_URL + "Master_tempo/store",
            type: "POST",
            datatype: 'json',
            success: function(data) {
                $('#masterTempoForm').trigger("reset");
                // Swal.fire({
                //     icon: 'success',
                //     title: 'Success',
                //     text: 'Data Berhasil disimpan',
                //     showConfirmButton: false,
                //     timer: 1500
                // })
                tableMasterTempo();
            },
            error: function(data) {
                console.log('Error:', data);
                $('$save-data').html('Simpan Data');
            }
        });
     })

     $('body').on('click','.edit',function (e) {
        var id = $(this).data('id');
        $.ajax({
            url: BASE_URL + "Master_tempo/vedit/" + id,
            type: 'GET',
            dataType : 'json',            
            success: function (data) {
                console.log(data);
                $('#id').val(id);
                $('#bulan').val(data.tempo);
                $('#prosentase').val(data.prosentase);
                
            }
        })
    })


});

function tableMasterTempo() {
    $.ajax({
        url: BASE_URL + "Master_tempo/tableMasterTempo",
        type: "POST",
        success: function (data) {
            $('#div-table-master-tempo').html(data);
            $('#tableMasterTempo').DataTable({
                "processing": true,
                "responsive": true,
            });
        }
    });
}
