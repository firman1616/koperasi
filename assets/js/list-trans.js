$(document).ready(function() {
    tableListTrans();
    // tableDetailLot();
    $('#id').val('');
    $('#modulForm').trigger("reset");
});

function tableListTrans() {
    $.ajax({
        url: BASE_URL + "Transaksi/tableListTrans",
        type: "POST",
        success: function (data) {
            $('#div-table-list-trans').html(data);
            $('#tableListTrans').DataTable({
                "processing": true,
                "responsive": true,
            });
        }
    });
}
