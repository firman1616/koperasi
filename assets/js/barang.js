$(document).ready(function() {
    tableBarang();
    $('.select2').select2({
        placeholder: "Pilih satuan",
        allowClear: true,
        width: '100%',
    });
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
