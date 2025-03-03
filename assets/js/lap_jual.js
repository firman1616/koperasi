$(document).ready(function() {
    // tableUOM();
    let today = new Date();
    let todayStr = today.toISOString().split('T')[0]; // Format YYYY-MM-DD

    // Mendapatkan tanggal 30 hari yang lalu
    let pastDate = new Date();
    pastDate.setDate(today.getDate() - 30);
    let pastDateStr = pastDate.toISOString().split('T')[0];

    // Menetapkan nilai default
    document.getElementById("date_end").value = todayStr;
    document.getElementById("date_start").value = pastDateStr;

    $("#export_excel").click(function () {
        window.location.href = BASE_URL + "Laporan/export_excel";
    });

});

// function tableUOM() {
//     $.ajax({
//         url: BASE_URL + "UOM/tableUOM",
//         type: "POST",
//         success: function (data) {
//             $('#div-table-uom').html(data);
//             $('#tableUOM').DataTable({
//                 "processing": true,
//                 "responsive": true,
//             });
//         }
//     });
// }
