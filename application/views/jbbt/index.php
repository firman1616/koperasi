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
                <a href="<?= site_url('JBBT/vtambah') ?>" class="btn btn-primary" style="margin-bottom: 10px;" ><i class="fa fa-plus"></i> | Tambah Data</a>
                <div id="div-table-jbbt"></div>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->

<!-- modal pembayaran -->
 <div class="modal fade" id="modalBayar" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">

      <div class="modal-header">
        <h5 class="modal-title">Update Pembayaran Cicilan</h5>
        <button type="button" class="close" data-dismiss="modal">
          &times;
        </button>
      </div>

      <div class="modal-body">
        <input type="hidden" id="id_cicilan">

        <div class="form-group">
          <label>Periode</label>
          <input type="text" id="periode" class="form-control" readonly>
        </div>

        <div class="form-group">
          <label>Tanggal Dibayar</label>
          <input type="date" id="tgl_dibayar" class="form-control" value="<?= date('Y-m-d') ?>">
        </div>
      </div>

      <div class="modal-footer">
        <button id="btnUpdate" class="btn btn-primary">Update Pembayaran</button>
      </div>

    </div>
  </div>
</div>
