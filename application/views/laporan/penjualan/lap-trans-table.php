<table class="table table-bordered" id="tableLapTrans" width="100%" cellspacing="0">
    <thead>
        <tr>
            <th>No</th>
            <th>Kode Transaksi</th>
            <th>Pembeli</th>
            <th>Nominal</th>
            <th>Tanggal</th>
        </tr>
    </thead>
    <tbody>
        <?php 
        $x=1;
        foreach ($lap_trans as $row) { ?>
            <tr>
                <td><?= $x++; ?></td>
                <td><?= $row->no_transaksi ?></td>
                <td>
                    <?php 
                    if ($row->pelanggan_id == '117') {
                        echo $row->lainnya;
                    }else {
                        echo $row->cust;
                    }
                    ?>
                </td>
                <td><?= 'Rp. '. number_format($row->grand_total) ?></td>
                <td><?= date('d-m-Y', strtotime($row->tgl_transaksi)) ?></td>
            </tr>
        <?php }
        ?>
    </tbody>
</table>