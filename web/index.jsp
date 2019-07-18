<%--
  Created by IntelliJ IDEA.
  User: mxdwa
  Date: 2019/7/18
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
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
    <script src="${pageContext.request.contextPath}/WEB-INF/template/js/jstarbox.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WEB-INF/template/css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
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
                <a href="${pageContext.request.contextPath}/index"><img src="${pageContext.request.contextPath}/template/images/EduHub_logo3.png" alt="EduHub_logo" width="165" height="85"></a>
            </div>
        </div>
    </div>
    <div class="header-top">
        <div class="container">
            <div class="col-sm-5 col-md-offset-2  header-login">
                <ul >
                    <li><a href="${pageContext.request.contextPath}/home/tologin">Login</a></li>
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
                                <a class="color1" href="#" class="dropdown-toggle" data-toggle="dropdown">Class<span class="caret"></span></a>
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
                            <!-- <li class="dropdown mega-dropdown active">
                                <a class="color2" href="#" class="dropdown-toggle" data-toggle="dropdown">Books<span class="caret"></span></a>
                                <div class="dropdown-menu mega-dropdown-menu">
                                    <div class="menu-top">
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu1</h4>
                                                    <ul>
                                                        <li><a href="product.jsp">Accessories</a></li>
                                                        <li><a href="product.jsp">Bags</a></li>
                                                        <li><a href="product.jsp">Caps & Hats</a></li>
                                                        <li><a href="product.jsp">Hoodies & Sweatshirts</a></li>

                                                    </ul>
                                            </div>
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu2</h4>
                                                <ul>
                                                        <li><a href="product.jsp">Jackets & Coats</a></li>
                                                        <li><a href="product.jsp">Jeans</a></li>
                                                        <li><a href="product.jsp">Jewellery</a></li>
                                                        <li><a href="product.jsp">Jumpers & Cardigans</a></li>
                                                        <li><a href="product.jsp">Leather Jackets</a></li>
                                                        <li><a href="product.jsp">Long Sleeve T-Shirts</a></li>
                                                    </ul>
                                            </div>
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu3</h4>

                <ul>
                                                        <li><a href="product.jsp">Shirts</a></li>
                                                        <li><a href="product.jsp">Shoes, Boots & Trainers</a></li>
                                                        <li><a href="product.jsp">Sunglasses</a></li>
                                                        <li><a href="product.jsp">Sweatpants</a></li>
                                                        <li><a href="product.jsp">Swimwear</a></li>
                                                        <li><a href="product.jsp">Trousers & Chinos</a></li>

                                                    </ul>

                                            </div>
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu4</h4>
                                                <ul>
                                                    <li><a href="product.jsp">T-Shirts</a></li>
                                                    <li><a href="product.jsp">Underwear & Socks</a></li>
                                                    <li><a href="product.jsp">Vests</a></li>
                                                    <li><a href="product.jsp">Jackets & Coats</a></li>
                                                    <li><a href="product.jsp">Jeans</a></li>
                                                    <li><a href="product.jsp">Jewellery</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col1 col5">
                                        <img src="images/me1.png" class="img-responsive" alt="">
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </li> -->
                            <li><a class="color3" href="${pageContext.request.contextPath}/product">Product</a></li>
                            <li><a class="color3" href="order.html">Order</a></li>
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
<div class="banner">
    <div class="container">
        <section class="rw-wrapper">
            <h1 class="rw-sentence">
                <span>Fashion &amp; Beauty</span>
                <div class="rw-words rw-words-1">
                    <span>Beautiful Designs</span>
                    <span>Sed ut perspiciatis</span>
                    <span> Totam rem aperiam</span>
                    <span>Nemo enim ipsam</span>
                    <span>Temporibus autem</span>
                    <span>intelligent systems</span>
                </div>
                <div class="rw-words rw-words-2">
                    <span>We denounce with right</span>
                    <span>But in certain circum</span>
                    <span>Sed ut perspiciatis unde</span>
                    <span>There are many variation</span>
                    <span>The generated Lorem Ipsum</span>
                    <span>Excepteur sint occaecat</span>
                </div>
            </h1>
        </section>
    </div>
