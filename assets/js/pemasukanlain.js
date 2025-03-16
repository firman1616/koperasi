$(document).ready(function () {
    tablePemasukanLain();
    
    $("#btnTambah").click(function () {
        $("#modalTambah").modal("show"); // Menampilkan modal
    });

    $("#formTambah").submit(function (e) {
        e.preventDefault(); // Mencegah reload halaman

        // Ambil nilai input
        var kategori_id = $("#kategori").val();
        var nominal = $("#nominal").val();
        var keterangan = $("#keterangan").val();

        // Kirim data via AJAX
        $.ajax({
            type: "POST",
            url: BASE_URL + "PemasukanLain/simpan", // Ganti dengan controller yang sesuai
            data: {
                kategori_id: kategori_id,
                nominal: nominal,
                keterangan: keterangan
            },
            success: function (response) {
                alert("Transaksi berhasil disimpan!");
                $("#modalTambah").modal("hide"); // Tutup modal
                $("#formTambah")[0].reset(); // Reset form
                tablePemasukanLain(); // Refresh tabel
            },
            error: function () {
                alert("Gagal menyimpan transaksi.");
            }
        });
    });

    $(document).on("click", ".btnEdit", function () {
        let id = $(this).data("id");
        let kategori = $(this).data("kategori");
        let nominal = $(this).data("nominal");
        let keterangan = $(this).data("keterangan");

        // console.log("ID:", id, "Kategori:", kategori, "Nominal:", nominal, "Keterangan:", keterangan); // Debugging

        // Isi modal dengan data dari tombol edit
        $("#edit_id").val(id);
        $("#edit_kategori").val(kategori);
        $("#edit_nominal").val(nominal);
        $("#edit_keterangan").val(keterangan);

        // Tampilkan modal edit
        $("#modalEdit").modal("show");
    });

    // Simpan perubahan melalui AJAX
    $("#formEdit").submit(function (e) {
        e.preventDefault(); // Mencegah reload halaman

        // Ambil nilai input
        var id = $("#edit_id").val();
        var kategori_id = $("#edit_kategori").val();
        var nominal = $("#edit_nominal").val();
        var keterangan = $("#edit_keterangan").val();

        // Kirim data via AJAX
        $.ajax({
            type: "POST",
            url: BASE_URL + "PemasukanLain/update", // Ganti dengan controller yang sesuai
            data: {
                id: id,
                kategori_id: kategori_id,
                nominal: nominal,
                keterangan: keterangan
            },
            success: function (response) {
                alert("Transaksi berhasil diperbarui!");
                $("#modalEdit").modal("hide"); // Tutup modal
                tablePemasukanLain(); // Refresh tabel
            },
            error: function () {
                alert("Gagal mengupdate transaksi.");
            }
        });
    });
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
