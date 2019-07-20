<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Pay</title>
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
        <h1>Pay</h1>
        <em></em>
        <h2><a href="${pageContext.request.contextPath}/customer/home">Home</a><label>/</label>Pay</h2>
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
                    <c:forEach items="${goods_in_wishlist}" var="good">
                        <tr class="cart-header" id="${good.id}">
                            <td class="ring-in"><a href="customerItem.jsp" class="at-in"><img src="${pageContext.request.contextPath}/template/images/ch.jpg" class="img-responsive" alt=""></a>
                                <div class="sed">
                                    <h5><a href="customerItem.jsp">${good.name}</a></h5>
                                    <p>${good.introduction}</p>
                                </div>
                                <div class="clearfix"> </div>
                            <td>$${good.price}</td>
                            <td>${good.size}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>

<!--//login-->
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
        $(".btn_add").click(function () {
            var $tr = $(this).parents("tr");
            var goods_idvalue = $tr.attr("id");
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/cart/addcart",
                data: {goods_id:goods_idvalue},
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
