<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" />
<section class="page-section bg-light mt-5" id="">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Re-Schedule</h2>
            <h3 class="section-subheading text-muted">Tentukan Tanggal "Re-Schedule" Sesuai kebutuhan Anda</h3>
        </div>

        <div class="row mb-5">
            <div class="col-12 col-sm-12 col-md-12" style="width: 45%; margin: auto;">
                <?php if (!$_result) { ?>
                <form method="get" action="/landingpage/reschedule">
                    <div>
                        <div class="form-group">
                            <label>Masukkan Email</label>
                            <input required type="text" class="form-control rounded-0" name="email" />
                        </div>
                        <div class="form-group mt-3">
                            <label>Masukkan Kode Transaksi</label>
                            <input required type="text" class="form-control rounded-0" name="nomor_transaksi" />
                        </div>
                        <div class="form-group mt-3 text-center">
                            <button class="btn btn-md btn-primary">Cari Order</button>
                        </div>
                    </div>
                </form>
                <?php } else { ?>
                    <form method="get" action="/landingpage/reschedule">
                        <input type="hidden" name="change_date" value="true" />
                        <input type="hidden" name="email" value="<?php echo $email ?>" />
                        <input type="hidden" name="nomor_transaksi" value="<?php echo $transaksi_id ?>" />
                        <div>
                            <div class="form-group">
                                <label>Pilih Tanggal</label>
                                <input required type="text" class="form-control rounded-0" name="tanggal" id="tanggal" value="<?php echo $_result[0]->tanggal; ?>" />
                            </div>
                            <div class="form-group mt-3">
                                <label>Pilih Jam</label>
                                <input required type="text" class="form-control rounded-0" name="jam" id="jam" value="<?php echo $_result[0]->jam; ?>" />
                            </div>
                            <div class="form-group mt-3 text-center">
                                <button class="btn btn-md btn-primary">Re-Schedule Jadwal</button>
                            </div>
                        </div>
                    </form>
                <?php } ?>
            </div>
        </div>
    </div>
</section>

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.19.1/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>

<script>
    var today = new Date();
    var minDate = today.setDate(today.getDate() + 1);

    $('#tanggal').datetimepicker({
        useCurrent: false,
        format: "YYYY-MM-DD",
        minDate: minDate,
        icons: {
            time: "fa fa-clock-o",
            date: "fa fa-calendar",
            up: "fa fa-arrow-up",
            down: "fa fa-arrow-down",
            previous: "fa fa-chevron-left",
            next: "fa fa-chevron-right",
            today: "fa fa-clock-o",
            clear: "fa fa-trash-o"
        }
    });

    var firstOpen = true;
    var time;

    $('#jam').datetimepicker({
        enabledHours: [9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20],
        useCurrent: false,
        format: "HH:mm",
        icons: {
            time: "fa fa-clock-o",
            date: "fa fa-calendar",
            up: "fa fa-arrow-up",
            down: "fa fa-arrow-down",
            previous: "fa fa-chevron-left",
            next: "fa fa-chevron-right",
            today: "fa fa-clock-o",
            clear: "fa fa-trash-o"
        }
    }).on('dp.show', function() {
        if(firstOpen) {
            time = '09:00';
            firstOpen = false;
        } else {
            time = "09:00"
        }
        $(this).data('DateTimePicker').date(time);
    });
</script>