</div>
<!--content-->
<div class="content">
    <div class="container">
        <div class="content-top">
            <div class="col-md-6 col-md1">
                <div class="col-3">
                    <a href="${pageContext.request.contextPath}/single"><img src="${pageContext.request.contextPath}/template/images/pi1.jpg" class="img-responsive" alt="">
                        <div class="col-pic">
                            <p>Lorem Ipsum</p>
                            <label></label>
                            <h5>Learning Video</h5>
                        </div></a>
                </div>
                <div class="col-3">
                    <a href="${pageContext.request.contextPath}/single"><img src="${pageContext.request.contextPath}/template/images/pi2.jpg" class="img-responsive" alt="">
                        <div class="col-pic">
                            <p>Lorem Ipsum</p>
                            <label></label>
                            <h5>Electronic Books</h5>
                        </div></a>
                </div>
                <div class="col-3">
                    <a href="${pageContext.request.contextPath}/single"><img src="${pageContext.request.contextPath}/template/images/pi3.jpg" class="img-responsive" alt="">
                        <div class="col-pic">
                            <p>Lorem Ipsum</p>
                            <label></label>
                            <h5>Experiment Protocol</h5>
                        </div></a>
                </div>
            </div>
            <div class="col-md-6 col-md1">
                <div class="col-3">
                    <a href="${pageContext.request.contextPath}/single"><img src="${pageContext.request.contextPath}/template/images/pi1.jpg" class="img-responsive" alt="">
                        <div class="col-pic">
                            <p>Lorem Ipsum</p>
                            <label></label>
                            <h5>Test Paper Analysis</h5>
                        </div></a>
                </div>
                <div class="col-3">
                    <a href="${pageContext.request.contextPath}/single"><img src="${pageContext.request.contextPath}/template/images/pi2.jpg" class="img-responsive" alt="">
                        <div class="col-pic">
                            <p>Lorem Ipsum</p>
                            <label></label>
                            <h5>Flow Chart</h5>
                        </div></a>
                </div>
                <div class="col-3">
                    <a href="${pageContext.request.contextPath}/single"><img src="${pageContext.request.contextPath}/template/images/pi3.jpg" class="img-responsive" alt="">
                        <div class="col-pic">
                            <p>Lorem Ipsum</p>
                            <label></label>
                            <h5>Studying Notes</h5>
                        </div></a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <!--products-->
        <div class="content-mid">
            <h3>Trending Items</h3>
            <label class="line"></label>
            <div class="mid-popular">
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                    <div class=" mid-pop">
                        <div class="pro-img">
                            <img src="${pageContext.request.contextPath}/template/images/pc.jpg" class="img-responsive" alt="">
                            <div class="zoom-icon ">
                                <a class="picture" href="${pageContext.request.contextPath}/template/images/pc.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Women</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">Sed ut perspiciati</a></h6>
                                </div>
                                <div class="img item_add">
                                    <a href="#"><img src="${pageContext.request.contextPath}/template/images/ca.png" alt=""></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                    <div class=" mid-pop">
                        <div class="pro-img">
                            <img src="${pageContext.request.contextPath}/template/images/pc1.jpg" class="img-responsive" alt="">
                            <div class="zoom-icon ">
                                <a class="picture" href="${pageContext.request.contextPath}/template/images/pc1.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Women</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">At vero eos</a></h6>
                                </div>
                                <div class="img item_add">
                                    <a href="#"><img src="${pageContext.request.contextPath}/template/images/ca.png" alt=""></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                    <div class=" mid-pop">
                        <div class="pro-img">
                            <img src="${pageContext.request.contextPath}/template/images/pc2.jpg" class="img-responsive" alt="">
                            <div class="zoom-icon ">
                                <a class="picture" href="${pageContext.request.contextPath}/template/images/pc2.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Men</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">Sed ut perspiciati</a></h6>
                                </div>
                                <div class="img item_add">
                                    <a href="#"><img src="${pageContext.request.contextPath}/template/images/ca.png" alt=""></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                    <div class=" mid-pop">
                        <div class="pro-img">
                            <img src="${pageContext.request.contextPath}/template/images/pc3.jpg" class="img-responsive" alt="">
                            <div class="zoom-icon ">
                                <a class="picture" href="${pageContext.request.contextPath}/template/images/pc3.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Women</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">On the other</a></h6>
                                </div>
                                <div class="img item_add">
                                    <a href="#"><img src="${pageContext.request.contextPath}/template/images/ca.png" alt=""></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="mid-popular">
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                    <div class=" mid-pop">
                        <div class="pro-img">
                            <img src="${pageContext.request.contextPath}/template/images/pc4.jpg" class="img-responsive" alt="">
                            <div class="zoom-icon ">
                                <a class="picture" href="${pageContext.request.contextPath}/template/images/pc4.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Men</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">On the other</a></h6>
                                </div>
                                <div class="img item_add">
                                    <a href="#"><img src="${pageContext.request.contextPath}/template/images/ca.png" alt=""></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                    <div class=" mid-pop">
                        <div class="pro-img">
                            <img src="${pageContext.request.contextPath}/template/images/pc5.jpg" class="img-responsive" alt="">
                            <div class="zoom-icon ">
                                <a class="picture" href="${pageContext.request.contextPath}/template/images/pc5.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Men</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">Sed ut perspiciati</a></h6>
                                </div>
                                <div class="img item_add">
                                    <a href="#"><img src="${pageContext.request.contextPath}/template/images/ca.png" alt=""></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                    <div class=" mid-pop">
                        <div class="pro-img">
                            <img src="${pageContext.request.contextPath}/template/images/pc6.jpg" class="img-responsive" alt="">
                            <div class="zoom-icon ">
                                <a class="picture" href="${pageContext.request.contextPath}/template/images/pc6.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Women</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">At vero eos</a></h6>
                                </div>
                                <div class="img item_add">
                                    <a href="#"><img src="${pageContext.request.contextPath}/template/images/ca.png" alt=""></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                    <div class=" mid-pop">
                        <div class="pro-img">
                            <img src="${pageContext.request.contextPath}/template/images/pc7.jpg" class="img-responsive" alt="">
                            <div class="zoom-icon ">
                                <a class="picture" href="${pageContext.request.contextPath}/template/images/pc7.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Men</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">Sed ut perspiciati</a></h6>
                                </div>
                                <div class="img item_add">
                                    <a href="#"><img src="${pageContext.request.contextPath}/template/images/ca.png" alt=""></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="mid-2">
                                <p ><label>$100.00</label><em class="item_price">$70.00</em></p>
                                <div class="block">
                                    <div class="starbox small ghosting"> </div>
                                </div>

                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!--//products-->
        <!--brand-->
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
<!--light-box-files -->
<script src="${pageContext.request.contextPath}/template/js/jquery.chocolat.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/template/css/chocolat.css" type="text/css" media="screen" charset="utf-8">
<!--light-box-files -->
<script type="text/javascript" charset="utf-8">
    $(function() {
        $('a.picture').Chocolat();
    });
</script>


</body>
</html>
