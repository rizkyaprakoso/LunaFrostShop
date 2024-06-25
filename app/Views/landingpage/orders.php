
<?php
function formatRupiah($amount) {
    return 'Rp ' . number_format($amount, 0, ',', '.');
}
?>

<br /><br /><br /><br />
<div class="mt-5" style="padding: 2rem;">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <!-- <div class="card-header">
                    <h4>Konfirmasi Pembayaran</h4>
                </div> -->
                <div class="card-body">
                    <!-- <form method="post" enctype="multipart/form-data" action=""> -->
                        <h5 class="text-center mb-3" style="font-weight: 600">Order Saya</h5>
                        <?php if (!empty($transaksi)) { ?>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Nama Lengkap</th>
                                        <th>Email</th>
                                        <th>No Telpon</th>
                                        <th>Alamat</th>
                                        <th>SubTotal</th>
                                        <th>Ongkir</th>
                                        <th>Total</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($transaksi as $t) { ?>
                                            <td><?php echo $t->kode_transaksi; ?></td>
                                            <td><?php echo $t->nama; ?></td>
                                            <td><?php echo $t->email; ?></td>
                                            <td><?php echo $t->telepon; ?></td>
                                            <td><?php echo $t->address; ?></td>
                                            <td><?php echo formatRupiah($t->subtotal); ?></td>
                                            <td><?php echo formatRupiah($t->ongkir); ?></td>
                                            <td><?php echo formatRupiah($t->total); ?></td>
                                            <td>
                                                <?php if ($t->is_paid == 1) { ?>
                                                    <a href="#" class="btn btn-sm btn-success">Sudah Dibayar</a>
                                                <?php } else { ?>
                                                    <?php if ($t->bukti_transfer) { ?>
                                                        <a href="#" class="btn btn-sm btn-primary">Menunggu Konfirmasi</a>
                                                    <?php } else { ?>
                                                        <a href="#" class="btn btn-sm btn-danger">Belum Dibayar</a>
                                                    <?php } ?>
                                                <?php } ?>
                                            </td>
                                            <td>
                                                <?php if ($t->is_paid != 1) { ?>
                                                <a class="btn btn-sm btn-info mb-2" href="/landingpage/bayar?kode_transaksi=<?php echo $t->kode_transaksi; ?>">Unggah Bukti Pembayaran</a>
                                                <?php } ?>
                                                <a class="btn btn-sm btn-primary" href="/landingpage/orderdetail?kode_transaksi=<?php echo $t->kode_transaksi; ?>">Lihat Detail</a>
                                            </td>
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        <?php } else { ?>
                            <p class="text-center">Anda belum memiliki pesanan <a href="/landingpage/paket">yuk belanja sekarang</a></p>
                        <?php } ?>
                    <!-- </form> -->
                </div>
            </div>
        </div>
    </div>
</div>