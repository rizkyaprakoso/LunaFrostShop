<!-- ***** Main Banner Area Start ***** -->
<div class="main-banner" id="top">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6">
                <div class="left-content">
                    <div class="thumb">
                        <div class="inner-content">
                            <h4>We Are LunaFrost</h4>
                            <span>Your Premier Destination For Chic, Stylish, and Cozy Clothing</span>
                            <div class="main-border-button">
                                <a href="/landingpage/paket/">Purchase Now!</a>
                            </div>
                        </div>
                        <img src="/assets_v2/images/banner3.jpeg" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="right-content">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="right-first-image">
                                <div class="thumb">
                                    <div class="inner-content">
                                        <h4>Women</h4>
                                        <span>Best Clothes For Women</span>
                                    </div>
                                    <div class="hover-content">
                                        <div class="inner">
                                            <h4>Women</h4>
                                            <p>Explore our latest collection of trendy and stylish clothing for women.</p>
                                            <div class="main-border-button">
                                                <a href="/landingpage/paket?category=2">Discover More</a>
                                            </div>
                                        </div>
                                    </div>
                                    <img src="/assets_v2/images/women4.jpeg" alt="woman">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="right-first-image">
                                <div class="thumb">
                                    <div class="inner-content">
                                        <h4>Men</h4>
                                        <span>Best Clothes For Men</span>
                                    </div>
                                    <div class="hover-content">
                                        <div class="inner">
                                            <h4>Men</h4>
                                            <p>Explore the finest selection of formal and stylish clothing for men.</p>
                                            <div class="main-border-button">
                                                <a href="/landingpage/paket?category=1">Discover More</a>
                                            </div>
                                        </div>
                                    </div>
                                    <img src="/assets_v2/images/men3.jpeg">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="right-first-image">
                                <div class="thumb">
                                    <div class="inner-content">
                                        <h4>Kids</h4>
                                        <span>Best Clothes For Kids</span>
                                    </div>
                                    <div class="hover-content">
                                        <div class="inner">
                                            <h4>Kids</h4>
                                            <p>Find fun and comfortable outfits for your kids in our new collection.</p>
                                            <div class="main-border-button">
                                                <a href="/landingpage/paket?category=3">Discover More</a>
                                            </div>
                                        </div>
                                    </div>
                                    <img src="/assets_v2/images/kids2.jpeg" >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ***** Main Banner Area End ***** -->

