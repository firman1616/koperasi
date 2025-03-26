$(document).ready(function () {
    // tableIuran();
    $("#detail_in").hide();
    // $("#div-table-lap-pemasukan-keuangan").hide();
    $("#detail_keuangan").hide();
    $("#div-table-lap-keuangan").hide();

    $("#preview").click(function () {
        let kategori = $("#kategori").val();
        let date_start = $("#date_start").val();
        let date_end = $("#date_end").val();
        let kategori_utama = $("#kategori_utama").val();

        if (date_start === "" || date_end === "") {
            alert("Silakan lengkapi semua inputan terlebih dahulu!");
            return;
        }

        // Jika kategori ID 11 dipilih, ambil total transaksi POS
        if (kategori === "11") {
            $.ajax({
                url: BASE_URL + "Laporan/getTotalTransaksiPOS",
                type: "POST",
                data: { date_start: date_start, date_end: date_end },
                dataType: "json",
                success: function (response) {
                    if (response.status) {
                        $("#kategori-text").text("Total " + response.kategori);
                        $("#total-transaksi").text(response.total);
                    } else {
                        alert("Data tidak ditemukan!");
                        $("#total-transaksi").text("0");
                    }
                }
            });
        }

        // Jika kategori ID 12 dipilih, ambil total deposit
        if (kategori === "12") {
            $.ajax({
                url: BASE_URL + "Laporan/getTotalDeposit",
                type: "POST",
                data: { date_start: date_start, date_end: date_end },
                dataType: "json",
                success: function (response) {
                    if (response.status) {
                        $("#kategori-text").text("Total " + response.kategori);
                        $("#total-transaksi").text(response.total);
                    } else {
                        alert("Data tidak ditemukan!");
                        $("#total-transaksi").text("0");
                    }
                }
            });
        }

        // Jika kategori ID 3 dipilih, ambil total iuran
        if (kategori === "3") {
            $.ajax({
                url: BASE_URL + "Laporan/getTotalIuran",
                type: "POST",
                data: { date_start: date_start, date_end: date_end },
                dataType: "json",
                success: function (response) {
                    if (response.status) {
                        $("#kategori-text").text("Total " + response.kategori);
                        $("#total-transaksi").text(response.total);
                    } else {
                        alert("Data tidak ditemukan!");
                        $("#total-transaksi").text("0");
                    }
                }
            });
        }

        if (kategori_utama === "1") {
            $.ajax({
                url: BASE_URL + "Laporan/getTotalIn",
                type: "POST",
                data: { date_start: date_start, date_end: date_end },
                dataType: "json",
                success: function (response) {
                    if (response.status) {
                        $("#kategori-text").text("Total " + response.kategori);
                        $("#total-transaksi").text(response.total);
                    } else {
                        alert("Data tidak ditemukan!");
                        $("#total-transaksi").text("0");
                    }
                }
            });
            $("#detail_in").show(); // Tampilkan div pemasukan keuangan
            tablePemasukanKeuangan(date_start, date_end);
        }

        // Jika kategori utama adalah OUT (Pengeluaran)
        if (kategori_utama === "2") {
            $("#detail_keuangan").show();
            $("#div-table-lap-keuangan").show();
            tableKeuangan(date_start, date_end);
        }
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

function tablePemasukanKeuangan(date_start, date_end) {
    $.ajax({
        url: BASE_URL + "Laporan/tableLapKeuanganMasuk",
        type: "POST",
        data: { date_start: date_start, date_end: date_end },
        success: function (data) {
            $('#div-table-lap-pemasukan-keuangan').html(data);
            $('#tableKeuanganIn').DataTable({
                "processing": true,
                "responsive": true,
            });
        }
    });
}

