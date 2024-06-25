<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <title>Luna Frost Shop</title>


    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="/assets_v2/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="/assets_v2/css/font-awesome.css">

    <link rel="stylesheet" href="/assets_v2/css/templatemo-hexashop.css">

    <link rel="stylesheet" href="/assets_v2/css/owl-carousel.css">

    <link rel="stylesheet" href="/assets_v2/css/lightbox.css">

    <!-- jQuery -->
    <script src="/assets_v2/js/jquery-2.1.0.min.js"></script>
<!--

TemplateMo 571 Hexashop

https://templatemo.com/tm-571-hexashop

-->
    </head>
    
    <body>
    
    <!-- ***** Preloader Start ***** -->
    <div id="preloader">
        <div class="jumper">
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>  
    <!-- ***** Preloader End ***** -->
    
    
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <a href="/" class="logo">
                            <img src="/assets_v2/images/logo2.jpeg" style="height: 60px; width: 250px;">
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="/">Home</a></li>
                            <li class="scroll-to-section"><a href="/landingpage/paket?category=1">Men's</a></li>
                            <li class="scroll-to-section"><a href="/landingpage/paket?category=2">Women's</a></li>
                            <li class="scroll-to-section"><a href="/landingpage/paket?category=3">Kid's</a></li>
                            <li class="submenu">
                                <a href="javascript:;">Pages</a>
                                <ul>
                                    <li><a href="/landingpage/about">About Us</a></li>
                                    <li><a href="/landingpage/paket">Products</a></li>
                                    <!-- <li><a href="single-product.html">Single Product</a></li> -->
                                    <li><a href="/landingpage/contact">Contact Us</a></li>
                                    <!-- <li><a href="/landingpage/login">Login</a></li>
                                    <li><a href="/landingpage/register">Register</a></li> -->
                                </ul>
                            </li>
                            <?php
                                $id_session = 0;
                                try {
                                    $id_session = $_SESSION['id'];
                                } catch (\Throwable $th) {
                                    //throw $th;
                                } 
                                if ($id_session) { ?>
                                
                                <li><a href="/landingpage/orders">My Orders</a></li>
                                <li class="scroll-to-section"><a href="/landingpage/logout">Logout</a></li>
                            <?php } else { ?>
                                <li class="scroll-to-section"><a href="/landingpage/login">Login</a></li>
                                <li class="scroll-to-section"><a href="/landingpage/register">Register</a></li>
                            <?php } ?>

                            <!-- <li class="submenu">
                                <a href="javascript:;">Features</a>
                                <ul>
                                    <li><a href="#">Features Page 1</a></li>
                                    <li><a href="#">Features Page 2</a></li>
                                    <li><a href="#">Features Page 3</a></li>
                                    <li><a rel="nofollow" href="https://templatemo.com/page/4" target="_blank">Template Page 4</a></li>
                                </ul>
                            </li>
                            <li class="scroll-to-section"><a href="#explore">Explore</a></li> -->
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <?= $this->renderSection('landing_content') ?>
    
    <!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <!-- <div class="col-lg-3">
                    <div class="first-item">
                        <div class="logo">
                            <img src="/assets_v2/images/white-logo.png" alt="hexashop ecommerce templatemo">
                        </div>
                        <ul>
                            <li><a href="#">16501 Collins Ave, Sunny Isles Beach, FL 33160, United States</a></li>
                            <li><a href="#">hexashop@company.com</a></li>
                            <li><a href="#">010-020-0340</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <h4>Shopping &amp; Categories</h4>
                    <ul>
                        <li><a href="#">Men’s Shopping</a></li>
                        <li><a href="#">Women’s Shopping</a></li>
                        <li><a href="#">Kid's Shopping</a></li>
                    </ul>
                </div>
                <div class="col-lg-3">
                    <h4>Useful Links</h4>
                    <ul>
                        <li><a href="#">Homepage</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Help</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col-lg-3">
                    <h4>Help &amp; Information</h4>
                    <ul>
                        <li><a href="#">Help</a></li>
                        <li><a href="#">FAQ's</a></li>
                        <li><a href="#">Shipping</a></li>
                        <li><a href="#">Tracking ID</a></li>
                    </ul>
                </div> -->
                <div class="col-lg-12">
                    <div class="under-footer">
                        <p>Copyright © 2024 Luna Frost Shop, Ltd. All Rights Reserved. 
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Bootstrap -->
    <script src="/assets_v2/js/popper.js"></script>
    <script src="/assets_v2/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="/assets_v2/js/owl-carousel.js"></script>
    <script src="/assets_v2/js/accordions.js"></script>
    <script src="/assets_v2/js/datepicker.js"></script>
    <script src="/assets_v2/js/scrollreveal.min.js"></script>
    <script src="/assets_v2/js/waypoints.min.js"></script>
    <script src="/assets_v2/js/jquery.counterup.min.js"></script>
    <script src="/assets_v2/js/imgfix.min.js"></script> 
    <script src="/assets_v2/js/slick.js"></script> 
    <script src="/assets_v2/js/lightbox.js"></script> 
    <script src="/assets_v2/js/isotope.js"></script> 
    
    <!-- Global Init -->
    <script src="/assets_v2/js/custom.js"></script>

    <script>

        $(function() {
            var selectedClass = "";
            $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
              $("."+selectedClass).fadeIn();
              $("#portfolio").fadeTo(50, 1);
            }, 500);
                
            });
        });

    </script>

  </body>
</html>