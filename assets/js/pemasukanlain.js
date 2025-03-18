$(document).ready(function () {
    tablePemasukanLain();
    $('#id').val('');
    $('#pemasukanForm').trigger("reset");
    
    
    $('#save-data').click(function (e) { 
        e.preventDefault();
        let id = $('#id').val(); // Cek apakah #id memiliki nilai
        let message = id ? "Data Berhasil Diupdate!" : "Data Berhasil Ditambahkan!";

        $.ajax({
            data: $('#pemasukanForm').serialize(),
            url: BASE_URL + "PemasukanLain/store",
            type: "POST",
            datatype: 'json',
            success: function(data) {
                $('#pemasukanForm').trigger("reset");
                $('#id').val(''); // Reset ID setelah submit
                alert(message);
                tablePemasukanLain();
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
            url: BASE_URL + "PemasukanLain/vedit/" + id,
            type: 'GET',
            dataType : 'json',            
            success: function (data) {
                console.log(data);
                $('#id').val(id);
                $('#kategori').val(data.kategori_id).trigger('change');
                $('#nominal').val(data.nominal);
                $('#keterangan').val(data.keterangan);
            }
        })
    })

});

function tablePemasukanLain() {
    $.ajax({
        url: BASE_URL + "PemasukanLain/tablePemasukanLain",
        type: "POST",
        success: function (data) {
            $('#div-table-pemasukan-lain').html(data);
            $('#tablePemasukanLain').DataTable({
                "processing": true,
                "responsive": true,
            });
        }
    });
}

$(document).on('click', '.delete-btn', function (event) {
    event.preventDefault(); // Mencegah link langsung dijalankan

    var url = $(this).attr('href'); // Ambil URL dari href

    // Konfirmasi sebelum menghapus
    if (confirm("Apakah Anda yakin ingin menghapus data ini?")) {
        window.location.href = url; // Jika dikonfirmasi, jalankan URL
    }
});
