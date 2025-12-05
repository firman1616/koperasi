<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>

    <div class="row">
        <div class="col">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Tambah Data</h6>
                </div>
                <div class="card-body">
                    <form action="" id="masterTempoForm" name="masterTempoForm" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="id" id="id">
                        <label class="form-label">Bulan</label>
                        <input type="number" class="form-control" id="bulan" name="bulan" required>
                        <label class="form-label">Prosentase (%)</label>
                        <input type="number" class="form-control" id="prosentase" name="prosentase" required>
                        <button type="submit" class="btn btn-primary" id="save-data" style="margin-top: 10px;"><i class="fa fa-save"></i> | Simpan Data</button>
                    </form>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary"><?= $subtitle ?></h6>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <div id="div-table-master-tempo"></div>
                    </div>
                </div>
            </div>
        </div>


    </div>


</div>
<!-- /.container-fluid -->