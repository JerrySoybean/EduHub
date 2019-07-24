<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mxdwa
  Date: 2019/7/18
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Item</title>
    <link href="${pageContext.request.contextPath}/template/css/bootstrap.css" rel="stylesheet" type="text/css"
          media="all"/>
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="${pageContext.request.contextPath}/template/css/style.css" rel="stylesheet" type="text/css"
          media="all"/>
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>

    <!--theme-style-->
    <link href="${pageContext.request.contextPath}/template/css/style4.css" rel="stylesheet" type="text/css"
          media="all"/>
    <!--//theme-style-->
    <script src="${pageContext.request.contextPath}/template/js/jquery.min.js"></script>
    <!--- start-rate---->
    <script src="${pageContext.request.contextPath}/template/js/jstarbox.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/css/jstarbox.css" type="text/css"
          media="screen" charset="utf-8"/>
    <script type="text/javascript">
        jQuery(function () {
            jQuery('.starbox').each(function () {
                var starbox = jQuery(this);
                starbox.starbox({
                    average: starbox.attr('data-start-value'),
                    changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
                    ghosting: starbox.hasClass('ghosting'),
                    autoUpdateAverage: starbox.hasClass('autoupdate'),
                    buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
                    stars: starbox.attr('data-star-count') || 5
                }).bind('starbox-value-changed', function (event, value) {
                    if (starbox.hasClass('random')) {
                        var val = Math.random();
                        starbox.next().text(' ' + val);
                        return val;
                    }
                })
            });
        });
    </script>
    <!---//End-rate---->
    <style>
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .panel {
            margin-bottom: 20px;
            background-color: #fff;
            border: 1px solid transparent;
            border-radius: 4px;
            -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
            box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.05);
        }

        .panel-info {
            border-color: #bce8f1;
        }

        .col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
            position: relative;
            min-height: 1px;
            padding-right: 15px;
            padding-left: 15px;
        }

        /* @media all and (min-width:768px) */
        .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
            float: left;
        }

        /* @media all and (min-width:768px) */
        .col-sm-4 {
            width: 33.33%;
        }

        .row {
            margin-right: -15px;
            margin-left: -15px;
        }

        .page {
            padding: 4em 0 4em;
        }

        .container {
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }

        /* @media all and (min-width:768px) */
        .container {
            width: 750px;
        }

        /* @media all and (min-width:992px) */
        .container {
            width: 970px;
        }

        /* @media all and (min-width:1200px) */
        .container {
            width: 1170px;
        }

        body {
            margin: 0;
        }

        body {
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-size: 14px;
            line-height: 1.4285;
            color: #333;
            background-color: #fff;
        }

        html {
            font-size: 10px;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
        }

        html, body {
            background: #fff;
            font-size: 100%;
            font-family: "Oxygen-Regular";
        }

        html {
            font-family: sans-serif;
            -webkit-text-size-adjust: 100%;
            -ms-text-size-adjust: 100%;
        }

        .panel-heading {
            padding: 10px 15px;
            border-bottom: 1px solid transparent;
            border-top-left-radius: 3px;
            border-top-right-radius: 3px;
        }

        .panel-info > .panel-heading {
            color: #31708f;
            background-color: #d9edf7;
            border-color: #bce8f1;
        }

        .panel-body {
            padding: 15px;
        }

        h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
            font-family: inherit;
            font-weight: 500;
            line-height: 1.1;
            color: inherit;
        }

        h1, .h1, h2, .h2, h3, .h3 {
            margin-top: 20px;
            margin-bottom: 10px;
        }

        h3, .h3 {
            font-size: 24px;
        }

        h1, h2, h3, h4, h5, h6, label, p {
            margin: 0;
        }

        .panel-title {
            margin-top: 0px;
            margin-bottom: 0px;
            font-size: 16px;
            color: inherit;
        }
    </style>
    <link href="${pageContext.request.contextPath}/template/css/form.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>
<!--header-->
<jsp:include page="/WEB-INF/page/common/customerHeader.jsp"/>
<!--banner-->
<div class="banner-top">
    <div class="container">
        <h1>Item</h1>
        <em></em>
        <h2><a href="${pageContext.request.contextPath}>/customer/home">Home</a><label>/</label>Item</h2>
    </div>
