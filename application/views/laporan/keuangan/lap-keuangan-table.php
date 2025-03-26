<?php 
foreach ($sum_nominal as $row) { 
    $in = $row->pemasukan;
    $out = $row->pengeluaran;
 }
?>
<!-- <table>
    <tr>
        <td>Total Pemasukan</td>
        <td>:</td>
        <td>Rp. <?= number_format(isset($in) ? $in : 0) ?></td>
    </tr>
    <tr>
        <td>Total Pengeluaran</td>
        <td>:</td>
        <td>Rp. <?= number_format(isset($out) ? $out : 0) ?></td>
    </tr>
</table> -->

<?php
$formatter = new IntlDateFormatter('id_ID', IntlDateFormatter::LONG, IntlDateFormatter::NONE);
$formatter->setPattern('MMMM yyyy');
?>

<table class="table table-bordered" id="tableKeuangan" width="100%" cellspacing="0">
    <thead>
        <tr>
            <th>No</th>
            <th>Kategori</th>
            <th>Nominal</th>
            <th>Periode</th>
            <th>Kategori</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $x = 1;
        foreach ($keuangan as $row) { ?>
            <tr>
                <td><?= $x++; ?></td>
                <td><?= $row->kateg_trans ?></td>
                <td>Rp. <?= number_format($row->nominal) ?></td>
                <td><?= $formatter->format(new DateTime($row->periode)) ?></td>
                <td><?= $row->kode ?></td>
            </tr>
        <?php }
        ?>
    </tbody>
</table>