$(document).ready(function () {
    tableTransaksi();
    $('#id').val('');
    $('#modulForm').trigger("reset");
    
    $('.transelect2').select2();

    function cekInput() {
        var barcode = $("#barcode").val().trim();
        var jumlah = $("#jumlah").val().trim();

        if (barcode !== "" && jumlah !== "" && parseInt(jumlah) > 0) {
            $("#tambahBtn").prop("disabled", false);
        } else {
            $("#tambahBtn").prop("disabled", true);
        }
    }

    function cekTabelTransaksi() {
        if ($("#tableTransaksi tbody tr").length > 0) {
            $("#bayarBtn").prop("disabled", false);
        } else {
            $("#bayarBtn").prop("disabled", true);
        }
        hitungTotalHarga(); // Hitung total harga setiap ada perubahan di tabel
    }

    function hitungTotalHarga() {
        var total = 0;
        $("#tableTransaksi tbody tr").each(function () {
            var hargaText = $(this).find("td:nth-child(3)").text(); // Kolom Harga
            var qty = parseInt($(this).find("td:nth-child(4)").text()); // Kolom Qty
            
            // Ambil angka dari format "Rp. xxx.xxx"
            var harga = parseInt(hargaText.replace(/Rp. |,/g, "")); 
            
            total += harga * qty;
        });

        // Tampilkan hasil dalam elemen total harga
        $(".total-harga").text(`Rp. ${total.toLocaleString()}`);
    }

    // Saat barcode dipilih, ambil data barang dari database
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
                        $("#qty-tersedia").text(data.qty); // Menampilkan stok barang
                    }
                }
            });
        }
        cekInput();
    });

    // Event listener saat input jumlah berubah
    $("#jumlah").on("keyup change", cekInput);

    // Saat tombol tambah ditekan
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

        // Reset form input
        $("#barcode").val("").trigger("change");
        $("#jumlah").val("");
        $("#qty-tersedia").text("-"); // Kosongkan stok
        $("#tambahBtn").prop("disabled", true);

        // Perbarui total harga setelah menambahkan barang
        cekTabelTransaksi();
    });

    // Event untuk menghapus baris data
    $(document).on("click", ".removeRow", function () {
        $(this).closest("tr").remove();
        cekTabelTransaksi(); // Hitung ulang total harga setelah penghapusan
    });

    // **Memuat data barang ke dalam select barcode**
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

    loadBarang(); // Panggil saat halaman pertama kali dimuat

    // Hitung total harga saat halaman pertama kali dimuat
    hitungTotalHarga();
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

