$(document).ready(function() {
    tableTransaksi();
    // tableDetailLot();
    $('#id').val('');
    $('#modulForm').trigger("reset");
});

function tableTransaksi() {
    $.ajax({
        url: BASE_URL + "Transaksi/tableTransaksi",
        type: "POST",
        success: function (data) {
            $('#div-table-transaksi').html(data);
            $('#tableTransaksi').DataTable({
                "processing": true,
                "responsive": true,
            });
        }
    });
}
