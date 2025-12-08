$(document).ready(function () {
	tableJBBT();
	$("#barang").select2({
		width: "100%",
		placeholder: "Pilih Barang",
	});

	// prosentase Tempo
	$("#tempo").on("change", function () {
		let tempo = $(this).val();

		$.ajax({
			url: BASE_URL + "JBBT/get_prosentase_tempo",
			type: "POST",
			data: { tempo: tempo },
			dataType: "json",
			success: function (res) {
				$("#prosentase").val(res.prosentase);
			},
		});
	});
});

// Load tabel peserta
function tableJBBT() {
	$.ajax({
		url: BASE_URL + "JBBT/tableJBBT",
		type: "POST",
		success: function (data) {
			$("#div-table-jbbt").html(data);
			$("#tableJBBT").DataTable({
				processing: true,
				responsive: true,
			});
		},
	});
}
