$(document).ready(function () {
	tableJBBT();
	$("#barang").select2({
		width: "100%",
		placeholder: "Pilih Barang",
	});

	// prosentase Tempo
	$("#tenor").on("change", function () {
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

	// format mata uang
	$('#modal, #jual, #dp').on('keyup', function () {
		let formatted = formatRupiah(this.value);
		$(this).val(formatted);
	});

	$('#barang').on('change', function () {
		let val = $(this).val();

		if (val === "" || val === null) {
			// Barang belum dipilih → kunci input
			$('#modal').prop('readonly', true);
			$('#jual').prop('readonly', true);

			// kosongkan input agar tidak ada nilai sisa
			$('#modal').val('');
			$('#jual').val('');
		} else {
			// Barang sudah dipilih → buka input
			$('#modal').prop('readonly', false);
			$('#jual').prop('readonly', false);
		}
	});

	// ketika harga jual berubah
	// Trigger pengecekan saat harga jual berubah
	$('#jual').on('keyup change', function () {
		cekDP();
	});

	// Trigger pengecekan saat tenor berubah
	$('#tenor').on('change', function () {
		cekDP();
	});

	// perhitungan cicilan
	$('#jual, #prosentase, #dp, #tenor').on('keyup change', function () {
		hitungCicilan();
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

function formatRupiah(angka) {
	let numberString = angka.replace(/[^,\d]/g, '').toString();
	let split = numberString.split(',');
	let sisa = split[0].length % 3;
	let rupiah = split[0].substr(0, sisa);
	let ribuan = split[0].substr(sisa).match(/\d{3}/g);

	if (ribuan) {
		rupiah += (sisa ? '.' : '') + ribuan.join('.');
	}

	rupiah = split[1] !== undefined ? rupiah + ',' + split[1] : rupiah;

	return rupiah ? 'Rp. ' + rupiah : '';
}

function cekDP() {
	let hargaJual = $('#jual').val().trim();
	let tenor = $('#tenor').val();

	if (hargaJual !== "" && tenor !== "" && tenor !== null) {
		// Jika kedua input terisi → DP bisa diisi
		$('#dp').prop('readonly', false);
	} else {
		// Jika salah satu kosong → DP dikunci
		$('#dp').prop('readonly', true);
		$('#dp').val(''); // reset nilai
	}
}

function hitungCicilan() {
	let jual = $('#jual').val().replace(/[^0-9]/g, "");
	let prosentase = $('#prosentase').val().replace(/[^0-9]/g, "");
	let dp = $('#dp').val().replace(/[^0-9]/g, "");
	let tenor = $('#tenor').val();

	// validasi semua input harus terisi
	// if (jual === "" || prosentase === "" || dp === "" || tenor === null || tenor === "") {
	// 	alert("Harga Jual, Prosentase, DP, dan Tenor harus diisi!");
	// 	$('#cicilan').val('');
	// 	return;
	// }

	jual = parseFloat(jual);
	prosentase = parseFloat(prosentase);
	dp = parseFloat(dp);
	tenor = parseInt(tenor);

	// rumus: (((jual * (prosentase / 100)) + jual) - dp) / tenor
	let totalKredit = jual + (jual * (prosentase / 100));
	let sisa = totalKredit - dp;
	let cicilan = sisa / tenor;

	// format rupiah
	$('#cicilan').val(formatRupiah(cicilan.toString()));
}