</div>
<div class="single">

    <div class="container">
        <div class="col-md-9">
            <div class="col-md-5 grid">
                <div class="flexslider">
                    <ul class="slides">
                        <li data-thumb="${pageContext.request.contextPath}${item.picturePath}">
                            <div class="thumb-image"><img src="${pageContext.request.contextPath}${item.picturePath}"
                                                          data-imagezoom="true" class="img-responsive"></div>
                        </li>
                        <%--<li data-thumb="${pageContext.request.contextPath}/template/images/si1.jpg">
                            <div class="thumb-image"> <img src="${pageContext.request.contextPath}/template/images/si1.jpg" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                        <li data-thumb="${pageContext.request.contextPath}/template/images/si2.jpg">
                            <div class="thumb-image"> <img src="${pageContext.request.contextPath}/template/images/si2.jpg" data-imagezoom="true" class="img-responsive"> </div>
                        </li>--%>
                    </ul>
                </div>
            </div>
            <div class="col-md-7 single-top-in">
                <div class="span_2_of_a1 simpleCart_shelfItem" id="${item.id}">
                    <h3>${item.name}</h3>
                    <p class="in-para"> Category: ${category}</p>
                    <h4 class="quick">Quick Overview:</h4>
                    <p class="quick_desc">${item.introduction}</p>
                    <div class="price_single">
                        <span class="reducedfrom item_price">$${item.price}</span>
                        <div class="clearfix"></div>
                    </div>
                    <div class="wish-list">
                        <ul>
                            <li class="wish">
                                <button class="add-to item_add hvr-skew-backward btn_addwish"><span
                                        class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>Add to Wishlist
                                </button>
                            </li>
                            <button class="add-to item_add hvr-skew-backward btn_addcart">Add to cart</button>
                        </ul>
                    </div>
                    <%--<div class="quantity">
                        <div class="quantity-select">
                            <div class="entry value-minus">&nbsp;</div>
                            <div class="entry value"><span>1</span></div>
                            <div class="entry value-plus active">&nbsp;</div>
                        </div>
                    </div>--%>
                    <!--quantity-->
                    <script>
                        $('.value-plus').on('click', function () {
                            var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) + 1;
                            divUpd.text(newVal);
                        });

                        $('.value-minus').on('click', function () {
                            var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10) - 1;
                            if (newVal >= 1) divUpd.text(newVal);
                        });
                    </script>
                    <!--quantity-->


                    <div class="clearfix"></div>
                </div>

            </div>
            <div class="clearfix"></div>
            <!---->
            <div class="tab-head">
                <nav class="nav-sidebar">
                    <ul class="nav tabs">
                        <li class=""><a href="#tab1" data-toggle="tab">Product Description</a></li>
                        <li class=""><a href="#tab2" data-toggle="tab">Additional Information</a></li>
                        <li class="active"><a href="#tab3" data-toggle="tab">Reviews</a></li>
                    </ul>
                </nav>
                <div class="tab-content one">
                    <div class="tab-pane text-style" id="tab1">
                        <div class="facts">
                            <p> There are many variations of passages of Lorem Ipsum available, but the majority have
                                suffered alteration in some form, by injected humour, or randomised words which don't
                                look even slightly believable. If you are going to use a passage of Lorem Ipsum, you
                                need to be sure there isn't anything embarrassing hidden in the middle of text. All the
                                Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary,
                                making this the first true generator on the Internet. It uses a dictionary of over 200
                                Latin words, combined </p>
                            <ul>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Research</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Design and
                                    Development
                                </li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Porting and
                                    Optimization
                                </li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>System integration
                                </li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Verification,
                                    Validation and Testing
                                </li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Maintenance and
                                    Support
                                </li>
                            </ul>
                        </div>

                    </div>
                    <div class="tab-pane text-style" id="tab2">

                        <div class="facts">
                            <p> Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a
                                piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard
                                McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of
                                the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through
                                the cites of the word in classical literature, discovered the undoubtable source. Lorem
                                Ipsum comes from sections </p>
                            <ul>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Multimedia Systems
                                </li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Digital media
                                    adapters
                                </li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Set top boxes for
                                    HDTV and IPTV Player
                                </li>
                            </ul>
                        </div>

                    </div>
                    <div class="tab-pane active text-style" id="tab3">
                        <c:forEach items="${orders}" var="order">
                            <div class="panel panel-info">
                                <div class="panel-heading">
                                    <h3 class="panel-title">${order.finishTimeTxt}</h3>
                                </div>
                                <div class="panel-body">
                                        ${order.comment}
                                </div>
                            </div>
                        </c:forEach>
                    </div>

                </div>
                <div class="clearfix"></div>
            </div>
            <!---->
        </div>
        <!----->

        <div class="col-md-3 product-bottom product-at">
            <!--categories-->
            <div class=" rsidebar span_1_of_left">
                <h4 class="cate">Categories</h4>
                <ul class="menu-drop">
                    <li class="item_cate"><a href="${pageContext.request.contextPath}/customer/learnvideo">Learning
                        Video</a></li>
                    <li class="item_cate"><a href="${pageContext.request.contextPath}/customer/ebook">Electronic
                        Books</a></li>
                    <li class="item_cate"><a href="${pageContext.request.contextPath}/customer/paper">Test Paper
                        Analysis</a></li>
                    <li class="item_cate"><a href="${pageContext.request.contextPath}/customer/protocol">Experiment
                        Protocol</a></li>
                    <li class="item_cate"><a href="${pageContext.request.contextPath}/customer/flowchart">Flow Chart</a>
                    </li>
                    <li class="item_cate"><a href="${pageContext.request.contextPath}/customer/studynote">Studying
                        Note</a></li>
                </ul>
            </div>
            <!--initiate accordion-->
            <script type="text/javascript">
                $(function () {
                    var menu_ul = $('.menu-drop > li > ul'),
                        menu_a = $('.menu-drop > li > a');
                    menu_ul.hide();
                    menu_a.click(function (e) {
                        // e.preventDefault();
                        if (!$(this).hasClass('active')) {
                            menu_a.removeClass('active');
                            menu_ul.filter(':visible').slideUp('normal');
                            $(this).addClass('active').next().stop(true, true).slideDown('normal');
                        } else {
                            $(this).removeClass('active');
                            $(this).next().stop(true, true).slideUp('normal');
                        }
                    });

                });
            </script>

        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!--//content-->
