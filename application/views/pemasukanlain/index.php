<!-- Begin Page Content -->
<div class="container-fluid">

<!-- Page Heading -->
<h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
<div class="card shadow mb-4">
    
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><?= $subtitle ?></h6>
        </div>
       
        <div class="card-body">
            <div class="table-responsive">
            <button type="button" class="btn btn-primary" id="btnTambah" style="margin-bottom: 10px;">
                    <i class="fa fa-plus"></i> | Tambah Transaksi
                </button>
                <div id="div-table-pemasukan-lain"></div>
            </div>
        </div>
    </div>

</div>

<div class="modal fade" id="modalTambah" tabindex="-1" aria-labelledby="modalTambahLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalTambahLabel">Tambah Transaksi</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="formTambah">
                    <div class="form-group">
                        <label for="namaTransaksi">Kategori</label>
                        <select name="kategori" id="kategori" class="form-control" required>
                            <option value="" disabled selected>Pilih Kategori</option>
                            <?php foreach ($kateg->result() as $row) { ?>
                                <option value="<?= $row->id ?>"><?= $row->name ?></option>
                            <?php } 
                            ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="nominal">Nominal</label>
                        <input type="number" class="form-control" id="nominal" name="nominal" required>
                    </div>
                    <div class="form-group">
                        <label for="nominal">Keterangan</label>
                        <textarea name="keterangan" id="keterangan" class="form-control"></textarea>
                    </div>
                    <button type="submit" class="btn btn-success">Simpan</button>
                </form>
            </div>
        </div>
    </div>
</div>