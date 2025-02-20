$(document).ready(function() {
    tableUOM();
    // tableDetailLot();
    $('#id').val('');
    $('#modulForm').trigger("reset");
});

function tableUOM() {
    $.ajax({
        url: BASE_URL + "UOM/tableUOM",
        type: "POST",
        success: function (data) {
            $('#div-table-uom').html(data);
            $('#tableUOM').DataTable({
                "processing": true,
                "responsive": true,
            });
        }
    });
}
