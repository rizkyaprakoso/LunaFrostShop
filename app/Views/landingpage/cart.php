<?php

    $nama_lengkap = "";
    $email = "";
    $alamat = "";

    try {
        $nama_lengkap = $_SESSION['nama_lengkap'];
        $email = $_SESSION['email'];
        $alamat = $_SESSION['alamat'];
    } catch (\Throwable $th) {
        //throw $th;
    }

?>

<!-- Masthead-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" />
<!-- <script src="/assets/js/jquery.min.js"></script> -->

<style>
    #card-img {
        height: 150px;
        width: 100%;
        object-fit: cover;
    }
</style>

<div class="page-heading" id="top">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="inner-content">
                    <h2>Checkout</h2>
                    <span>Lunar Frost Shop</span>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-lg mt-5">
    <?php if ($email) { ?>
        <div id="cartUI">
            <div class="row ">
                <div class="col-md-8 border-top border-bottom py-3">
                    <h4 style="font-weight: bold;">Informasi</h4>
                </div>
                <div class="col-md-4 border-top border-bottom py-3 text-center">
                    <h4 style="font-weight: bold;">Total</h4>
                </div>
            </div>
            <form method="post" action="">
                <textarea style="display: none;" name="products" id="products"></textarea>
                <div class="row">
                    <div class="col-md-8 py-3">
                        <input type="hidden" name="subtotal_input" id="subtotal_input" value="" required />

                        <div class="form-group">
                        <fieldset>
                            <label>Nama Lengkap</label>
                            <input value="<?php echo $nama_lengkap; ?>" class="form-control" required name="name" type="name" id="name" placeholder="Your name" required="">
                        </fieldset>
                        </div>
                        <div class="form-group">
                        <fieldset>
                            <label>Email</label>
                            <input readonly value="<?php echo $email; ?>" class="form-control" required name="email" type="email" id="email" placeholder="Your email" required="">
                        </fieldset>
                        </div>
                        <div class="form-group">
                        <fieldset>
                            <label>No Telpon</label>
                            <input value="" class="form-control" name="number" type="telepon" id="telepon" placeholder="Your number phone (Optional)">
                        </fieldset>
                        </div>
                        <div class="form-group">
                        <fieldset>
                            <label>Alamat</label>
                            <input value="<?php echo $alamat; ?>" class="form-control" required name="address" type="text" id="address" placeholder="Your address" required="">
                        </fieldset>
                        </div>

                        <hr class="my-4" />

                        <div id="list-product"></div>
                    </div>
                    <div class="col-md-4 py-3 ">
                        <div class="mb-3 text-center">
                            <h1 id="subtotal"></h1>

                        </div>
                        <div class="mb-3" id="checkout1">
                            <div class="mb-3">
                                <label for="" class="form-label">Pilih Pengiriman</label>
                                <select onchange="updateShippingCost()" class="form-control" name="jenis_pengiriman">
                                    <option value="jne_reg">JNE REG</option>
                                    <option value="jne_yes">JNE YES</option>
                                    <option value="jnt_reg">J&T REG</option>
                                    <option value="jnt_yes">J&T YES</option>
                                    <option value="sicepat_reg">SiCepat REG</option>
                                    <option value="sicepat_best">SiCepat BEST</option>
                                    <option value="pos_indonesia">Pos Indonesia</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="" class="form-label">Ongkos Kirim</label><br />
                                <input type="hidden" name="ongkir" value="15000" id="ongkir" />
                                <label id="ongkir_label">Rp 15.000</label>
                            </div>
                            <div class="mb-3" id="checkout">
                                <div class="mb-3 text-center">
                                    <button type="submit" class="btn btn-success btn-lg rounded-0 form-control" style="background: black;">Buat Pesanan</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    <?php } else { ?>
        <p class="text-center">Anda belum login <a href="/landingpage/login">silahkan masuk terlebih dahulu</a></p>
    <?php } ?>
</div>


