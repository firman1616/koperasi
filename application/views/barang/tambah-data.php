<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><?= $subtitle ?></h6>
        </div>
        <div class="card-body">
            <form action="<?= site_url('Barang/tambah_data') ?>" method="post">
                <label class="form-label">Kode Barang</label>
                <input type="text" class="form-control" id="kode_barang" name="kode_barang" required>

                <label class="form-label">Nama Barang</label>
                <input type="text" class="form-control" id="nama_barang" name="nama_barang" required>

                <div class="row">
                    <div class="col">
                        <label class="form-label">Harga Beli</label>
                        <input type="number" class="form-control" id="harga_beli" name="harga_beli" required>
                    </div>
                    <div class="col">
                        <label class="form-label">Harga Jual</label>
                        <input type="number" class="form-control" id="harga_jual" name="harga_jual" required>
                    </div>
                </div>

                <div class="row">
                    <div class="col">
                        <label class="form-label">QTY</label>
                        <input type="text" class="form-control" id="qty" name="qty" required>
                    </div>
                    <div class="col">
                        <label class="form-label">UoM</label>
                        <select name="uom" id="uom" class="form-control" required>
                            <option value="" disabled selected>Pilih satuan</option>
                            <?php foreach ($uom as $row) { ?>

                                <option value="<?= $row->kode ?>"><?= $row->uom ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary" style="margin-top: 10px;"><i class="fa fa-save"></i> | Simpan Data</button>
                
            </form>
        </div>
    </div>

</div>
<!-- /.container-fluid -->