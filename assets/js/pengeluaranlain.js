$(document).ready(function () {
    tablePengeluaranLain();
    $('#id').val('');
    $('#pengeluaran').trigger("reset");
    
    
    // $('#save-data').click(function (e) { 
    //     e.preventDefault();
    //     let id = $('#id').val(); // Cek apakah #id memiliki nilai
    //     let message = id ? "Data Berhasil Diupdate!" : "Data Berhasil Ditambahkan!";
    
    //     // Tambahkan konfirmasi sebelum menyimpan
    //     if (!confirm("Apakah Anda yakin ingin menyimpan data ini?")) {
    //         return; // Batalkan jika pengguna memilih "Batal"
    //     }
    
    //     $.ajax({
    //         data: $('#pengeluaran').serialize(),
    //         url: BASE_URL + "PengeluaranLain/store",
    //         type: "POST",
    //         datatype: 'json',
    //         success: function(data) {
    //             $('#pengeluaran').trigger("reset");
    //             $('#id').val(''); // Reset ID setelah submit
    //             alert(message);
    //             tablePengeluaranLain();
    //         },
    //         error: function(data) {
    //             console.log('Error:', data);
    //             $('#save-data').html('Simpan Data');
    //         }
    //     });
    // });

    $('#save-data').click(function (e) {
        e.preventDefault();
        let id = $('#id').val();
        let sumberdana = $('#sumberdana').val();
        let nominal = parseFloat($('#nominal').val());
        let message = id ? "Data Berhasil Diupdate!" : "Data Berhasil Ditambahkan!";
    
        // Validasi input
        if (!sumberdana || isNaN(nominal) || nominal <= 0) {
            alert("Harap isi sumber dana dan nominal dengan benar.");
            return;
        }
    
        // Cek apakah nominal lebih besar dari saldo
        if (nominal > saldoTersedia) {
            alert("Nominal lebih besar dari saldo yang tersedia!");
            return;
        }
    
        // Konfirmasi sebelum menyimpan
        if (!confirm("Apakah Anda yakin ingin menyimpan data ini?")) {
            return; // Batalkan jika pengguna memilih "Batal"
        }
    
        $.ajax({
            data: $('#pengeluaran').serialize(),
            url: BASE_URL + "PengeluaranLain/store",
            type: "POST",
            dataType: "json",
            success: function (response) {
                if (response.status === "success") {
                    alert(message);
                    
                    // Reset Form
                    $('#pengeluaran').trigger("reset");
                    $('#id').val('');
                    $('#saldoTersedia').text('Rp. 0,-');
                    tablePengeluaranLain(); // Reload table
                } else {
                    alert(response.message);
                }
            },
            error: function (xhr, status, error) {
                console.log("Error:", error);
                alert("Terjadi kesalahan, coba lagi.");
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

    let saldoTersedia = 0; // Variabel untuk menyimpan saldo

    // Ketika memilih sumber dana, ambil saldo dari server
    $('#sumberdana').change(function () {
        let sumberdana = $(this).val();
    
        if (sumberdana) {
            $.ajax({
                url: BASE_URL + "PengeluaranLain/getSaldo", // Endpoint untuk mendapatkan saldo
                type: "POST",
                data: { sumberdana: sumberdana },
                dataType: "json",
                success: function (response) {
                    console.log(response); // Debugging
    
                    if (response.saldo !== undefined) {
                        saldoTersedia = response.saldo;
    
                        // Format angka dengan titik sebagai pemisah ribuan
                        let saldoFormatted = new Intl.NumberFormat('id-ID', {
                            style: 'currency',
                            currency: 'IDR',
                            minimumFractionDigits: 0
                        }).format(saldoTersedia);
    
                        $('#saldoTersedia').text(saldoFormatted);
                    } else {
                        $('#saldoTersedia').text('Rp. 0,-');
                    }
                },
                error: function (xhr, status, error) {
                    console.error("AJAX Error: ", status, error);
                }
            });
        } else {
            $('#saldoTersedia').text('Rp. 0,-'); // Jika tidak ada sumber dana, tampilkan saldo 0
        }
    });
    

    // Validasi input nominal
    $('#nominal').on('input', function () {
        let nominal = $(this).val();
        if (parseInt(nominal) > saldoTersedia) {
            alert("Saldo Tidak Mencukupi, Ganti Sumber Dana!");
            $(this).val(saldoTersedia); // Batasi nominal ke saldo maksimal
        }
    });

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

// $(document).on('click', '.delete-btn', function (event) {
//     event.preventDefault(); // Mencegah link langsung dijalankan

//     var url = $(this).attr('href'); // Ambil URL dari href

//     // Konfirmasi sebelum menghapus
//     if (confirm("Apakah Anda yakin ingin menghapus data ini?")) {
//         window.location.href = url; // Jika dikonfirmasi, jalankan URL
//     }
// });

$(document).on('click', '.delete-btn', function (event) {
    event.preventDefault(); // Mencegah link langsung dijalankan

    var url = $(this).attr('href'); // Ambil URL dari href
    let sumberdana = $('#sumberdana').val(); // Ambil sumber dana yang sedang dipilih

    // Konfirmasi sebelum menghapus
    if (confirm("Apakah Anda yakin ingin menghapus data ini?")) {
        $.ajax({
            url: url,
            type: "GET",
            success: function () {
                alert("Data berhasil dihapus!");

                tablePengeluaranLain(); // Reload tabel
            },
            error: function (xhr, status, error) {
                console.error("Error:", error);
                alert("Terjadi kesalahan, coba lagi.");
            }
        });
    }
});

