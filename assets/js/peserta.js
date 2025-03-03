$(document).ready(function() {
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


// Event klik tombol "iuran"
$(document).on('click', '.iuran-btn', function() {
    var anggota_id = $(this).data('id'); // Ambil ID anggota dari atribut data-id
    var confirmPayment = confirm("Apakah sudah bayar?");

    if (confirmPayment) {
        $.ajax({
            url: BASE_URL + "Peserta/simpanIuran",
            type: "POST",
            data: {
                anggota_id: anggota_id
            },
            success: function(response) {
                alert("Iuran sudah dibayar"); // Menampilkan alert setelah klik
                setTimeout(tableIuran, 100); // Refresh otomatis setelah klik
            },
            error: function() {
                alert("Terjadi kesalahan, coba lagi!");
            }
        });
    } else {
        alert("Pembayaran belum dikonfirmasi.");
    }
});


$(document).on('click', '.delete-btn', function(event) {
    event.preventDefault(); // Mencegah link langsung dijalankan

    var url = $(this).attr('href'); // Ambil URL dari href

    // Konfirmasi sebelum menghapus
    if (confirm("Apakah Anda yakin ingin menghapus data ini?")) {
        window.location.href = url; // Jika dikonfirmasi, jalankan URL
    }
});
