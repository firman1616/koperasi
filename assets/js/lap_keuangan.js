$(document).ready(function () {
    // tableIuran();
    $("#detail_keuangan").hide();
    $("#div-table-lap-keuangan").hide();

    $("#preview").click(function () {
        let bulan = $("#bulan").val();
        let tahun = $("#tahun").val();

        if (bulan === "" || tahun === "") {
            alert("Silakan pilih periode terlebih dahulu!");
            return;
        }

        $("#detail_keuangan").show(); // Tampilkan div detail transaksi
        $("#div-table-lap-keuangan").show(); // Tampilkan div tabel

        // Panggil fungsi untuk load tabel dengan parameter tanggal
        tableKeuangan(bulan, tahun);
    });

    $("#export_excel_keuangan").click(function () {
        let bulan = $("#bulan").val();
        let tahun = $("#tahun").val();

        if (bulan === "" || tahun === "") {
            alert("Silakan pilih periode terlebih dahulu!");
            return;
        }

        // Redirect ke fungsi export di controller dengan parameter bulan & tahun
        window.location.href = BASE_URL + "Laporan/export_excel_keuangan?bulan=" + bulan + "&tahun=" + tahun;
    });

    let today = new Date();

    // Pastikan timezone lokal digunakan
    let todayStr = today.toLocaleDateString('sv-SE'); // Format YYYY-MM-DD

    // Mendapatkan tanggal 30 hari yang lalu dengan memastikan waktu direset
    let pastDate = new Date();
    pastDate.setDate(today.getDate() - 30);
    pastDate = new Date(pastDate.getFullYear(), pastDate.getMonth(), pastDate.getDate()); // Reset jam

    let pastDateStr = pastDate.toLocaleDateString('sv-SE'); // Format YYYY-MM-DD

    // Menetapkan nilai default pada input date
    document.getElementById("date_end").value = todayStr;
    document.getElementById("date_start").value = pastDateStr;
});

function tableKeuangan(bulan, tahun) {
    $.ajax({
        url: BASE_URL + "Laporan/tableLapKeuangan",
        type: "POST",
        data: { bulan: bulan, tahun: tahun }, // Kirim parameter
        success: function (data) {
            $('#div-table-lap-keuangan').html(data);
            // $('#tableKeuangan').DataTable({
            //     "processing": true,
            //     "responsive": true,
            // });
        }
    });
}

