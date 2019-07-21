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
<jsp:include page="/WEB-INF/page/common/customerHeader.jsp"/>
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
                    <a href="${pageContext.request.contextPath}/customer/learnvideo"><img src="${pageContext.request.contextPath}/template/images/pi1.jpg" class="img-responsive" alt="">
                        <div class="col-pic">
                            <p>Lorem Ipsum</p>
                            <label></label>
                            <h5>Learning Video</h5>
                        </div></a>
                </div>
                <div class="col-3">
                    <a href="${pageContext.request.contextPath}/customer/ebook"><img src="${pageContext.request.contextPath}/template/images/pi2.jpg" class="img-responsive" alt="">
                        <div class="col-pic">
                            <p>Lorem Ipsum</p>
                            <label></label>
                            <h5>Electronic Books</h5>
                        </div></a>
                </div>
                <div class="col-3">
                    <a href="${pageContext.request.contextPath}/customer/protocol"><img src="${pageContext.request.contextPath}/template/images/pi3.jpg" class="img-responsive" alt="">
                        <div class="col-pic">
                            <p>Lorem Ipsum</p>
                            <label></label>
                            <h5>Experiment Protocol</h5>
                        </div></a>
                </div>
            </div>
            <div class="col-md-6 col-md1">
                <div class="col-3">
                    <a href="${pageContext.request.contextPath}/customer/paper"><img src="${pageContext.request.contextPath}/template/images/pi1.jpg" class="img-responsive" alt="">
                        <div class="col-pic">
                            <p>Lorem Ipsum</p>
                            <label></label>
                            <h5>Test Paper Analysis</h5>
                        </div></a>
                </div>
                <div class="col-3">
                    <a href="${pageContext.request.contextPath}/customer/flowchart"><img src="${pageContext.request.contextPath}/template/images/pi2.jpg" class="img-responsive" alt="">
                        <div class="col-pic">
                            <p>Lorem Ipsum</p>
                            <label></label>
                            <h5>Flow Chart</h5>
                        </div></a>
                </div>
                <div class="col-3">
                    <a href="${pageContext.request.contextPath}/customer/studynote"><img src="${pageContext.request.contextPath}/template/images/pi3.jpg" class="img-responsive" alt="">
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
<jsp:include page="/WEB-INF/page/common/footer.jsp"/>
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
