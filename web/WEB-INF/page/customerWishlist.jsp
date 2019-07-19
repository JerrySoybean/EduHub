<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Collections</title>
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
    <%--<script src="http://apps.bdimg.com/libs/jquery/1.11.1/jquery.min.js"></script>--%>
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
        <h1>Collections</h1>
        <em></em>
        <h2><a href="${pageContext.request.contextPath}/customer/home">Home</a><label>/</label>Collections</h2>
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

<div class="container">
    <div class="check-out">
        <div class="bs-example4" data-example-id="simple-responsive-table">
            <div class="table-responsive">
                <table class="table-heading simpleCart_shelfItem" id="cartTable">
                    <tr>
                        <th class="table-grid">Item</th>
                        <th>Prices</th>
                        <th>Size</th>
                        <th>BalaBala</th>
                    </tr>
                    <c:forEach items="${wish_list}" var="good" varStatus="loop">
                        <tr class="cart-header" id="${good.id}">
                            <td class="ring-in"><a href="single.jsp" class="at-in"><img src="${pageContext.request.contextPath}/template/images/ch.jpg" class="img-responsive" alt=""></a>
                                <div class="sed">
                                    <h5><a href="single.jsp">${goods_in_wishlist[loop.count-1].name}</a></h5>
                                    <p>${goods_in_wishlist[loop.count-1].introduction}</p>
                                </div>
                                <div class="clearfix"> </div>
                            </td>
                            <td>$${goods_in_wishlist[loop.count-1].price}</td>
                            <td>${goods_in_wishlist[loop.count-1].size}</td>
                            <td class="item_price">balabala</td>
                            <td class="add-check">
                                <a class="item_add hvr-skew-backward" href="#">Buy</a>
                                <button class="item_add hvr-skew-backward btn_add">Add to cart</button>
                                <button class="item_add hvr-skew-backward btn_del">Delete</button>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
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
<script src="${pageContext.request.contextPath}/template/layer/layer.js"></script>
<script>
    $(function () {
        $(".btn_del").click(function () {
            var $tr = $(this).parents("tr");
            var collection_idvalue = $tr.attr("id");
            var goods_name = $tr.find("td:eq(0)").find("div:eq(0)").find("a").html();
            layer.confirm('Do you want to delete ' + goods_name + '?', {icon: 3, title: "Tips"}, function() {
                $.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath}/collections/del",
                    data: {id: collection_idvalue},
                    success: function (msg) {
                        if (msg["ok"]) {
                            layer.msg("Succeed", {time: 700}, function () {
                                window.location.reload();
                            })
                        }
                    },
                    dataType: "json"
                });
            });
            layer.close(index);
        })
    })
</script>
<script>
    $(function () {
        $(".btn_add").click(function () {
            var $tr = $(this).parents("tr");
            var goods_idvalue = $tr.attr("id");
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/cart/addcart",
                data: {goods_id: goods_idvalue},
                success: function (msg) {
                    if (msg["ok"]) {
                        layer.msg('Added successfully!');
                    }
                },
                dataType: "json"
            });
        });


    })
</script>
</body>
</html>
