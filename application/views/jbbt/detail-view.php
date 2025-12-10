<table class="table table-bordered">
    <tr>
        <th>Kode Transaksi</th>
        <td><?= $header->kd_trans ?></td>
    </tr>
    <tr>
        <th>Nama Pembeli</th>
        <td><?= $header->nama_pembeli ?></td>
    </tr>
    <tr>
        <th>Barang</th>
        <td><?= $header->nama_barang ?></td>
    </tr>
    <tr>
        <th>Total Bayar</th>
        <td>Rp. <?= number_format($header->total_bayar,0,',','.') ?>,-</td>
    </tr>
    <tr>
        <th>Uang Muka</th>
        <td>Rp. <?= number_format($header->uang_muka,0,',','.') ?>,-</td>
    </tr>
    <tr>
        <th>Kurang Bayar</th>
        <td>Rp. <?= number_format($header->sisa_bayar,0,',','.') ?>,-</td>
    </tr>
    <tr>
        <th>Tenor</th>
        <td><?= $header->tempo ?> Bulan</td>
    </tr>
</table>

<h5>Detail Pembayaran</h5>
<table class="table table-striped table-sm">
    <thead>
        <tr>
            <th>No</th>
            <th>Tanggal Jatuh Tempo</th>
            <th>Nominal Bayar</th>
            <th>Tanggal Dibayar</th>
            <th>Status</th>
        </tr>
    </thead>

    <tbody>
        <?php 
        $no = 1;
        foreach ($detail as $d) { ?>
            <tr>
                <td><?= $no++ ?></td>
                <td><?= $d->tgl_japo ?></td>
                <td>Rp. <?= number_format($d->nominal_bayar,0,',','.') ?>,-</td>
                <td><?= $d->tgl_dibayar ?: '-' ?></td>
                <td>
                    <?php if ($d->status == 1) echo "BELUM BAYAR"; ?>
                    <?php if ($d->status == 2) echo "LUNAS"; ?>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>
