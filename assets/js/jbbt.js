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
				$("#prosentase").val(res.prosentase).trigger("keyup").trigger("change"); // penting!
			},
		});
	});

	// format mata uang
	$("#modal, #jual, #dp").on("keyup", function () {
		let formatted = formatRupiah(this.value);
		$(this).val(formatted);
	});

	$("#barang").on("change", function () {
		let val = $(this).val();

		if (val === "" || val === null) {
			// Barang belum dipilih → kunci input
			$("#modal").prop("readonly", true);
			$("#jual").prop("readonly", true);

			// kosongkan input agar tidak ada nilai sisa
			$("#modal").val("");
			$("#jual").val("");
		} else {
			// Barang sudah dipilih → buka input
			$("#modal").prop("readonly", false);
			$("#jual").prop("readonly", false);
		}
	});

	// ketika harga jual berubah
	// Trigger pengecekan saat harga jual berubah
	$("#jual").on("keyup change", function () {
		cekDP();
	});

	// Trigger pengecekan saat tenor berubah
	$("#tenor").on("change", function () {
		cekDP();
	});

	// perhitungan cicilan
	$("#jual, #prosentase, #dp, #tenor").on("keyup change", function () {
		hitungCicilan();
	});

	// total_bayar ikut update saat DP atau tenor berubah juga
	$("#jual, #prosentase").on("keyup change", function () {
		hitungTotalBayar();
	});

	// hitung sisa bayar
	$("#total_bayar, #dp").on("keyup change", function () {
		hitungSisaBayar();
	});

	// total bayar standart
	// $("#jual, #prosentase").on("keyup change", function () {
	// 	hitungTotalBayar();
	// });

	// simpan data
	$('#simpan-data').click(function (e) {
		e.preventDefault();

		let data = {
			tgl_trans: $('#tgl_transaksi').val(),
			kd_trans: $('#kode_trans').val(),
			nama_pembeli: $('#pembeli').val(),
			barang_id: $('#barang').val(),
			harga_modal: $('#modal').val().replace(/[^0-9]/g, ""),
			harga_jual: $('#jual').val().replace(/[^0-9]/g, ""),
			tempo: $('#tenor').val(),
			prosentase: $('#prosentase').val().replace(/[^0-9]/g, ""),
			total_bayar: $('#total_bayar').val().replace(/[^0-9]/g, ""),
			uang_muka: $('#dp').val().replace(/[^0-9]/g, ""),
			cicilan_per_bulan: $('#cicilan').val().replace(/[^0-9]/g, ""),
			sisa_bayar: $('#sisa_bayar').val().replace(/[^0-9]/g, "")
		};

		$.ajax({
			url: BASE_URL + "JBBT/simpan",
			type: "POST",
			data: data,
			dataType: "json",
			success: function (res) {
				if (res.status === "success") {
					alert("Transaksi berhasil disimpan!");
					window.location.href = BASE_URL + "JBBT"; // redirect ke index
				} else {
					alert("Gagal menyimpan: " + res.message);
				}
			},
			error: function () {
				alert("Terjadi kesalahan pada server.");
			}
		});
	});

	// Ketika tombol periode diklik
	$(document).on('click', '.btnBayar', function () {

		let id = $(this).data('id');
		let periode = $(this).data('periode');
		let japo = $(this).data('japo');

		// simpan tombol yang diklik (agar bisa dihapus nanti)
		window.buttonTarget = $(this);

		$('#id_cicilan').val(id);
		$('#periode').val(periode);
		$('#tgl_jibayar').val(japo);

		$('#modalBayar').modal('show');
	});

	// Update pembayaran
	$('#btnUpdate').click(function () {

		let id = $('#id_cicilan').val();
		let tgl = $('#tgl_dibayar').val();

		$.ajax({
			url: BASE_URL + 'JBBT/update_pembayaran',
			type: 'POST',
			data: { id: id, tgl: tgl },
			dataType: 'json',
			success: function (res) {
				if (res.status === 'success') {

					// Hapus tombol yang ditekan
					window.buttonTarget.remove();

					// Tutup modal
					$('#modalBayar').modal('hide');

					alert("Pembayaran berhasil diperbarui!");
				}
			}
		});
	});

	$(document).on('click', '.btnViewDetail', function () {

		let id = $(this).data('id');
		let kode = $(this).data('kode');

		$("#titleDetail").text("Detail Transaksi : " + kode);

		$.ajax({
			url: BASE_URL + 'JBBT/detail',
			type: 'POST',
			data: { id: id },
			dataType: 'json',
			success: function (res) {
				if (res.status == "success") {
					$("#bodyDetail").html(res.html);
					$("#modalDetailJBBT").modal('show');
				}
			}
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

function formatRupiah(angka) {
	angka = angka.toString().replace(/[^0-9]/g, "");
	return "Rp. " + angka.replace(/\B(?=(\d{3})+(?!\d))/g, ".");
}

function cekDP() {
	let hargaJual = $("#jual").val().trim();
	let tenor = $("#tenor").val();

	if (hargaJual !== "" && tenor !== "" && tenor !== null) {
		// Jika kedua input terisi → DP bisa diisi
		$("#dp").prop("readonly", false);
	} else {
		// Jika salah satu kosong → DP dikunci
		$("#dp").prop("readonly", true);
		$("#dp").val(""); // reset nilai
	}
}

function hitungCicilan() {
	let jual = $("#jual")
		.val()
		.replace(/[^0-9]/g, "");
	let prosentase = $("#prosentase")
		.val()
		.replace(/[^0-9]/g, "");
	let dp = $("#dp")
		.val()
		.replace(/[^0-9]/g, "");
	let tenor = $("#tenor").val();

	// validasi
	if (
		jual === "" ||
		prosentase === "" ||
		dp === "" ||
		tenor === "" ||
		tenor === null
	) {
		$("#cicilan").val("");
		return;
	}

	jual = parseFloat(jual);
	prosentase = parseFloat(prosentase);
	dp = parseFloat(dp);
	tenor = parseInt(tenor);

	// rumus: (((jual * (prosentase / 100)) + jual) - dp) / tenor
	let totalKredit = jual + jual * (prosentase / 100);
	let sisa = totalKredit - dp;

	// Bulatkan cicilan
	let cicilan = Math.round(sisa / tenor);

	// masukkan format rupiah
	$("#cicilan").val(formatRupiah(cicilan.toString()));
}

function hitungTotalBayar() {
	let jual = $("#jual")
		.val()
		.replace(/[^0-9]/g, "");
	let prosentase = $("#prosentase")
		.val()
		.replace(/[^0-9]/g, "");

	// tampilkan total hanya jika prosentase sudah ada
	if (prosentase === "" || jual === "") {
		$("#total_bayar").val("");
		return;
	}

	jual = parseFloat(jual);
	prosentase = parseFloat(prosentase);

	// rumus total bayar
	let total = jual + jual * (prosentase / 100);

	// format rupiah
	$("#total_bayar").val(formatRupiah(total.toString()));
	// tambahkan ini
	hitungSisaBayar();
}

function hitungSisaBayar() {
	let total = $("#total_bayar")
		.val()
		.replace(/[^0-9]/g, "");
	let dp = $("#dp")
		.val()
		.replace(/[^0-9]/g, "");

	// jika salah satu kosong, kosongkan sisa bayar
	if (total === "" || dp === "") {
		$("#sisa_bayar").val("");
		return;
	}

	total = parseFloat(total);
	dp = parseFloat(dp);

	let sisa = total - dp;

	// hasil tidak boleh minus
	if (sisa < 0) sisa = 0;

	$("#sisa_bayar").val(formatRupiah(sisa.toString()));
}
