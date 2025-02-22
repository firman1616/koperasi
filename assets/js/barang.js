$(document).ready(function() {
    tableBarang();
    // tableDetailLot();
    $('#id').val('');
    $('#modulForm').trigger("reset");
});

function tableBarang() {
    $.ajax({
        url: BASE_URL + "Barang/tableBarang",
        type: "POST",
        success: function (data) {
            $('#div-table-barang').html(data);
            $('#tableBarang').DataTable({
                "processing": true,
                "responsive": true,
            });
        }
    });
}
