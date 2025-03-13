<table class="table table-bordered" id="tableIuran" width="100%" cellspacing="0">
    <thead>
        <tr>
            <th>No</th>
            <th>Deposit</th>
            <th>Nama Anggota</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $x = 1;
        $tahun = date('y');
        $bulanSekarang = date('n');
        foreach ($iuran as $row) { ?>
            <tr>
                <td><?= $x++; ?></td>
                <td> <?php if ($row->status_deposit != 1) : ?>
                <button type="button" class="btn btn-info deposit-btn" 
                        data-toggle="modal" 
                        data-target="#depositModal" 
                        data-id="<?= $row->id ?>">
                    Deposit
                </button>
            <?php else : ?>
                <span class="badge badge-success">Deposit Sudah Lunas</span>
            <?php endif; ?>
                </td>
                <td><?= $row->name ?></td>
                <td>
                    <?php for ($bulan = 1; $bulan <= $bulanSekarang; $bulan++):
                        $periode = sprintf('%02d', $bulan) . $tahun; // Format MMYY
                        $status = isset($row->iuran_status[$periode]) ? $row->iuran_status[$periode] : 0;

                        if ($status != 1): ?>
                            <button type="button" class="btn btn-primary iuran-btn"
                                title="Bayar Iuran <?= $periode ?>"
                                data-id="<?= $row->id ?>"
                                data-periode="<?= $periode ?>">
                                <i class="fa fa-coins"></i> <?= $periode ?>
                            </button>
                    <?php endif;
                    endfor; ?>
                </td>
            </tr>
        <?php } ?>
    </tbody>
</table>

<!-- Modal -->
<div class="modal fade" id="iuranModal" tabindex="-1" aria-labelledby="iuranModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="iuranModalLabel">Pembayaran Iuran</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3">
            <label for="periode" class="form-label">Periode</label>
            <input type="text" class="form-control" id="periode" readonly>
          </div>
          <div class="mb-3">
            <label for="tanggal" class="form-label">Tanggal & Waktu</label>
            <input type="date" class="form-control" id="tanggal">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary iuran">Bayar</button>
      </div>
    </div>
  </div>
</div>


<!-- deposit -->
<div class="modal fade" id="depositModal" tabindex="-1" role="dialog" aria-labelledby="depositModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="depositModalLabel">Deposit</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="depositForm">
          <!-- <input type="hidden" id="anggota_id" name="anggota_id" value="123"> -->
          <div class="form-group">
            <label for="depositAmount">Jumlah Deposit</label>
            <input type="number" class="form-control" id="depositAmount" name="depositAmount" value="500000">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
        <button type="button" class="btn btn-primary" id="submitDeposit">Submit</button>
      </div>
    </div>
  </div>
</div>
