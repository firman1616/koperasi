<table class="table table-bordered" id="tableJBBT" width="100%" cellspacing="0">
    <thead>
        <tr>
            <!-- <th>No</th> -->
            <th>No</th>
            <th>No. JBBT</th>
            <th>Nama Pembeli</th>
            <th>Nama Barang</th>
            <th>Tenor</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $x = 1;
        foreach ($get_data as $row) { ?>
            <tr>
                <td><?= $x++; ?></td>
                <td>
                    <div class="dropdown">
                        <button class="btn btn-primary btn-sm dropdown-toggle" type="button" id="dropdownMenu<?= $row->id ?>" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <?= $row->kd_trans ?>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenu<?= $row->id ?>">
                            <a class="dropdown-item btnViewDetail"
                                href="javascript:void(0);"
                                data-id="<?= $row->id ?>"
                                data-kode="<?= $row->kd_trans ?>">
                                View Detail
                            </a>
                            <a class="dropdown-item" href="#">Edit</a>
                            <a class="dropdown-item text-danger" href="#" onclick="return confirm('Yakin ingin hapus data ini?')">Hapus</a>
                        </div>
                    </div>
                </td>

                <td><?= $row->nama_pembeli ?></td>
                <td><?= $row->nama_barang ?></td>
                <td><?= $row->tempo ?> Bulan</td>
                <td>
                    <?php
                    if (!empty($detail[$row->id])) {
                        foreach ($detail[$row->id] as $d) {

                            // Format MMYY
                            $periode = date('my', strtotime($d->tgl_japo));

                            $today = strtotime(date('Y-m-d'));
                            $japo  = strtotime($d->tgl_japo);

                            // Tentukan awal warning = tanggal 1 bulan jatuh tempo
                            $warning_start = strtotime(date('Y-m-01', $japo));

                            // Warna button
                            if ($today >= $japo) {
                                $btn = "btn-danger";  // tanggal japo atau setelahnya
                            } elseif ($today >= $warning_start) {
                                $btn = "btn-warning"; // dalam bulan jatuh tempo
                            } else {
                                $btn = "btn-info";    // masih jauh sebelum bulan jatuh tempo
                            }
                    ?>
                            <button
                                class="btn btn-sm <?= $btn ?> btnBayar"
                                data-id="<?= $d->id ?>"
                                data-periode="<?= $periode ?>"
                                data-japo="<?= $d->tgl_japo ?>">
                                <?= $periode ?>
                            </button>
                    <?php
                        }
                    } else {
                        echo "<span class='text-muted'>Tidak ada jadwal</span>";
                    }
                    ?>
                </td>
            </tr>
        <?php }
        ?>
    </tbody>
</table>

<!-- view detail -->
<div class="modal fade" id="modalDetailJBBT" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">

        <div class="modal-content">

            <div class="modal-header">
                <h5 class="modal-title" id="titleDetail"></h5>
                <button type="button" class="close" data-dismiss="modal">
                    &times;
                </button>
            </div>

            <div class="modal-body" id="bodyDetail">
                <!-- detail akan dimuat via AJAX -->
            </div>

        </div>
    </div>
</div>