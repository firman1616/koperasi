$(document).ready(function () {
    tableTransaksi();
    $('#id').val('');
    $('#modulForm').trigger("reset");
    $('.transelect2').select2();

    // Tombol Bayar ditekan
    $("#bayarBtn").click(function () {
        $("#tanggal").val(getCurrentDateTime());
        $("#modalPembayaran").modal("show");
    });

    function cekInput() {
        var barcode = $("#barcode").val().trim();
        var jumlah = $("#jumlah").val().trim();
        $("#tambahBtn").prop("disabled", barcode === "" || jumlah === "" || parseInt(jumlah) <= 0);
    }

    function cekTabelTransaksi() {
        $("#bayarBtn").prop("disabled", $("#tableTransaksi tbody tr").length === 0);
        hitungTotalHarga();
    }

    function hitungTotalHarga() {
        var total = 0;
        $("#tableTransaksi tbody tr").each(function () {
            var hargaText = $(this).find("td:nth-child(3)").text(); // Kolom Harga
            var qty = parseInt($(this).find("td:nth-child(4)").text()); // Kolom Qty

            // Ambil angka dari format "Rp. xxx.xxx,yy"
            var harga = parseFloat(hargaText.replace(/Rp. |,/g, "").replace(".", ""));
            total += harga * qty;
        });

        $(".total-harga").text(`Rp. ${total.toLocaleString("id-ID")}`);
    }

    $("#barcode").change(function () {
        var barcode = $(this).val();
        if (barcode !== "") {
            $.ajax({
                url: BASE_URL + "Transaksi/get_barang",
                type: "GET",
                data: { barcode: barcode },
                dataType: "json",
                success: function (data) {
                    if (data) {
                        $("#tambahBtn").data("barang", data);
                        $("#qty-tersedia").text(data.qty);
                    }
                }
            });
        }
        cekInput();
    });

    $("#jumlah").on("keyup change", cekInput);

    $("#tambahBtn").click(function () {
        var jumlah = parseInt($("#jumlah").val());
        var barang = $(this).data("barang");

        if (!barang) {
            alert("Barang tidak ditemukan!");
            return;
        }

        if (jumlah > barang.qty) {
            alert("Stok tidak mencukupi!");
            return;
        }

        var newRow = `<tr>
            <td>${barang.kode_barang}</td>
            <td>${barang.nama_barang}</td>
            <td>Rp. ${parseFloat(barang.harga_jual).toLocaleString()}</td>
            <td>${jumlah}</td>
            <td><button class="btn btn-danger btn-sm removeRow">Hapus</button></td>
        </tr>`;

        $("#tableTransaksi tbody").append(newRow);
        $("#barcode").val("").trigger("change");
        $("#jumlah").val("");
        $("#qty-tersedia").text("-");
        $("#tambahBtn").prop("disabled", true);

        cekTabelTransaksi();
    });

    $(document).on("click", ".removeRow", function () {
        $(this).closest("tr").remove();
        cekTabelTransaksi();
    });

    function loadBarang() {
        $.ajax({
            url: BASE_URL + "Transaksi/get_all_barang",
            type: "GET",
            dataType: "json",
            success: function (data) {
                $("#barcode").empty().append('<option value="">Pilih Barang</option>');
                $.each(data, function (index, barang) {
                    $("#barcode").append(`<option value="${barang.kode_barang}">${barang.kode_barang} - ${barang.nama_barang}</option>`);
                });
            }
        });
    }

    loadBarang();
    hitungTotalHarga();

    function getCurrentDateTime() {
        let now = new Date();
        let year = now.getFullYear();
        let month = String(now.getMonth() + 1).padStart(2, '0');
        let day = String(now.getDate()).padStart(2, '0');
        let hours = String(now.getHours()).padStart(2, '0');
        let minutes = String(now.getMinutes()).padStart(2, '0');
        return `${year}-${month}-${day}T${hours}:${minutes}`;
    }

    // **Mengambil total harga saat modal pembayaran ditampilkan**
    $("#modalPembayaran").on("shown.bs.modal", function () {
        var totalHarga = parseFloat($(".total-harga").text().replace(/Rp. |,/g, "").replace(".", ""));
        $("#total_bayar").text("Rp. " + totalHarga.toLocaleString("id-ID"));
        $("#total_bayar").data("total", totalHarga);
        $("#total_kembalian").text("Rp. 0");
    });

    // **Menghitung total bayar & kembalian saat input berubah**
    $("#uang_dibayarkan, #diskon").on("input", function () {
        var totalHarga = parseFloat($("#total_bayar").data("total")) || 0;
        var uangDibayarkan = parseFloat($("#uang_dibayarkan").val()) || 0;
        var diskon = parseFloat($("#diskon").val()) || 0;

        var totalSetelahDiskon = totalHarga - (totalHarga * (diskon / 100));
        var kembalian = uangDibayarkan - totalSetelahDiskon;

        $("#total_bayar").text("Rp. " + totalSetelahDiskon.toLocaleString("id-ID"));
        $("#total_kembalian").text("Rp. " + (kembalian >= 0 ? kembalian.toLocaleString("id-ID") : "0"));
    });

    // **Proses Pembayaran**
    $("#prosesBayar").click(function () {
        var tanggal = $("#tanggal").val();
        var namaPelanggan = $("#nama_pelanggan").val();
        var uangDibayarkan = parseFloat($("#uang_dibayarkan").val());
        var diskon = parseFloat($("#diskon").val()) || 0;
        var totalHarga = parseFloat($("#total_bayar").data("total")) || 0;

        if (!tanggal || !namaPelanggan || uangDibayarkan <= 0) {
            alert("Silakan isi semua data pembayaran!");
            return;
        }

        var totalSetelahDiskon = totalHarga - (totalHarga * (diskon / 100));
        var kembalian = uangDibayarkan - totalSetelahDiskon;

        if (uangDibayarkan < totalSetelahDiskon) {
            alert("Uang yang dibayarkan kurang!");
            return;
        }

        $.ajax({
            url: BASE_URL + "Transaksi/proses_pembayaran",
            type: "POST",
            data: {
                tanggal: tanggal,
                nama_pelanggan: namaPelanggan,
                uang_dibayarkan: uangDibayarkan,
                diskon: diskon,
                total_setelah_diskon: totalSetelahDiskon
            },
            dataType: "json",
            success: function (response) {
                if (response.status === "success") {
                    alert("Pembayaran berhasil! Kembalian: Rp. " + kembalian.toLocaleString("id-ID"));
                    location.reload();
                } else {
                    alert("Terjadi kesalahan saat memproses pembayaran!");
                }
            },
            error: function () {
                alert("Terjadi kesalahan dalam pengiriman data!");
            }
        });

        $("#modalPembayaran").modal("hide");
    });
});



function autofill() {
    var kode = $('#barcode').val();
    // console.log(kode);
    $.ajax({
        url: BASE_URL + "Transaksi/cari",
        //  url:"<?php echo base_url();?>admin/Mutasi/cari",
        data: "&kode=" + kode,
        success: function (data) {
            var hasil = JSON.parse(data);

            $('#qty-tersedia').text(hasil.qty);
            // $("#nama_barang").val(hasil.nama_barang);
            // $("#harga_jual").val(hasil.harga_jual);
        },
    });
}

function tableTransaksi() {
    $.ajax({
        url: BASE_URL + "Transaksi/tableTransaksi",
        type: "POST",
        success: function (data) {
            $('#div-table-transaksi').html(data);
            // $('#tableTransaksi').DataTable({
            //     "processing": true,
            //     "responsive": true,
            // });
        }
    });
}

