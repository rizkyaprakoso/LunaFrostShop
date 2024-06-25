<div class="page-heading" id="top">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="inner-content">
                    <h2>Check Our Products</h2>
                    <span>LunaFrost Shop</span>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- ***** Products Area Starts ***** -->
<section class="section" id="products">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-heading">
                    <h2>Our Latest Products</h2>
                    <span>Check out all of our products.</span>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <?php foreach ($paket as $p) { ?>
                <div class="col-lg-4">
                    <div class="item">
                        <div class="thumb">
                            <div class="hover-content">
                                <ul>
                                    <li><a href="/landingpage/detail-paket/<?= $p->id ?>"><i class="fa fa-eye"></i></a></li>
                                    <li><a href="/landingpage/detail-paket/<?= $p->id ?>"><i class="fa fa-star"></i></a></li>
                                    <li><a href="/landingpage/detail-paket/<?= $p->id ?>"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                            </div>
                            <img src="/paket/<?= $p->image ?>" alt="" style="width: 350px; height: 369px; object-fit: cover;">
                        </div>
                        <div class="down-content">
                            <h4><?= $p->title ?></h4>
                            <!-- <span>$120.00</span> -->
                            <?php if ($p->price_disc > 0) { ?>
                                <del><small class="card-text text-muted">Rp. <?= nilaiUang($p->price) ?></small></del>
                                <span>Rp <?= nilaiUang($p->price_disc) ?></span>
                            <?php } else { ?>
                                <span>Rp <?= nilaiUang($p->price) ?></span>
                            <?php } ?>
                            <ul class="stars">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                            </ul>
                        </div>
                    </div>
                </div>
            <?php } ?>
            <!-- <div class="col-lg-12">
                <div class="pagination">
                    <ul>
                        <li>
                            <a href="#">1</a>
                        </li>
                        <li class="active">
                            <a href="#">2</a>
                        </li>
                        <li>
                            <a href="#">3</a>
                        </li>
                        <li>
                            <a href="#">4</a>
                        </li>
                        <li>
                            <a href="#">></a>
                        </li>
                    </ul>
                </div>
            </div> -->
        </div>
    </div>
</section>
<!-- ***** Products Area Ends ***** -->