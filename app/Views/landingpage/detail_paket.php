<script>
    const idPaket = "<?= $paket->id ?>";

    function addCart() {
        let carts = window.localStorage.getItem('carts');
        let qty = parseInt($('#qty').val());
        let _idPaket = "<?= $paket->id ?>";
        // let idPaket = 'some_unique_id'; // Replace this with the actual id_paket value

        if (carts) {
            carts = JSON.parse(carts);
            let cartItem = carts.find(item => item.id_paket === _idPaket);
            if (cartItem) {
                cartItem.qty = parseInt(cartItem.qty) + qty; // Update quantity
            } else {
                carts.push({
                    id_paket: _idPaket,
                    qty: qty
                });
            }
        } else {
            carts = [{
                id_paket: _idPaket,
                qty: qty
            }];
        }
        window.localStorage.setItem("carts", JSON.stringify(carts));
        window.location.href = "<?= base_url('/landingpage/cart') ?>";
    }

    document.addEventListener('DOMContentLoaded', function() {
        const minusButton = document.querySelector('.minus');
        const plusButton = document.querySelector('.plus');
        const qtyInput = document.getElementById('qty');

        minusButton.addEventListener('click', function() {
            let currentValue = parseInt(qtyInput.value);
            if (currentValue > parseInt(qtyInput.min)) {
                qtyInput.value = currentValue - 1;
            }
        });

        plusButton.addEventListener('click', function() {
            let currentValue = parseInt(qtyInput.value);
            qtyInput.value = currentValue + 1;
        });
    });
</script>

<div class="page-heading" id="top">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="inner-content">
                    <h2><?= $paket->title ?></h2>
                    <span>Luna Frost Shop</span>
                </div>
            </div>
        </div>
    </div>
</div>

<section class="section" id="product">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
            <div class="left-images">
                <img src="/paket/<?= $paket->image ?>" alt="" style="width: 730px; height: 379px; object-fit: cover;">
            </div>
        </div>
        <div class="col-lg-4">
            <div class="right-content">
                <h4><?= $paket->title ?></h4>
                <?php if ($paket->price_disc > 0) { ?>
                    <del><small class="card-text text-muted">Rp. <?= nilaiUang($paket->price) ?></small></del>
                    <br>
                    <span class="price">Rp. <?= nilaiUang($paket->price) ?></span>

                <?php } else { ?>
                    <span class="price">Rp. <?= nilaiUang($paket->price) ?></span>
                <?php } ?>

                 <!-- product description -->
                <?= $paket->description ?></p>

                <ul class="stars">
                    <li><i class="fa fa-star"></i></li>
                    <li><i class="fa fa-star"></i></li>
                    <li><i class="fa fa-star"></i></li>
                    <li><i class="fa fa-star"></i></li>
                    <li><i class="fa fa-star"></i></li>
                </ul>
                <div class="quantity-content">
                    <div class="left-content">
                        <h6>No. of Orders</h6>
                    </div>
                    <div class="right-content">
                        <div class="quantity buttons_added">
                            <input type="button" value="-" class="minus"><input id="qty" type="number" step="1" min="1" max="" name="quantity" value="1" title="Qty" class="input-text qty text" size="4" pattern="" inputmode=""><input type="button" value="+" class="plus">
                        </div>
                    </div>
                </div>
                <div class="total">
                    <?php
                        $id_session = 0;
                        try {
                            $id_session = $_SESSION['id'];
                        } catch (\Throwable $th) {
                            //throw $th;
                        } 
                        if ($id_session) { 
                    ?>
                        <div class="main-border-button"><a style="cursor: pointer;" onclick="addCart()">Add To Cart</a></div>
                    <?php } else { ?>
                        <div class="main-border-button"><a href="/landingpage/login">Silahkan Login Terlebih Dahulu</a></div>
                    <?php } ?>
                </div>
            </div>
        </div>
        </div>
    </div>
</section>