<!--//footer-->
<jsp:include page="/WEB-INF/page/common/footer.jsp"/>
<!--//footer-->
<script src="${pageContext.request.contextPath}/template/js/imagezoom.js"></script>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script defer src="${pageContext.request.contextPath}/template/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/template/css/flexslider.css" type="text/css"
      media="screen"/>
<script src="${pageContext.request.contextPath}/template/layer/layer.js "></script>
<script>
    // Can also be used with $(document).ready()
    $(window).load(function () {
        $('.flexslider').flexslider({
            animation: "slide",
            controlNav: "thumbnails"
        });
    });
    $(".wish-list").on("click", ".wish", function () {
    });

    $(".btn_addcart").click(function () {
        var $div = $(this).parent().parent().parent("div");
        var goods_idvalue = $div.attr("id");
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/cart/addcart",
            data: {goods_id: goods_idvalue},
            success: function (msg) {
                if (msg["ok"]) {
                    layer.msg('Added successfully!', {time: 700});
                }
            },
            dataType: "json"
        });
    });

    $(".btn_addwish").click(function () {
        var $div = $(this).parent().parent().parent().parent("div");
        var goods_idvalue = $div.attr("id");
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/collections/addwish",
            data: {goods_id: goods_idvalue},
            success: function (msg) {
                if (msg["ok"]) {
                    layer.msg('Added successfully!', {time: 700});
                }
            },
            dataType: "json"
        });
    });
</script>

<script src="${pageContext.request.contextPath}/template/js/simpleCart.min.js"></script>
<!-- slide -->
<script src="${pageContext.request.contextPath}/template/js/bootstrap.min.js"></script>


