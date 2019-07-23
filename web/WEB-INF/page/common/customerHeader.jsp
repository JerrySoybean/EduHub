<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--header-->
<div class="header">
    <div class="container">
        <div class="head">
            <div class=" logo">
                <a href="${pageContext.request.contextPath}/customer/home"><img src="${pageContext.request.contextPath}/template/images/EduHub_logo3.png" alt="EduHub_logo" width="165" height="85"></a>
            </div>
        </div>
    </div>
    <div class="header-top">
        <div class="container">
            <div class="col-sm-5 col-md-offset-2  header-login">
                <ul >
                    <li><a href="${pageContext.request.contextPath}/customer/tologin">Login</a></li>
                    <li><a href="${pageContext.request.contextPath}/customer/toregister">Register</a></li>
                    <li><a href="${pageContext.request.contextPath}/vip/test">Vip</a></li>
                </ul>
            </div>

            <div class="col-sm-5 header-social">
                <ul >
                    <%--<li><a href="${pageContext.request.contextPath}/vip/test"><img src="${pageContext.request.contextPath}/images/vip.jpg" width="20" height="20"></a></li>--%>
                    <li><a href="#"><i></i></a></li>
                    <li><a href="#"><i class="ic1"></i></a></li>
                    <li><a href="#"><i class="ic2"></i></a></li>
                    <li><a href="#"><i class="ic3"></i></a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/tologin"><i class="ic4"></i></a></li>
                </ul>

            </div>
            <div class="clearfix"> </div>
        </div>
    </div>

    <div class="container">

        <div class="head-top">

            <div class="col-sm-8 col-md-offset-2 h_menu4">
                <nav class="navbar nav_bottom" role="navigation">
                    <%--navigation section--%>
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
                            <li><a class="color" href="${pageContext.request.contextPath}/customer/home">Home</a></li>
                            <li><a class="color" href="${pageContext.request.contextPath}/customer/info">Personal Information</a></li>
                            <li class="dropdown mega-dropdown active">
                                <a class="color1" href="#" class="dropdown-toggle" data-toggle="dropdown">Product Category<span class="caret"></span></a>
                                <div class="dropdown-menu">
                                    <div class="menu-top">
                                        <div class="col1" style="margin-right: 50px; margin-left: 20px">
                                            <div class="h_nav" style="width: 200px">
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/customer/learnvideo"><h4>Learning Video</h4></a></li>
                                                    <li><a href="${pageContext.request.contextPath}/customer/ebook"><h4>Electronic Books</h4></a></li>
                                                    <li><a href="${pageContext.request.contextPath}/customer/paper"><h4>Test Paper Analysis</h4></a></li>
                                                    <li><a href="${pageContext.request.contextPath}/customer/flowchart"><h4>Flowchart</h4></a></li>
                                                    <li><a href="${pageContext.request.contextPath}/customer/protocol"><h4>Experiment Protocol</h4></a></li>
                                                    <li><a href="${pageContext.request.contextPath}/customer/studynote"><h4>Study Notes</h4></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <%--<div class="col1">
                                            <div class="h_nav">
                                                <h4>Submenu2</h4>
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/learningvideo"><h4>Leaning Video</h4></a></li>
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
                                        </div>--%>
                                        <div class="col1 col5">
                                            <img src="${pageContext.request.contextPath}\images\EduHub_logo4.jpg" class="img-responsive" alt="" width="165" height="85">
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </li>
                            <%--导航栏--%>
                            <%--<li class="dropdown mega-dropdown active">
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
                            </li>--%>
                            <li><a class="color" href="${pageContext.request.contextPath}/customer/orders">Orders</a></li>
                            <%--<li><a class="color5" href="${pageContext.request.contextPath}/typo">Short Codes</a></li>--%>
                            <li ><a class="color" href="${pageContext.request.contextPath}/customer/contact">Contact</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->

                </nav>
            </div>
            <div class="col-sm-2 search-right">
                <ul class="heart">
                    <li>
                        <a href="${pageContext.request.contextPath}/collections/wishlist" >
                            <span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
                        </a>
                    </li>
                    <li><a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i></a></li>
                </ul>
                <div class="cart box_1" align="center">
                    <a href="${pageContext.request.contextPath}/cart/cart">
                        <h3>
                            <%--<div class="total"><span class="simpleCart_total"></span></div>--%>
                            <img src="${pageContext.request.contextPath}/template/images/cart.png" alt=""/>
                        </h3>
                    </a>
                    <p><a href="javascript:;" class="simpleCart_empty">Cart</a></p>
                </div>
                <div class="clearfix"></div>
            </div>


                <!----->

                <!---pop-up-box---->
                <link href="${pageContext.request.contextPath}/template/css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
                <script src="${pageContext.request.contextPath}/template/js/jquery.magnific-popup.js" type="text/javascript"></script>
                <!---//pop-up-box---->
                <div id="small-dialog" class="mfp-hide">
                    <div class="search-top">
                        <div class="login-search">
                            <form action="${pageContext.request.contextPath}/customer/search" method="post">
                                <input type="text" value="Search.." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search..';}" name="name">
                                <input type="submit" value="">
                            </form>
                        </div>
                        <p>Go Search</p>
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
