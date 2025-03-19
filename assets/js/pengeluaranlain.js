$(document).ready(function () {
    tablePengeluaranLain();
    $('#id').val('');
    $('#pengeluaran').trigger("reset");
    
    
    $('#save-data').click(function (e) { 
        e.preventDefault();
        let id = $('#id').val(); // Cek apakah #id memiliki nilai
        let message = id ? "Data Berhasil Diupdate!" : "Data Berhasil Ditambahkan!";
    
        // Tambahkan konfirmasi sebelum menyimpan
        if (!confirm("Apakah Anda yakin ingin menyimpan data ini?")) {
            return; // Batalkan jika pengguna memilih "Batal"
        }
    
        $.ajax({
            data: $('#pengeluaran').serialize(),
            url: BASE_URL + "PengeluaranLain/store",
            type: "POST",
            datatype: 'json',
            success: function(data) {
                $('#pengeluaran').trigger("reset");
                $('#id').val(''); // Reset ID setelah submit
                alert(message);
                tablePengeluaranLain();
            },
            error: function(data) {
                console.log('Error:', data);
                $('#save-data').html('Simpan Data');
            }
        });
    });

     $('body').on('click','.edit',function (e) {
        var id = $(this).data('id');
        $.ajax({
            url: BASE_URL + "PengeluaranLain/vedit/" + id,
            type: 'GET',
            dataType : 'json',            
            success: function (data) {
                console.log(data);
                $('#id').val(id);
                $('#kategori').val(data.kategori_id).trigger('change');
                $('#sumberdana').val(data.sumber_dana_id).trigger('change');
                $('#nominal').val(data.nominal);
                $('#keterangan').val(data.keterangan);
            }
        })
    })

});

function tablePengeluaranLain() {
    $.ajax({
        url: BASE_URL + "PengeluaranLain/tablePengeluaranLain",
        type: "POST",
        success: function (data) {
            $('#div-table-pengeluaran-lain').html(data);
            $('#tablePengeluaranLain').DataTable({
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
