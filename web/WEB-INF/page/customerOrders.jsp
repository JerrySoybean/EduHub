<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Comment</title>
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
        <h1>Orders</h1>
        <em></em>
        <h2><a href="${pageContext.request.contextPath}/customer/home">Home</a><label>/</label>Orders</h2>
    </div>
</div>

<div class="container">
    <div class="check-out">
        <div class="bs-example4" data-example-id="simple-responsive-table">
            <div class="table-responsive">
                <table class="table-heading simpleCart_shelfItem" id="cartTable">
                    <tr>
                        <th class="table-grid">Orders</th>
                        <th>Prices</th>
                        <th>Status</th>
                        <th>Created time</th>
                        <th>Comment</th>
                    </tr>
                    <c:forEach items="${orders}" var="order" varStatus="loop">
                        <tr class="cart-header" id="${order.id}">
                            <td class="ring-in"><a href="${pageContext.request.contextPath}/customer/item?id=${order.goodsId}" class="at-in"><img src="${pageContext.request.contextPath}${goods_in_orders[loop.count-1].picturePath}" class="img-responsive" alt=""></a>
                                <div class="sed">
                                    <h5><a href="${pageContext.request.contextPath}/customer/item?id=${order.goodsId}">${goods_in_orders[loop.count-1].name}</a></h5>
                                    <p>${goods_in_orders[loop.count-1].introduction}</p>
                                </div>
                                <div class="clearfix"> </div>
                            </td>
                            <td>$${goods_in_orders[loop.count-1].price}</td>
                            <td>${order.statusTxt}</td>
                            <td class="item_price">${order.createTimeTxt}</td>
                            <td class="add-check">
                                <%--<a href="${pageContext.request.contextPath}/customer/comment?id=${order.id}" class="item_add hvr-skew-backward">Comment</a>--%>
                                <button class="item_add hvr-skew-backward btn_seeadd">comment</button>
                            </td>
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
        $(".btn_seeadd").click(function () {
            var $tr = $(this).parents("tr");
            var order_idvalue = $tr.attr("id");
            layer.open({
                type: 2,
                title: 'Comment',
                shadeClose: true,
                shade: 0.5,
                area: ['500px', '600px'],
                content: '${pageContext.request.contextPath}/customer/comment?id=' + order_idvalue
            })
        });
    })
</script>
</body>
</html>
