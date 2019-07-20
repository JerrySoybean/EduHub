<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>404</title>
    <link href="${pageContext.request.contextPath}/template/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="${pageContext.request.contextPath}/template/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

    <!--theme-style-->
    <link href="${pageContext.request.contextPath}/template/css/style4.css" rel="stylesheet" type="text/css" media="all" />
    <!--//theme-style-->
    <script src="http://apps.bdimg.com/libs/jquery/1.11.1/jquery.min.js"></script>
    <!--- start-rate---->
    <script src="${pageContext.request.contextPath}/template/js/jstarbox.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
    <script type="text/javascript">
        jQuery(function() {
            jQuery('.starbox').each(function() {
                var starbox = jQuery(this);
                starbox.starbox({
                    average: starbox.attr('data-start-value'),
                    changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
                    ghosting: starbox.hasClass('ghosting'),
                    autoUpdateAverage: starbox.hasClass('autoupdate'),
                    buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
                    stars: starbox.attr('data-star-count') || 5
                }).bind('starbox-value-changed', function(event, value) {
                    if(starbox.hasClass('random')) {
                        var val = Math.random();
                        starbox.next().text(' '+val);
                        return val;
                    }
                })
            });
        });
    </script>
    <!---//End-rate---->
</head>
<body>
<!--header-->
<div class="header">
    <div class="container">
        <div class="head">
            <div class=" logo">
                <a href="${pageContext.request.contextPath}/home"><img src="${pageContext.request.contextPath}/template/images/logo.png" alt=""></a>
            </div>
        </div>
    </div>
    <div class="header-top">
        <div class="container">
            <div class="col-sm-5 col-md-offset-2  header-login">
                <ul >
                    <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
                    <li><a href="${pageContext.request.contextPath}/register">Register</a></li>
                    <li><a href="${pageContext.request.contextPath}/checkout">Checkout</a></li>
                </ul>
            </div>

            <div class="col-sm-5 header-social">
                <ul >
                    <li><a href="#"><i></i></a></li>
                    <li><a href="#"><i class="ic1"></i></a></li>
                    <li><a href="#"><i class="ic2"></i></a></li>
                    <li><a href="#"><i class="ic3"></i></a></li>
                    <li><a href="#"><i class="ic4"></i></a></li>
                </ul>

            </div>
            <div class="clearfix"> </div>
        </div>
    </div>

    <div class="container">

        <div class="head-top">

            <div class="col-sm-8 col-md-offset-2 h_menu4">
                <nav class="navbar nav_bottom" role="navigation">

                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header nav_2">
                        <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                        <ul class="nav navbar-nav nav_1">
                            <li><a class="color" href="${pageContext.request.contextPath}/home">Home</a></li>

                            <li class="dropdown mega-dropdown active">
                                <a class="color1" href="#" class="dropdown-toggle" data-toggle="dropdown">Women<span class="caret"></span></a>
                                <div class="dropdown-menu ">
                                    <div class="menu-top">
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu1</h4>
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/product">Accessories</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Bags</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Caps & Hats</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Hoodies & Sweatshirts</a></li>

                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu2</h4>
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/product">Jackets & Coats</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Jeans</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Jewellery</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Jumpers & Cardigans</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Leather Jackets</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Long Sleeve T-Shirts</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu3</h4>
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/product">Shirts</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Shoes, Boots & Trainers</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Sunglasses</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Sweatpants</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Swimwear</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Trousers & Chinos</a></li>

                                                </ul>

                                            </div>
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu4</h4>
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/product">T-Shirts</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Underwear & Socks</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Vests</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Jackets & Coats</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Jeans</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Jewellery</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col1 col5">
                                            <img src="${pageContext.request.contextPath}/template/images/me.png" class="img-responsive" alt="">
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </li>
                            <li class="dropdown mega-dropdown active">
                                <a class="color2" href="#" class="dropdown-toggle" data-toggle="dropdown">Men<span class="caret"></span></a>
                                <div class="dropdown-menu mega-dropdown-menu">
                                    <div class="menu-top">
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu1</h4>
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/product">Accessories</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Bags</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Caps & Hats</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Hoodies & Sweatshirts</a></li>

                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu2</h4>
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/product">Jackets & Coats</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Jeans</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Jewellery</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Jumpers & Cardigans</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Leather Jackets</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Long Sleeve T-Shirts</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu3</h4>

                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/product">Shirts</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Shoes, Boots & Trainers</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Sunglasses</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Sweatpants</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Swimwear</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Trousers & Chinos</a></li>

                                                </ul>

                                            </div>
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu4</h4>
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/product">T-Shirts</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Underwear & Socks</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Vests</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Jackets & Coats</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Jeans</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/product">Jewellery</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col1 col5">
                                            <img src="${pageContext.request.contextPath}/template/images/me1.png" class="img-responsive" alt="">
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </li>
                            <li><a class="color3" href="${pageContext.request.contextPath}/product">Sale</a></li>
                            <li><a class="color4" href="${pageContext.request.contextPath}/404">About</a></li>
                            <li><a class="color5" href="${pageContext.request.contextPath}/typo">Short Codes</a></li>
                            <li ><a class="color6" href="${pageContext.request.contextPath}/contact">Contact</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->

                </nav>
            </div>
            <div class="col-sm-2 search-right">
                <ul class="heart">
                    <li>
                        <a href="${pageContext.request.contextPath}/wishlist" >
                            <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                        </a></li>
                    <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i></a></li>
                </ul>
                <div class="cart box_1">
                    <a href="${pageContext.request.contextPath}/checkout">
                        <h3> <div class="total">
                            <span class="simpleCart_total"></span></div>
                            <img src="${pageContext.request.contextPath}/template/images/cart.png" alt=""/></h3>
                    </a>
                    <p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>

                </div>
                <div class="clearfix"> </div>

                <!----->

                <!---pop-up-box---->
                <link href="${pageContext.request.contextPath}/template/css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
                <script src="${pageContext.request.contextPath}/template/js/jquery.magnific-popup.js" type="text/javascript"></script>
                <!---//pop-up-box---->
                <div id="small-dialog" class="mfp-hide">
                    <div class="search-top">
                        <div class="login-search">
                            <input type="submit" value="">
                            <input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}">
                        </div>
                        <p>Shopin</p>
                    </div>
                </div>
                <script>
                    $(document).ready(function() {
                        $('.popup-with-zoom-anim').magnificPopup({
                            type: 'inline',
                            fixedContentPos: false,
                            fixedBgPos: true,
                            overflowY: 'auto',
                            closeBtnInside: true,
                            preloader: false,
                            midClick: true,
                            removalDelay: 300,
                            mainClass: 'my-mfp-zoom-in'
                        });

                    });
                </script>
                <!----->
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--banner-->
<div class="banner-top">
    <div class="container">
        <h1>404</h1>
        <em></em>
        <h2><a href="${pageContext.request.contextPath}/home">Home<label>/</label>404</a></h2>
    </div>
