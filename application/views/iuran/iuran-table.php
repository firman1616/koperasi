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
        $tahun = date('y');
        $bulanSekarang = date('n');
        foreach ($iuran as $row) { ?>
            <tr>
                <td><?= $x++; ?></td>
                <td><?= $row->name ?></td>
                <td>
                    <?php for ($bulan = 1; $bulan <= $bulanSekarang; $bulan++):
                        $periode = sprintf('%02d', $bulan) . $tahun; // Format MMYY
                        $status = isset($row->iuran_status[$periode]) ? $row->iuran_status[$periode] : 0;

                        if ($status != 1): ?>
                            <button type="button" class="btn btn-primary iuran-btn"
                                title="Iuran <?= $periode ?>"
                                data-id="<?= $row->id ?>"
                                data-periode="<?= $periode ?>"
                                onclick="showModal('<?= $periode ?>')">
                                <i class="fa fa-coins"></i> <?= $periode ?>
                            </button>
                    <?php endif;
                    endfor; ?>
                    <!-- <button type="button" class="btn btn-primary iuran-btn" title="iuran <?= date('my') ?>" data-id="<?= $row->id ?>">
                        <i class="fa fa-coins"></i>
                    </button> -->
                </td>
            </tr>
        <?php  }
        ?>
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
        <!-- <button type="button" class="btn btn-secondary" id="closeModalBtn">Tutup</button> -->
        <button type="submit" class="btn btn-primary" id="iuran-btn">Bayar</button>
      </div>
    </div>
  </div>
</div>