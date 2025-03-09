$(document).ready(function () {
    tablePeserta();
    tableIuran();
});

function tablePeserta() {
    $.ajax({
        url: BASE_URL + "Peserta/tablePeserta",
        type: "POST",
        success: function (data) {
            $('#div-table-peserta').html(data);
            $('#tablePeserta').DataTable({
                "processing": true,
                "responsive": true,
            });
        }
    });
}

function tableIuran() {
    $.ajax({
        url: BASE_URL + "Peserta/tableIuran",
        type: "POST",
        success: function (data) {
            $('#div-table-iuran').html(data);
            $('#tableIuran').DataTable({
                "processing": true,
                "responsive": true,
            });
        }
    });
}


$(document).on("click", ".iuran-btn", function () {
    var anggotaId = $(this).data("id");
    var periode = $(this).data("periode"); // Ambil periode dari tombol

    // Ambil waktu dari PC dalam format Y-m-d H:i:s
    var now = new Date();
    var dateTime = now.getFullYear() + '-' +
        ('0' + (now.getMonth() + 1)).slice(-2) + '-' +
        ('0' + now.getDate()).slice(-2) + ' ' +
        ('0' + now.getHours()).slice(-2) + ':' +
        ('0' + now.getMinutes()).slice(-2) + ':' +
        ('0' + now.getSeconds()).slice(-2);

    // Konfirmasi sebelum mengirim request
    var confirmAction = confirm("Apakah Anda yakin ingin membayar iuran untuk periode " + periode + "?");
    if (!confirmAction) {
        return;
    }

    $.ajax({
        url: BASE_URL + "Peserta/update_iuran",
        type: "POST",
        data: { anggota_id: anggotaId, periode: periode, date: dateTime },
        dataType: "json",
        success: function (response) {
            if (response.status == "success") {
                alert("Iuran periode " + periode + " berhasil dibayar!");
                location.reload();
            } else {
                alert("Gagal memperbarui iuran.");
            }
        },
        error: function (xhr, status, error) {
            console.error(xhr.responseText);
        }
    });
});


// Event klik tombol "iuran"
// $(document).on('click', '.iuran-btn', function() {
//     var anggota_id = $(this).data('id'); // Ambil ID anggota dari atribut data-id
//     var confirmPayment = confirm("Apakah sudah bayar?");

//     if (confirmPayment) {
//         $.ajax({
//             url: BASE_URL + "Peserta/simpanIuran",
//             type: "POST",
//             data: {
//                 anggota_id: anggota_id
//             },
//             success: function(response) {
//                 alert("Iuran sudah dibayar"); // Menampilkan alert setelah klik
//                 setTimeout(tableIuran, 100); // Refresh otomatis setelah klik
//             },
//             error: function() {
//                 alert("Terjadi kesalahan, coba lagi!");
//             }
//         });
//     } else {
//         alert("Pembayaran belum dikonfirmasi.");
//     }
// });


$(document).on('click', '.delete-btn', function (event) {
    event.preventDefault(); // Mencegah link langsung dijalankan

    var url = $(this).attr('href'); // Ambil URL dari href

    // Konfirmasi sebelum menghapus
    if (confirm("Apakah Anda yakin ingin menghapus data ini?")) {
        window.location.href = url; // Jika dikonfirmasi, jalankan URL
    }
});
