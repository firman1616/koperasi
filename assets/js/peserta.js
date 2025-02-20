$(document).ready(function() {
    tablePeserta();
    // tableDetailLot();
    $('#id').val('');
    $('#modulForm').trigger("reset");
});

function tablePeserta() {
    $.ajax({
        url: BASE_URL + "Peserta/tablePeserta",
        type: "POST",
        success: function (data) {
            $('#div-table-peserta').html(data);
            $('#tablePeserta').DataTable({
                "processing": true,
                "responsive": true,
            });
        }
    });
}