</body>
</html>
</%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mxdwa
  Date: 2019/7/18
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Item</title>
    <link href="${pageContext.request.contextPath}/template/css/bootstrap.css" rel="stylesheet" type="text/css"
          media="all"/>
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="${pageContext.request.contextPath}/template/css/style.css" rel="stylesheet" type="text/css"
          media="all"/>
    <!--//theme-style-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Shopin Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndroId Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"/>

    <!--theme-style-->
    <link href="${pageContext.request.contextPath}/template/css/style4.css" rel="stylesheet" type="text/css"
          media="all"/>
    <!--//theme-style-->
    <script src="${pageContext.request.contextPath}/template/js/jquery.min.js"></script>
    <!--- start-rate---->
    <script src="${pageContext.request.contextPath}/template/js/jstarbox.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/template/css/jstarbox.css" type="text/css"
          media="screen" charset="utf-8"/>
    <script type="text/javascript">
        jQuery(function () {
            jQuery('.starbox').each(function () {
                var starbox = jQuery(this);
                starbox.starbox({
                    average: starbox.attr('data-start-value'),
                    changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
                    ghosting: starbox.hasClass('ghosting'),
                    autoUpdateAverage: starbox.hasClass('autoupdate'),
                    buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
                    stars: starbox.attr('data-star-count') || 5
                }).bind('starbox-value-changed', function (event, value) {
                    if (starbox.hasClass('random')) {
                        var val = Math.random();
                        starbox.next().text(' ' + val);
                        return val;
                    }
                })
            });
        });
    </script>
    <!---//End-rate---->
    <style>
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        .panel {
            margin-bottom: 20px;
            background-color: #fff;
            border: 1px solid transparent;
            border-radius: 4px;
            -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
            box-shadow: 0px 1px 1px rgba(0, 0, 0, 0.05);
        }

        .panel-info {
            border-color: #bce8f1;
        }

        .col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12 {
            position: relative;
            min-height: 1px;
            padding-right: 15px;
            padding-left: 15px;
        }

        /* @media all and (min-width:768px) */
        .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12 {
            float: left;
        }

        /* @media all and (min-width:768px) */
        .col-sm-4 {
            width: 33.33%;
        }

        .row {
            margin-right: -15px;
            margin-left: -15px;
        }

        .page {
            padding: 4em 0 4em;
        }

        .container {
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }

        /* @media all and (min-width:768px) */
        .container {
            width: 750px;
        }

        /* @media all and (min-width:992px) */
        .container {
            width: 970px;
        }

        /* @media all and (min-width:1200px) */
        .container {
            width: 1170px;
        }

        body {
            margin: 0;
        }

        body {
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-size: 14px;
            line-height: 1.4285;
            color: #333;
            background-color: #fff;
        }

        html {
            font-size: 10px;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
        }

        html, body {
            background: #fff;
            font-size: 100%;
            font-family: "Oxygen-Regular";
        }

        html {
            font-family: sans-serif;
            -webkit-text-size-adjust: 100%;
            -ms-text-size-adjust: 100%;
        }

        .panel-heading {
            padding: 10px 15px;
            border-bottom: 1px solid transparent;
            border-top-left-radius: 3px;
            border-top-right-radius: 3px;
        }

        .panel-info > .panel-heading {
            color: #31708f;
            background-color: #d9edf7;
            border-color: #bce8f1;
        }

        .panel-body {
            padding: 15px;
        }

        h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6 {
            font-family: inherit;
            font-weight: 500;
            line-height: 1.1;
            color: inherit;
        }

        h1, .h1, h2, .h2, h3, .h3 {
            margin-top: 20px;
            margin-bottom: 10px;
        }

        h3, .h3 {
            font-size: 24px;
        }

        h1, h2, h3, h4, h5, h6, label, p {
            margin: 0;
        }

        .panel-title {
            margin-top: 0px;
            margin-bottom: 0px;
            font-size: 16px;
            color: inherit;
        }
    </style>
    <link href="${pageContext.request.contextPath}/template/css/form.css" rel="stylesheet" type="text/css" media="all"/>
</head>
<body>
<!--header-->
<jsp:include page="/WEB-INF/page/common/customerHeader.jsp"/>
<!--banner-->
<div class="banner-top">
    <div class="container">
        <h1>Item</h1>
        <em></em>
        <h2><a href="${pageContext.request.contextPath}>