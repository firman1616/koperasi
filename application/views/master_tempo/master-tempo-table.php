<table class="table table-bordered" id="tableMasterTempo" width="100%" cellspacing="0">
    <thead>
        <tr>
            <!-- <th>No</th> -->
            <th>No.</th>
            <th>Lama Tempo (bulan)</th>
            <th>Prosentase Tempo (%)</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php 
        $x=1;
        foreach ($mster_tempo as $row) { ?>
         <tr>
            <!-- <th>No</th> -->
            <td><?=  $x++ ?></td>
            <td><?= $row->tempo ?></td>
            <td><?= $row->prosentase ?></td>
            <td>
                <button type="button" class="btn btn-warning edit" data-id="<?=  $row->id ?>"><i class="fa fa-edit"></i></button>
            </td>
        </tr>
        <?php }
        ?>
    </tbody>
</table>