<script src="/assets/js/index.js"></script>
<!-- <script>window.localStorage.removeItem('carts')</script> -->
<script>
    drawCart();
    
    async function hapusKeranjang(idPaket) {
        let carts = JSON.parse(window.localStorage.getItem('carts'));
        let paket = <?= $paket ?>;
        var subTotal = 0;
        let html = ``;
        if (carts) {
            if (carts.length > 0) {
                let newCart = [];
                carts.forEach(cart => {
                    if (cart.id_paket != idPaket) {
                        newCart.push(cart);
                    }
                });

                if (newCart.length > 0) {
                    await window.localStorage.setItem('carts', JSON.stringify(newCart));
                    drawCart();
                } else {
                    await window.localStorage.removeItem('carts');
                    drawCart();
                }
            }
        }
        location.reload();
    }

    async function drawCart() {
        $('.ktp').hide();
        $('#products').val(window.localStorage.getItem('carts'))
        let carts = JSON.parse(window.localStorage.getItem('carts'));
        let paket = <?= $paket ?>;
        var subTotal = 0;
        let html = ``;
        if (carts) {
            if (carts.length > 0) {
                carts.forEach(cart => {
                    let pak = paket.find(p => p.id == cart.id_paket);
                    let price = pak.price;
                    if (pak.price_disc > 0) {
                        price = pak.price_disc;
                    }
                    let total = price * cart.qty;
                    subTotal += total;
                    html += `<div class="row mb-3">
                                <div class="col-md-4">
                                    <img id="card-img" class="img-fluid" src="/paket/` + pak.image + `" alt="">
                                </div>
                                <div class="col-md-8">
                                    <h5>` + pak.title + `</h5>
                                    <p>Rp. ` + thousands_separators(price) + ` x ` + cart.qty + ` = Rp. ` + thousands_separators(total) + `</p>
                                    <a onclick="hapusKeranjang(${cart.id_paket})" class="btn btn-md btn-danger"><i class="fa fa-times"></i>&nbsp;&nbsp;Remove</a>
                                </div>
                            </div>`;

                    if (pak.category_id == 2) {
                        $('.ktp').show();
                    }
                });

                $('#subtotal').text('Rp. ' + thousands_separators(subTotal));
                $('#subtotal_input').val(subTotal)
            }
        } else {
            $('#cartUI').html(`<p class="text-center">Anda belum memasukkan produk dalam keranjang</p>`)
        }
        $('#list-product').html(html);
        updateSubtotal(subTotal);
    }

    function updateShippingCost() {
        const shippingRates = {
            'jne_reg': 15000,
            'jne_yes': 17000,
            'jnt_reg': 16000,
            'jnt_yes': 19000,
            'sicepat_reg': 23000,
            'sicepat_best': 27000,
            'pos_indonesia': 16000
        };

        let shippingSelect = document.querySelector('select[name="jenis_pengiriman"]');
        let selectedOption = shippingSelect.value;
        let shippingCost = shippingRates[selectedOption];

        document.getElementById('ongkir').value = shippingCost;
        document.getElementById('ongkir_label').innerText = 'Rp. ' + thousands_separators(shippingCost);

        let subTotal = parseInt(document.getElementById('subtotal_input').value) || 0;
        updateSubtotal(subTotal);
    }

    function updateSubtotal(subTotal) {
        let shippingCost = parseInt(document.getElementById('ongkir').value) || 0;
        let total = subTotal + shippingCost;
        document.getElementById('subtotal').innerText = 'Rp. ' + thousands_separators(total);
    }

    function thousands_separators(num) {
        return num.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ".");
    }

    function checkout(btn) {
        // Your checkout logic here
    }
</script>

<script>
    $(document).ready(function() {
        $('#nama').on('keypress', function(event) {
            var inputValue = $(this).val() + String.fromCharCode(event.which);
            var regex = /^[A-Za-z_ ]+$/;

            if (!regex.test(inputValue)) {
                event.preventDefault();
            }

            if (regex.test(inputValue)) {
                $('#invalid-feedback-nama').hide();
            } else {
                $('#invalid-feedback-nama').show();
            }
        });
        $('#nama').on('paste', function(event) {
            event.preventDefault();
            var pastedText = event.originalEvent.clipboardData.getData('text');
            var regex = /^[A-Za-z_ ]+$/;

            if (!regex.test(pastedText)) {
                // Handle invalid paste
            } else {
                $(this).val(pastedText);
            }
        });
    });
</script>