<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
    <div class="card shadow mb-4 col-lg-5">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><?= $subtitle ?></h6>
        </div>
        <div class="card-body">
            <!-- <label class="label">Tanggal Transaksi</label> -->
            <form method="GET" action="<?= base_url('Laporan/export_excel_iuran') ?>">
                <div class="row" style="margin-bottom: 5px;">
                    <div class="col">
                        <label for="bulan">Pilih Bulan:</label>
                        <select class="form-control" name="bulan" id="bulan">
                            <?php
                            // Daftar bulan dalam format angka dan nama
                            $bulan_list = [
                                "01" => "Januari",
                                "02" => "Februari",
                                "03" => "Maret",
                                "04" => "April",
                                "05" => "Mei",
                                "06" => "Juni",
                                "07" => "Juli",
                                "08" => "Agustus",
                                "09" => "September",
                                "10" => "Oktober",
                                "11" => "November",
                                "12" => "Desember"
                            ];

                            // Ambil bulan sekarang
                            $bulan_sekarang = date('m');

                            // Loop untuk membuat dropdown bulan
                            foreach ($bulan_list as $key => $nama) {
                                $selected = ($key == $bulan_sekarang) ? "selected" : "";
                                echo "<option value='$key' $selected>$nama</option>";
                            }
                            ?>
                        </select>
                    </div>
                    <div class="col">
                        <label for="tahun">Pilih Tahun:</label>
                        <select class="form-control" name="tahun" id="tahun">
                            <?php
                            $tahun_sekarang = date('Y');
                            $y = date('y');
                            $tahun_awal = $tahun_sekarang - 5; // Mulai dari 5 tahun lalu
                            $tahun_akhir = $tahun_sekarang + 0; // Hingga 5 tahun ke depan

                            for ($tahun = $tahun_awal; $tahun <= $tahun_akhir; $tahun++) {
                                $selected = ($tahun == $tahun_sekarang) ? "selected" : "";
                                echo "<option value='$y' $selected>$tahun</option>";
                            }
                            ?>
                        </select>
                    </div>
                </div>
                <button type="submit" class="btn btn-success" id="export_excel_iuran">Export</button>
            </form>
        </div>
    </div>

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Detail Laporan</h6>
        </div>
        <div class="card-body">
        <div class="table-responsive">
                <div id="div-table-lap-barang"></div>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->