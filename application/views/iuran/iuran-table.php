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
        foreach ($iuran as $row) { ?>
            <tr>
                <td><?= $x++; ?></td>
                <td><?= $row->name ?></td>
                <td>
                    <button type="button" class="btn btn-primary iuran-btn" title="iuran" data-id="<?= $row->id ?>">
                        <i class="fa fa-coins"></i>
                    </button>
                </td>
            </tr>
        <?php  }
        ?>
    </tbody>
</table>