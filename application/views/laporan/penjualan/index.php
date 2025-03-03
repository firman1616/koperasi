<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
    <div class="card shadow mb-4 col-lg-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><?= $subtitle ?></h6>
        </div>
        <div class="card-body">
            <label class="label">Tanggal Transaksi</label>
            <div class="row" style="margin-bottom: 5px;">
                <div class="col">
                    <input type="date" class="form-control" name="date_start" id="date_start">
                </div>
                <div class="col">
                    <input type="date" class="form-control" name="date_end" id="date_end">
                </div>
            </div>
            <button type="button" class="btn btn-primary">Lihat</button>
            <button type="button" class="btn btn-success">Export</button>
        </div>
    </div>

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Basic Card Example</h6>
        </div>
        <div class="card-body">
            The styling for this basic card example is created by using default Bootstrap
            utility classes. By using utility classes, the style of the card component can be
            easily modified with no need for any custom CSS!
        </div>
    </div>
</div>
<!-- /.container-fluid -->