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
    <script src="${pageContext.request.contextPath}/template/js/jquery.min.js"></script>
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
    <link href="${pageContext.request.contextPath}/template/css/form.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<!--header-->
<jsp:include page="/WEB-INF/page/common/customerHeader.jsp"/>
<!--banner-->
<div class="banner-top">
    <div class="container">
        <h1>Item</h1>
        <em></em>
        <h2><a href="/customer/home">Home</a><label>/</label>Item</h2>
    </div>
</div>
<div class="single">

    <div class="container">
        <div class="col-md-9">
            <div class="col-md-5 grid">
                <div class="flexslider">
                    <ul class="slides">
                        <li data-thumb="${pageContext.request.contextPath}${item.picturePath}">
                            <div class="thumb-image"> <img src="${pageContext.request.contextPath}${item.picturePath}" data-imagezoom="true" class="img-responsive"> </div>
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
                    <p class="in-para"> There are many variations of passages of Lorem Ipsum.</p>
                    <div class="price_single">
                        <span class="reducedfrom item_price">$${item.price}</span>
                        <div class="clearfix"></div>
                    </div>
                    <h4 class="quick">Quick Overview:</h4>
                    <p class="quick_desc">${item.introduction}</p>
                    <div class="wish-list">
                        <ul>
                            <li class="wish"><button class="add-to item_add hvr-skew-backward btn_addwish"><span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>Add to Wishlist</button></li>
                        </ul>
                    </div>
                    <div class="quantity">
                        <div class="quantity-select">
                            <div class="entry value-minus">&nbsp;</div>
                            <div class="entry value"><span>1</span></div>
                            <div class="entry value-plus active">&nbsp;</div>
                        </div>
                    </div>
                    <!--quantity-->
                    <script>
                        $('.value-plus').on('click', function(){
                            var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)+1;
                            divUpd.text(newVal);
                        });

                        $('.value-minus').on('click', function(){
                            var divUpd = $(this).parent().find('.value'), newVal = parseInt(divUpd.text(), 10)-1;
                            if(newVal>=1) divUpd.text(newVal);
                        });
                    </script>
                    <!--quantity-->

                    <button class="add-to item_add hvr-skew-backward btn_addcart">Add to cart</button>
                    <div class="clearfix"> </div>
                </div>

            </div>
            <div class="clearfix"> </div>
            <!---->
            <div class="tab-head">
                <nav class="nav-sidebar">
                    <ul class="nav tabs">
                        <li class="active"><a href="#tab1" data-toggle="tab">Product Description</a></li>
                        <li class=""><a href="#tab2" data-toggle="tab">Additional Information</a></li>
                        <li class=""><a href="#tab3" data-toggle="tab">Reviews</a></li>
                    </ul>
                </nav>
                <div class="tab-content one">
                    <div class="tab-pane active text-style" id="tab1">
                        <div class="facts">
                            <p > There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
                            <ul>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Research</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Design and Development</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Porting and Optimization</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>System integration</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Verification, Validation and Testing</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Maintenance and Support</li>
                            </ul>
                        </div>

                    </div>
                    <div class="tab-pane text-style" id="tab2">

                        <div class="facts">
                            <p > Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections </p>
                            <ul >
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Multimedia Systems</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Digital media adapters</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Set top boxes for HDTV and IPTV Player  </li>
                            </ul>
                        </div>

                    </div>
                    <div class="tab-pane text-style" id="tab3">

                        <div class="facts">
                            <p > There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined </p>
                            <ul>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Research</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Design and Development</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Porting and Optimization</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>System integration</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Verification, Validation and Testing</li>
                                <li><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>Maintenance and Support</li>
                            </ul>
                        </div>

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
                    <li class="item1"><a href="/customer/learnvideo">Learning Video</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.jsp">Cute Kittens </a></li>
                            <li class="subitem2"><a href="product.jsp">Strange Stuff </a></li>
                            <li class="subitem3"><a href="product.jsp">Automatic Fails </a></li>
                        </ul>
                    </li>
                    <li class="item2"><a href="/customer/ebook">Electronic Books</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.jsp">Cute Kittens </a></li>
                            <li class="subitem2"><a href="product.jsp">Strange Stuff </a></li>
                            <li class="subitem3"><a href="product.jsp">Automatic Fails </a></li>
                        </ul>
                    </li>
                    <li class="item3"><a href="/customer/paper">Test Paper Analysis</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.jsp">Cute Kittens </a></li>
                            <li class="subitem2"><a href="product.jsp">Strange Stuff </a></li>
                            <li class="subitem3"><a href="product.jsp">Automatic Fails</a></li>
                        </ul>
                    </li>
                    <li class="item4"><a href="/customer/protocol">Experiment Protocol</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.jsp">Cute Kittens </a></li>
                            <li class="subitem2"><a href="product.jsp">Strange Stuff </a></li>
                            <li class="subitem3"><a href="product.jsp">Automatic Fails</a></li>
                        </ul>
                    </li>
                    <li class="item4"><a href="/customer/flowchart">Flow Chart</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.jsp">Cute Kittens </a></li>
                            <li class="subitem2"><a href="product.jsp">Strange Stuff </a></li>
                            <li class="subitem3"><a href="product.jsp">Automatic Fails</a></li>
                        </ul>
                    </li>
                    <li class="item4"><a href="/customer/studynote">Studying Note</a>
                        <ul class="cute">
                            <li class="subitem1"><a href="product.jsp">Cute Kittens </a></li>
                            <li class="subitem2"><a href="product.jsp">Strange Stuff </a></li>
                            <li class="subitem3"><a href="product.jsp">Automatic Fails </a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--initiate accordion-->
            <script type="text/javascript">
                $(function() {
                    var menu_ul = $('.menu-drop > li > ul'),
                        menu_a  = $('.menu-drop > li > a');
                    menu_ul.hide();
                    menu_a.click(function(e) {
                        e.preventDefault();
                        if(!$(this).hasClass('active')) {
                            menu_a.removeClass('active');
                            menu_ul.filter(':visible').slideUp('normal');
                            $(this).addClass('active').next().stop(true,true).slideDown('normal');
                        } else {
                            $(this).removeClass('active');
                            $(this).next().stop(true,true).slideUp('normal');
                        }
                    });

                });
            </script>
            <!--//menu-->
            <section  class="sky-form">
                <h4 class="cate">Discounts</h4>
                <div class="row row1 scroll-pane">
                    <div class="col col-4">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Upto - 10% (20)</label>
                    </div>
                    <div class="col col-4">
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>40% - 50% (5)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>30% - 20% (7)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>10% - 5% (2)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Other(50)</label>
                    </div>
                </div>
            </section>


            <!---->
            <section  class="sky-form">
                <h4 class="cate">Type</h4>
                <div class="row row1 scroll-pane">
                    <div class="col col-4">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Sofa Cum Beds (30)</label>
                    </div>
                    <div class="col col-4">
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Bags  (30)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Caps & Hats (30)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Jackets & Coats   (30)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Jeans  (30)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Shirts   (30)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Sunglasses  (30)</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Swimwear  (30)</label>
                    </div>
                </div>
            </section>
            <section  class="sky-form">
                <h4 class="cate">Brand</h4>
                <div class="row row1 scroll-pane">
                    <div class="col col-4">
                        <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>Roadstar</label>
                    </div>
                    <div class="col col-4">
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Levis</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Persol</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Nike</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Edwin</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>New Balance</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Paul Smith</label>
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Ray-Ban</label>
                    </div>
                </div>
            </section>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
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
<jsp:include page="/WEB-INF/page/common/footer.jsp"/>
<!--//footer-->
<script src="${pageContext.request.contextPath}/template/js/imagezoom.js"></script>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script defer src="${pageContext.request.contextPath}/template/js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/template/css/flexslider.css" type="text/css" media="screen" />
<script src="${pageContext.request.contextPath}/template/layer/layer.js "></script>
<script>
    // Can also be used with $(document).ready()
    $(window).load(function() {
        $('.flexslider').flexslider({
            animation: "slide",
            controlNav: "thumbnails"
        });
    });
    $(".wish-list").on("click",".wish",function(){
    });

    $(".btn_addcart").click(function () {
        var $div = $(this).parent("div");
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
        alert(goods_idvalue)
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

<script src="${pageContext.request.contextPath}/template/js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="${pageContext.request.contextPath}/template/js/bootstrap.min.js"></script>


</body>
</html>