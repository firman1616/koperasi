<table class="table table-bordered" id="tableIuran" width="100%" cellspacing="0">
    <thead>
        <tr>
            <th>No</th>
            <th>Nama ANggota</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $x = 1;
        $tahun = date('y');
        $bulanSekarang = date('n');
        foreach ($iuran as $row) { ?>
            <tr>
                <td><?= $x++; ?></td>
                <td><?= $row->name ?></td>
                <td>
                    <?php
                    for ($bulan = 1; $bulan <= $bulanSekarang; $bulan++) { // Loop hanya sampai bulan saat ini
                        $periode = sprintf('%02d', $bulan) . $tahun; // Format MMYY

                        // Cek apakah iuran sudah dibayar (status = 1)
                        $status = isset($row->iuran_status[$periode]) ? $row->iuran_status[$periode] : 0;

                        if ($status != 1) { // Jika belum dibayar, tampilkan tombol
                    ?>
                            <button type="button" class="btn btn-primary iuran-btn"
                                title="Iuran <?= $periode ?>"
                                data-id="<?= $row->id ?>"
                                data-periode="<?= $periode ?>">
                                <i class="fa fa-coins"></i> <?= $periode ?>
                            </button>
                    <?php
                        } // End if
                    } // End for
                    ?>
                    <!-- <button type="button" class="btn btn-primary iuran-btn" title="iuran <?= date('my') ?>" data-id="<?= $row->id ?>">
                        <i class="fa fa-coins"></i>
                    </button> -->
                </td>
            </tr>
        <?php  }
        ?>
    </tbody>
</table>