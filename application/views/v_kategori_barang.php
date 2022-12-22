<!-- <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>

    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img class="d-block w-100" src="<?= base_url() ?>assets/slider/slider5.jpg">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="<?= base_url() ?>assets/slider/slider6.jpg">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="<?= base_url() ?>assets/slider/slider7.jpg">
        </div>
        <div class="carousel-item">
            <img class="d-block w-100" src="<?= base_url() ?>assets/slider/slider8.jpg">
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div> -->


<div class="card card-solid">
    <div class="card-body pb-0">
        <div class="row d-flex align-items-stretch">

            <?php foreach ($barang as $key => $value) { ?>

                <div class="col-sm-4 d-flex align-items-stretch">
                    <div class="card bg-light">
                        <div class="card-header text-muted border-bottom-0">
                            <h2 class="lead"><b><?= $value->nama_barang ?></b></h2>
                            <p class="text-muted text-sm"><b>Kategori: </b> <?= $value->nama_kategori ?></p>
                        </div>
                        <div class="card-body pt-0">
                            <div class="row">
                                <div class="col-12 text-center">
                                    <img src="<?= base_url('assets/gambar/' . $value->gambar) ?>" alt="" class="img-fluid" width="300px">
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="txt-left">
                                        Rp <?= number_format($value->harga, 0) ?>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="text-right">
                                        <a href="<?= base_url('home/detail_barang/' . $value->id_barang) ?>" class="btn btn-sm btn-primary ">
                                            <i class="fas fa-eye"></i>
                                        </a>
                                        <!-- <button type="submit" class="btn btn-sm btn-primary swalDefaultSuccess">
                                            <i class="fas fa-cart-plus"></i> Add
                                        </button> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            <?php } ?>

        </div>
    </div>
</div>
