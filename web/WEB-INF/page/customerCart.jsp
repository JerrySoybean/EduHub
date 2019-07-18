<%--
  Created by IntelliJ IDEA.
  User: mxdwa
  Date: 2019/7/18
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Checkout</title>
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
<jsp:include page="/WEB-INF/page/common/customerHeader.jsp"/>
<!--banner-->
<div class="banner-top">
    <div class="container">
        <h1>Checkout</h1>
        <em></em>
        <h2><a href="${pageContext.request.contextPath}/customer/home">Home</a><label>/</label>Checkout</h2>
    </div>
</div>
<!--login-->
<script>$(document).ready(function(c) {
    $('.close1').on('click', function(c){
        $('.cart-header').fadeOut('slow', function(c){
            $('.cart-header').remove();
        });
    });
});
</script>
<script>$(document).ready(function(c) {
    $('.close2').on('click', function(c){
        $('.cart-header1').fadeOut('slow', function(c){
            $('.cart-header1').remove();
        });
    });
});
</script>
<script>$(document).ready(function(c) {
    $('.close3').on('click', function(c){
        $('.cart-header2').fadeOut('slow', function(c){
            $('.cart-header2').remove();
        });
    });
});
</script>
<div class="container">
    <div class="check-out">
        <div class="bs-example4" data-example-id="simple-responsive-table">
            <div class="table-responsive">
                <table class="table-heading simpleCart_shelfItem">
                    <tr>
                        <th class="table-grid">Item</th>

                        <th>Prices</th>
                        <th >Delivery </th>
                        <th>Subtotal</th>
                    </tr>
                    <tr class="cart-header">

                        <td class="ring-in"><a href="single.jsp" class="at-in"><img src="${pageContext.request.contextPath}/template/images/ch.jpg" class="img-responsive" alt=""></a>
                            <div class="sed">
                                <h5><a href="single.jsp">Sed ut perspiciatis unde</a></h5>
                                <p>(At vero eos et accusamus et iusto odio dignissimos ducimus ) </p>

                            </div>
                            <div class="clearfix"> </div>
                            <div class="close1"> </div></td>
                        <td>$100.00</td>
                        <td>FREE SHIPPING</td>
                        <td class="item_price">$100.00</td>
                        <td class="add-check"><a class="item_add hvr-skew-backward" href="#">Add To Cart</a></td>
                    </tr>
                    <tr class="cart-header1">
                        <td class="ring-in"><a href="single.jsp" class="at-in"><img src="${pageContext.request.contextPath}/template/images/ch2.jpg" class="img-responsive" alt=""></a>
                            <div class="sed">
                                <h5><a href="single.jsp">Sed ut perspiciatis unde</a></h5>
                                <p>(At vero eos et accusamus et iusto odio dignissimos ducimus ) </p>
                            </div>
                            <div class="clearfix"> </div>
                            <div class="close2"> </div></td></td>
                        <td>$100.00</td>
                        <td>FREE SHIPPING</td>
                        <td class="item_price">$100.00</td>
                        <td class="add-check"><a class="item_add hvr-skew-backward" href="#">Add To Cart</a></td>
                    </tr>
                    <tr class="cart-header2">
                        <td class="ring-in"><a href="single.jsp" class="at-in"><img src="${pageContext.request.contextPath}/template/images/ch1.jpg" class="img-responsive" alt=""></a>
                            <div class="sed">
                                <h5><a href="single.jsp">Sed ut perspiciatis unde</a></h5>
                                <p>(At vero eos et accusamus et iusto odio dignissimos ducimus ) </p>
                            </div>
                            <div class="clearfix"> </div>
                            <div class="close3"> </div></td></td>
                        <td>$100.00</td>
                        <td>FREE SHIPPING</td>
                        <td class="item_price">$100.00</td>
                        <td class="add-check"><a class="item_add hvr-skew-backward" href="#">Add To Cart</a></td>
                    </tr>

                </table>
            </div>
        </div>
        <div class="produced">
            <a href="single.jsp" class="hvr-skew-backward">Produced To Buy</a>
        </div>
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
<jsp:include page="/WEB-INF/page/common/footer.jsp"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<script src="${pageContext.request.contextPath}/template/js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="${pageContext.request.contextPath}/template/js/bootstrap.min.js"></script>

</body>
</html>
