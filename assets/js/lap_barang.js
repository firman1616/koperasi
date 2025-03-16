$(document).ready(function () {
    tableLapBarang();

    $(document).on("click", ".btn-detail", function () {
        var barang_id = $(this).data("id");

        $("#detailTableBody").empty();

        $.ajax({
            url: BASE_URL + "Laporan/getHistoryBarang",
            type: "POST",
            data: { id: barang_id },
            dataType: "json",
            success: function (response) {
                $("#detailModalLabel").text("Detail History Barang - " + response.nama_barang);

                if (response.history.length > 0) {
                    response.history.forEach(function (item) {
                        let formattedDate = formatDate(item.history_date);
                        $("#detailTableBody").append(`
                            <tr>
                                <td>${item.qty}</td>
                                <td>${formattedDate}</td>
                            </tr>
                        `);
                    });
                } else {
                    $("#detailTableBody").append('<tr><td colspan="2" class="text-center">No data available</td></tr>');
                }
                $("#detailModal").modal("show");
            },
            error: function (xhr, status, error) {
                console.error("AJAX Error:", status, error);
            }
        });
    });

    // Fungsi perbaikan untuk format tanggal
    function formatDate(dateString) {
        if (!dateString || dateString === "0000-00-00") return "-"; // Jika tanggal kosong atau invalid

        let dateParts = dateString.split("-");
        if (dateParts.length !== 3) return "-"; // Pastikan ada 3 bagian (YYYY-MM-DD)

        let day = dateParts[2]; // Ambil bagian tanggal
        let month = dateParts[1]; // Ambil bagian bulan
        let year = dateParts[0]; // Ambil bagian tahun

        return `${day}-${month}-${year}`;
    }

});

function tableLapBarang() {
    $.ajax({
        url: BASE_URL + "Laporan/tableLapBarang",
        type: "POST",
        success: function (data) {
            $('#div-table-lap-barang').html(data);
            $('#tableLapBarang').DataTable({
                "processing": true,
                "responsive": true,
            });
        }
    });
}
