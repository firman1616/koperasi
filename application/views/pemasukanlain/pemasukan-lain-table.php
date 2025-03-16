<table class="table table-bordered" id="tablePemasukanLain" width="100%" cellspacing="0">
    <thead>
        <tr>
            <th>No</th>
            <th>Kategori Pemasukan</th>
            <th>Nominal</th>
            <th>Tanggal</th>
            <th>Keterangan</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $x = 1;
        foreach ($pemasukan as $row) { ?>
            <tr>
                <td><?= $x++; ?></td>
                <td><?= $row->kateg ?></td>
                <td>Rp. <?= number_format($row->nominal) ?></td>
                <td><?= date('d-m-Y', strtotime($row->date)) ?></td>
                <td><?= $row->keterangan ?></td>
                <td>
                    <button type="button" class="btn btn-warning btnEdit"
                        data-id="<?= $row->id ?>"
                        data-kategori="<?= $row->kategori_id ?>"
                        data-nominal="<?= $row->nominal ?>"
                        data-tanggal="<?= $row->date ?>"
                        data-keterangan="<?= $row->keterangan ?>">
                        <i class="fa fa-edit"></i>
                    </button>
                </td>
            </tr>
        <?php }
        ?>
    </tbody>
</table>

<div class="modal fade" id="modalEdit" tabindex="-1" aria-labelledby="modalEditLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalEditLabel">Edit Transaksi</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="formEdit">
                    <input type="hidden" id="edit_id" name="edit_id">
                    <div class="form-group">
                        <label for="edit_kategori">Kategori</label>
                        <select name="edit_kategori" id="edit_kategori" class="form-control" required>
                            <option value="" disabled selected>Pilih Kategori</option>
                            <?php foreach ($kateg->result() as $row) { ?>
                                <option value="<?= $row->id ?>"><?= $row->name ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="edit_nominal">Nominal</label>
                        <input type="number" class="form-control" id="edit_nominal" name="edit_nominal" required>
                    </div>
                    <div class="form-group">
                        <label for="edit_keterangan">Keterangan</label>
                        <textarea name="edit_keterangan" id="edit_keterangan" class="form-control"></textarea>
                    </div>
                    <button type="submit" class="btn btn-success">Update</button>
                </form>
            </div>
        </div>
    </div>
</div>