<!-- ***** Men Area Starts ***** -->
<section class="section" id="men">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="section-heading">
                    <h2>Men's Latest</h2>
                    <span>Explore our newest collection of formal and stylish outfits for men.</span>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="men-item-carousel">
                    <div class="owl-men-item owl-carousel">
                        <?php foreach ($men as $p) { ?>
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
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Men Area Ends ***** -->

<!-- ***** Women Area Starts ***** -->
<section class="section" id="women">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="section-heading">
                    <h2>Women's Latest</h2>
                    <span>Explore our newest collection of chic and stylish outfits for women.</span>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="women-item-carousel">
                    <div class="owl-women-item owl-carousel">
                        <?php foreach ($women as $p) { ?>
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
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Women Area Ends ***** -->

<!-- ***** Kids Area Starts ***** -->
<section class="section" id="kids">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="section-heading">
                    <h2>Kid's Latest</h2>
                    <span>Explore our newest collection of fun and comfortable outfits for kids.</span>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="kid-item-carousel">
                    <div class="owl-kid-item owl-carousel">
                        <?php foreach ($kids as $p) { ?>
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
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Kids Area Ends ***** -->

<!-- ***** Explore Area Starts ***** -->
<section class="section" id="explore">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="left-content">
                    <h2>Explore Our Products</h2>
                    <span>At Luna Frost Shop, we bring you an exclusive selection of fashionable clothing for men, women, and kids. Our goal is to provide you with the best styles and quality to enhance your wardrobe. Explore our wide range of collections and find the perfect outfit for any occasion.</span>
                    <div class="quote">
                        <i class="fa fa-quote-left"></i><p>Fashion is the armor to survive the reality of everyday life.</p>
                    </div>
                    <p>We offer a variety of categories to ensure everyone in the family can find something they love. Enjoy a seamless shopping experience and the latest fashion trends at affordable prices. Our team is committed to making your shopping experience delightful and satisfying.</p>
                    <div class="main-border-button">
                        <a href="/landingpage/paket/">Discover More</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="right-content">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="leather">
                                <h4>Summer Dress</h4>
                                <span>Latest Collection</span>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="first-image">
                                <img src="/assets_v2/images/floraldress.jpeg" style="height: 250px; width: 250px;" alt="">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="second-image">
                                <img src="/assets_v2/images/men1.jpeg" style="height: 250px; width: 250px;" alt="">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="types">
                                <h4>Different Types</h4>
                                <span>Over 304 Products</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Explore Area Ends ***** -->

<!-- ***** Social Area Starts ***** -->
<section class="section" id="social">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-heading">
                    <h2>Social Media</h2>
                    <span>Explore our social media</span>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row images">
            <div class="col-2">
                <div class="thumb">
                    <div class="icon">
                        <a href="http://instagram.com">
                            <h6>Fashion</h6>
                            <i class="fa fa-instagram"></i>
                        </a>
                    </div>
                    <img src="/assets_v2/images/instagram-01.jpg" style="height: 200px; width: 200px;" alt="">
                </div>
            </div>
            <div class="col-2">
                <div class="thumb">
                    <div class="icon">
                        <a href="http://instagram.com">
                            <h6>Suits</h6>
                            <i class="fa fa-instagram"></i>
                        </a>
                    </div>
                    <img src="/assets_v2/images/instagram-02.jpeg" style="height: 200px; width: 200px;" alt="">
                </div>
            </div>
            <div class="col-2">
                <div class="thumb">
                    <div class="icon">
                        <a href="http://instagram.com">
                            <h6>Brand</h6>
                            <i class="fa fa-instagram"></i>
                        </a>
                    </div>
                    <img src="/assets_v2/images/instagram-03.jpg" style="height: 200px; width: 200px;" alt="">
                </div>
            </div>
            <div class="col-2">
                <div class="thumb">
                    <div class="icon">
                        <a href="http://instagram.com">
                            <h6>Men</h6>
                            <i class="fa fa-instagram"></i>
                        </a>
                    </div>
                    <img src="/assets_v2/images/instagram-08.jpeg" style="height: 200px; width: 200px;" alt="">
                </div>
            </div>
            <div class="col-2">
                <div class="thumb">
                    <div class="icon">
                        <a href="http://instagram.com">
                            <h6>Leather</h6>
                            <i class="fa fa-instagram"></i>
                        </a>
                    </div>
                    <img src="/assets_v2/images/instagram-05.jpeg" style="height: 200px; width: 200px;" alt="">
                </div>
            </div>
            <div class="col-2">
                <div class="thumb">
                    <div class="icon">
                        <a href="http://instagram.com">
                            <h6>Kids</h6>
                            <i class="fa fa-instagram"></i>
                        </a>
                    </div>
                    <img src="/assets_v2/images/instagram-11.jpeg" style="height: 200px; width: 200px;" alt="">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Social Area Ends ***** -->

<!-- ***** Subscribe Area Starts ***** -->
<div class="subscribe">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="section-heading">
                    <h2>By Subscribing To Our Newsletter You Can Get 30% Off</h2>
                    <span>Join us now!</span>
                </div>
                <form id="subscribe" action="" method="get">
                    <div class="row">
                        <div class="col-lg-5">
                        <fieldset>
                            <input name="name" type="text" id="name" placeholder="Your Name" required="">
                        </fieldset>
                        </div>
                        <div class="col-lg-5">
                        <fieldset>
                            <input name="email" type="text" id="email" pattern="[^ @]*@[^ @]*" placeholder="Your Email Address" required="">
                        </fieldset>
                        </div>
                        <div class="col-lg-2">
                        <fieldset>
                            <button type="submit" id="form-submit" class="main-dark-button"><i class="fa fa-paper-plane"></i></button>
                        </fieldset>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-4">
                <div class="row">
                    <div class="col-6">
                        <ul>
                            <li>Store Location:<br><span>3126 Soho, New York, United States</span></li>
                            <li>Phone:<br><span>+17748093211</span></li>
                            <li>Office Location:<br><span>Manhattan, New York</span></li>
                        </ul>
                    </div>
                    <div class="col-6">
                        <ul>
                            <li>Work Hours:<br><span>07:30 AM - 9:30 PM Daily</span></li>
                            <li>Email:<br><span>lunafrostshop@gmail.com</span></li>
                            <li>Social Media:<br><span><a href="#">Facebook</a>, <a href="#">Instagram</a>, <a href="#">X</a>, <a href="#">Linkedin</a></span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ***** Subscribe Area Ends ***** -->