</div>
<!--login-->
<div class="container">
    <div class="four">
        <h3>404</h3>
        <p>Sorry! Evidently the document you were looking for has either been moved or no longer exist.</p>
        <a href="${pageContext.request.contextPath}/home" class="hvr-skew-backward">Back To Home</a>
    </div>
</div>
<!--//login-->

<!--brand-->
<div class="container">
    <div class="brand">
        <div class="col-md-3 brand-grid">
            <img src="${pageContext.request.contextPath}/template/images/ic.png" class="img-responsive" alt="">
        </div>
        <div class="col-md-3 brand-grid">
            <img src="${pageContext.request.contextPath}/template/images/ic1.png" class="img-responsive" alt="">
        </div>
        <div class="col-md-3 brand-grid">
            <img src="${pageContext.request.contextPath}/template/images/ic2.png" class="img-responsive" alt="">
        </div>
        <div class="col-md-3 brand-grid">
            <img src="${pageContext.request.contextPath}/template/images/ic3.png" class="img-responsive" alt="">
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!--//brand-->
</div>

</div>
<!--//content-->
<!--//footer-->
<div class="footer">
    <div class="footer-middle">
        <div class="container">
            <div class="col-md-3 footer-middle-in">
                <a href="${pageContext.request.contextPath}/home"><img src="${pageContext.request.contextPath}/template/images/log.png" alt=""></a>
                <p>Suspendisse sed accumsan risus. Curabitur rhoncus, elit vel tincidunt elementum, nunc urna tristique nisi, in interdum libero magna tristique ante. adipiscing varius. Vestibulum dolor lorem.</p>
            </div>

            <div class="col-md-3 footer-middle-in">
                <h6>Information</h6>
                <ul class=" in">
                    <li><a href="${pageContext.request.contextPath}/404">About</a></li>
                    <li><a href="${pageContext.request.contextPath}/contact">Contact Us</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="${pageContext.request.contextPath}/contact">Site Map</a></li>
                </ul>
                <ul class="in in1">
                    <li><a href="#">Order History</a></li>
                    <li><a href="${pageContext.request.contextPath}/wishlist">Wish List</a></li>
                    <li><a href="${pageContext.request.contextPath}/login">Login</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="col-md-3 footer-middle-in">
                <h6>Tags</h6>
                <ul class="tag-in">
                    <li><a href="#">Lorem</a></li>
                    <li><a href="#">Sed</a></li>
                    <li><a href="#">Ipsum</a></li>
                    <li><a href="#">Contrary</a></li>
                    <li><a href="#">Chunk</a></li>
                    <li><a href="#">Amet</a></li>
                    <li><a href="#">Omnis</a></li>
                </ul>
            </div>
            <div class="col-md-3 footer-middle-in">
                <h6>Newsletter</h6>
                <span>Sign up for News Letter</span>
                <form>
                    <input type="text" value="Enter your E-mail" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='Enter your E-mail';}">
                    <input type="submit" value="Subscribe">
                </form>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <ul class="footer-bottom-top">
                <li><a href="#"><img src="${pageContext.request.contextPath}/template/images/f1.png" class="img-responsive" alt=""></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/template/images/f2.png" class="img-responsive" alt=""></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/template/images/f3.png" class="img-responsive" alt=""></a></li>
            </ul>
            <p class="footer-class">Copyright &copy; 2016.Company name All rights reserved.</p>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--//footer-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<script src="${pageContext.request.contextPath}/template/js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="${pageContext.request.contextPath}/template/js/bootstrap.min.js"></script>

</body>
</html>
