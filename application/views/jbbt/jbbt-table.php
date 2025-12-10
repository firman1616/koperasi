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
                <td><?= $row->kd_trans ?></td>
                <td><?= $row->nama_pembeli ?></td>
                <td><?= $row->nama_barang ?></td>
                <td><?= $row->tempo ?> Bulan</td>
                <td>
                    <!-- <button type="button" class="btn btn-primary"><i class="fa fa-book"></i></button> -->
                    <?php
                    if (!empty($detail[$row->id])) {
                        foreach ($detail[$row->id] as $d) {

                            // Format periode MMYY
                            $periode = date('my', strtotime($d->tgl_japo));
                    ?>
                            <button class="btn btn-sm btn-info" title="<?= $periode ?>">
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