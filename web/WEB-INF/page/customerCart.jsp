<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Cart</title>
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

    <script type="text/javascript">
        function compute(obj) {
            var total = 0;
            var checkboxes = document.getElementsByName("checkbox");
            for (var index = 0; index < checkboxes.length; index++) {
                if (checkboxes[index].checked) {
                    total += parseFloat(checkboxes[index].value);
                }
            }
            myspan.innerHTML = "$" + total;
        }
    </script>
    <!---//End-rate---->
</head>
<jsp:include page="/WEB-INF/page/common/customerHeader.jsp"/>
<!--banner-->
<div class="banner-top">
    <div class="container">
        <h1>Cart</h1>
        <em></em>
        <h2><a href="${pageContext.request.contextPath}/customer/home">Home</a><label>/</label>Cart</h2>
    </div>
</div>
<!--login-->

<div class="container">
    <div class="check-out">
        <div class="bs-example4" data-example-id="simple-responsive-table">
            <div class="table-responsive">
                <table class="table-heading simpleCart_shelfItem" id="cartTable">
                    <tr>
                        <th class="table-grid">Item</th>
                        <th>Format</th>
                        <th>Size</th>
                        <th>Prices</th>
                        <th>Check</th>
                    </tr>
                    <c:forEach items="${cart_list}" var="item" varStatus="loop">
                        <tr class="cart-header" id="${item.id}">
                            <td class="ring-in"><a href="${pageContext.request.contextPath}/customer/item?id=${item.goodsId}" class="at-in"><img src="${pageContext.request.contextPath}${goods_in_cart[loop.count-1].picturePath}" class="img-responsive" alt=""></a>
                                <div class="sed">
                                    <h5><a href="${pageContext.request.contextPath}/customer/item?id=${item.goodsId}">${goods_in_cart[loop.count-1].name}</a></h5>
                                    <p>${goods_in_cart[loop.count-1].introduction}</p>
                                </div>
                                <div class="clearfix"> </div>
                            </td>
                            <td>${goods_in_cart[loop.count-1].gformatId}</td>
                            <td>${goods_in_cart[loop.count-1].size} KB</td>
                            <td>$${goods_in_cart[loop.count-1].price}</td>
                            <td class="item_price">
                                <div class="checkbox">
                                    <label>
                                        <input hidden="hidden" value="${goods_in_cart[loop.count-1].id}">
                                        <input name="checkbox" type="checkbox" onchange="compute(this)" value="${goods_in_cart[loop.count-1].price}">
                                    </label>
                                </div>
                            </td>
                            <td class="add-check">
                                <button class="item_add hvr-skew-backward btn_del">Delete</button>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
        <div class="produced">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Total: <span id="myspan">$0</span></h3>
                </div>
            </div>
            <button class="hvr-skew-backward btn_buy">Buy</button>
        </div>
    </div>
</div>
<br>
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
            var item_idvalue = $tr.attr("id");
            var goods_name = $tr.find("td:eq(0)").find("div:eq(0)").find("a").html();
            layer.confirm('Do you want to delete ' + goods_name + '?', {icon: 3, title: "Tips"}, function() {
                $.ajax({
                    type: "POST",
                    url: "${pageContext.request.contextPath}/cart/del",
                    data: {id: item_idvalue},
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
    });

    $(".btn_buy").click(function () {
        var parm = "";
        $("input[name='checkbox']:checked").each(function (i) {
           // itemId_list[i] = $(this).parents("tr").attr("id");
            parm = parm + ("itemId_list=" + $(this).parents("tr").attr("id") + "&");
        });
        if (parm=="") {
            layer.alert("Please check those items you want to buy", {icon: 0, title: "Check"});
        } else {
            layer.confirm('Do you want to buy these?', {icon: 3, title: "Confirm"}, function(index) {
                /* $.ajax({
                     type: "POST",
                     url: "${pageContext.request.contextPath}/customer/topay",
                data: JSON.stringify(itemId_list),
                contentType:"application/json;charset=utf-8",
                dataType: "json"
            });*/
                layer.close(index);
                // console.info(parm);
                window.location.href = "${pageContext.request.contextPath}/customer/topay?" + parm
            });
        }
    });
</script>
</body>
</html>