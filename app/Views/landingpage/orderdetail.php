
<?php
function formatRupiah($amount) {
    return 'Rp ' . number_format($amount, 0, ',', '.');
}
?>

<br /><br /><br /><br />
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <!-- <div class="card-header">
                    <h4>Konfirmasi Pembayaran</h4>
                </div> -->
                <div class="card-body">
                    <!-- <form method="post" enctype="multipart/form-data" action=""> -->
                        <?php if ($transaksi) { ?>
                            <input type="hidden" name="kode_transaksi" value="<?php echo $kode_transaksi; ?>" />
                            <h5 class="text-center mb-3" style="font-weight: 600">Order Detail <?php echo $kode_transaksi; ?></h5>
                            <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <th>Nama Bank</th>
                                    <th>No Rekening</th>
                                    <th>Atas Nama</th>
                                </tr>
                                <tr>
                                    <td>BCA</td>
                                    <td>7111 123 123</td>
                                    <td>Lunar Frost Shop</td>
                                </tr>
                            </table>
                            </div>
                            <hr />
                            <div class="form-group">
                                <label for="nama">Nama Lengkap</label>
                                <input readonly type="text" class="form-control" id="nama" name="nama" value="<?php echo $transaksi->nama; ?>" required>
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input readonly type="email" class="form-control" id="email" name="email" value="<?php echo $transaksi->email; ?>" required>
                            </div>
                            <div class="form-group">
                                <label for="alamat">Alamat</label>
                                <input readonly type="text" class="form-control" id="alamat" name="alamat" value="<?php echo $transaksi->address; ?>" required>
                            </div>
                            <div class="form-group">
                                <label for="alamat">Daftar Produk</label>
                                <a href="#" class="btn btn-md btn-primary w-100" data-toggle="modal" data-target="#productModal">Klik Disini</a>
                            </div>
                            <div class="form-group">
                                <label for="alamat">Subtotal</label>
                                <input readonly type="text" class="form-control" id="subtotal" name="subtotal" value="<?php echo formatRupiah($transaksi->subtotal); ?>" required>
                            </div>
                            <div class="form-group">
                                <label for="alamat">Ongkir</label>
                                <input readonly type="text" class="form-control" id="ongkir" name="ongkir" value="<?php echo formatRupiah($transaksi->ongkir); ?>" required>
                            </div>
                            <div class="form-group">
                                <label for="alamat">Total</label>
                                <input readonly type="text" class="form-control" id="total" name="total" value="<?php echo formatRupiah($transaksi->total); ?>" required>
                            </div>
                        <?php } else { ?>
                            <p class="text-center">Pesanan Anda tidak ditemukan</p>
                        <?php } ?>
                    <!-- </form> -->
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="productModal" tabindex="-1" aria-labelledby="productModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="productModalLabel">Daftar Produk</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="table-responsive">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Nama Produk</th>
                                <th>Harga</th>
                                <th>Jumlah</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            // Loop through products and display in table
                            foreach ($products as $product) {
                                $price = $product['product']->price;
                                $total = $price * $product['qty'];
                                echo "<tr>
                                        <td>{$product['product']->title}</td>
                                        <td>" . formatRupiah($product['product']->price) . "</td>
                                        <td>{$product['qty']}</td>
                                        <td>" . formatRupiah($total) . "</td>
                                      </tr>";
                            }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>