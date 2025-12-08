<style>
    .select2-container--default .select2-selection--single {
        background-color: #fff;
        border: 1px solid #ced4da !important;
        border-radius: .25rem !important;
        height: calc(1.5em + .75rem + 2px) !important;
        padding: .375rem .75rem;
        display: flex;
        align-items: center;
    }

    /* Hilangkan background gradient default Select2 */
    .select2-container .select2-selection--single {
        background-image: none !important;
    }

    /* Text render */
    .select2-container--default .select2-selection--single .select2-selection__rendered {
        color: #495057;
        line-height: normal !important;
        padding-left: 0 !important;
    }

    /* Arrow menyesuaikan tinggi */
    .select2-container--default .select2-selection--single .select2-selection__arrow {
        height: 100% !important;
        right: 10px !important;
    }

    .row-bawah {
        border-bottom: 3px solid #333;
        /* atur ketebalan dan warna */
        padding-bottom: 5px;
        /* memberi jarak agar tidak mepet */
        margin-bottom: 10px;
    }
</style>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><?= $subtitle ?></h6>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="kode_trans">Kode Transaksi</label>
                        <input type="text" readonly name="kode_trans" id="kode_trans" class="form-control" value="<?= $kode ?> ">
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="form-group">
                        <label for="tgl_transaksi">Tanggal</label>
                        <input type="date" name="tgl_transaksi" id="tgl_transaksi" class="form-control" value="<?= date('Y-m-d') ?>">
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="nama_pembeli">Nama Pembeli</label>
                        <input type="text" name="pembeli" id="pembeli" class="form-control" required>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Barang</label>
                        <select name="barang" id="barang" class="form-control select2" required>
                            <option value="" disabled selected>Pilih Barang</option>
                            <?php
                            foreach ($barang as $row) { ?>
                                <option value="<?= $row->id ?>"><?= $row->nama_barang ?></option>
                            <?php }
                            ?>
                        </select>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Harga Modal</label>
                        <input type="text" name="modal" id="modal" class="form-control" readonly required>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Harga Jual</label>
                        <input type="text" name="jual" id="jual" class="form-control" readonly required>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Tenor (Bulan)</label>
                        <select name="tenor" id="tenor" class="form-control" required>
                            <option value="" disabled selected>Pilih Tenor Pembayaran</option>
                            <?php foreach ($tenor->result() as $row) { ?>
                                <option value="<?= $row->tempo ?>"><?= $row->tempo ?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Prosentase</label>
                        <input type="text" name="prosentase" id="prosentase" class="form-control">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">DP (Uang Muka)</label>
                        <input type="text" name="dp" id="dp" class="form-control" readonly required>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="exampleFormControlInput1">Cicilan Per Bulan</label>
                        <input type="text" name="cicilan" id="cicilan" class="form-control" readonly>
                    </div>
                </div>
            </div>
            <button type="submit" class="btn btn-primary" id="simpan-data"><i class="fa fa-save"></i> | Simpan Transaksi</button>
        </div>
    </div>

</div>
<!-- /.container-fluid -->