<!-- Begin Page Content -->
<style>
    /* .container-box {
        padding: 20px;
        border-radius: 10px;
        background-color: white;
        margin-bottom: 20px;
    } */

    .nota {
        float: right;
        font-weight: bold;
        color: gray;
    }

    .total {
        float: right;
        font-size: 50px;
        font-weight: bold;
        color: red;
        clear: both;
    }

    .button-group {
        display: flex;
        gap: 10px;
    }
</style>

<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title ?></h1>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary"><?= $subtitle ?></h6>
        </div>
        <div class="card-body">


            <!-- <div class="container mt-12"> -->
            <!-- <div class="container-box mt-3"> -->
                <div class="row">
                    <div class="col-md-6">
                        <div class="mb-3">
                            <label class="form-label"><strong>Barcode</strong></label>
                            <select name="" id="" class="form-control">
                                <option value="">Barang</option>
                            </select>
                        </div>
                        <div class="mb-3">
                            <label class="form-label"><strong>Jumlah</strong></label>
                            <input type="number" class="form-control" placeholder="Jumlah">
                        </div>
                        <div class="button-group">
                            <button class="btn btn-success">Tambah</button>
                            <button class="btn btn-success">Bayar</button>
                        </div>
                    </div>
                    <div class="col-md-6 text-end">
                        <div class="nota">Nota: X92AZMY66283B2W</div>
                        <div class="total">0</div>
                    </div>
                </div>
            <!-- </div> -->
            <div class="table-responsive" style="margin-top: 15px;">
                <div id="div-table-transaksi"></div>
            </div>
            <!-- </div> -->


        </div>
    </div>
</div>
<!-- /.container-fluid -->