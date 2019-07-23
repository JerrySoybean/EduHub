<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h1>Pay</h1>
        <em></em>
        <h2><a href="${pageContext.request.contextPath}/customer/home">Home</a><label>/</label>Pay</h2>
    </div>
</div>
<!--content-->
<div class="container">
    <div class="page">
        <div class="page-header">
            <h3>Personal Information</h3>
        </div>
        <div class="table-responsive">
            <table class="table table-bordered table-striped">
                <colgroup>
                    <col class="col-xs-1">
                    <col class="col-xs-7">
                </colgroup>
                <thead>
                <tr>
                    <th>Properties</th>
                    <th>Your info
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <a href="${pageContext.request.contextPath}/customer/info">Change</a></th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <th scope="row">
                        <code>Name</code>
                    </th>
                    <td>${curr_customer.name}</td>
                </tr>
                <tr>
                    <th scope="row">
                        <code>Email</code>
                    </th>
                    <td>${curr_customer.email}</td>
                </tr>
                <tr>
                    <th scope="row">
                        <code>Tel</code>
                    </th>
                    <td>${curr_customer.tel}</td>
                </tr>
                <tr>
                    <th scope="row">
                        <code>Privilege</code>
                    </th>
                    <td>${curr_customer.privilegeTxt}</td>
                </tr>
                <tr>
                    <th scope="row">
                        <code>Birthday</code>
                    </th>
                    <td>${curr_customer.birthdayTxt}</td>
                </tr>
                </tbody>
            </table>
        </div>
        <!--table-->
        <div class="page-header">
            <h3>Items</h3>
        </div>

        <div class="bs-example" data-example-id="simple-table">
            <table class="table">
                <%--<caption>Optional table caption.</caption>--%>
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Item</th>
                        <th>Category</th>
                        <th>Format</th>
                        <th>Size</th>
                        <th>Restriction</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th scope="row">Total</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>${total_size} KB</td>
                        <td></td>
                        <td>$${total_price}</td>
                    </tr>
                </tfoot>
                <tbody>
                <c:forEach items="${goods_list}" var="goods" varStatus="loop">
                    <tr name="item_id" id="${itemId_list[loop.count-1]}">
                        <th scope="row">${loop.count}</th>
                        <td>${goods.name}</td>
                        <td>${class_list[loop.count-1]}</td>
                        <td>${goods.gformatId}</td>
                        <td>${goods.size} KB</td>
                        <td>${goods.restrictionTxt}</td>
                        <td>$${goods.price}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div><!-- /example -->
        <!--//table-->
        <img class="QR" hidden="hidden" src="${pageContext.request.contextPath}/images/QR.jpg">
        <div align="center">
            <button class="btn btn-lg btn-primary btn_pay" type="button">Pay</button>
        </div>
    </div>
</div>
<!--//content-->
<!--//footer-->
<jsp:include page="/WEB-INF/page/common/footer.jsp"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<script src="${pageContext.request.contextPath}/template/js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="${pageContext.request.contextPath}/template/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/template/layer/layer.js"></script>

<script>
    $(function () {
        var parm = "";
        $("tr[name='item_id']").each(function () {
            parm = parm + ("itemId_list=" + $(this).attr("id") + "&");
        });
        var QR = $(".QR");

        $(".btn_pay").click(function () {
            layer.confirm(QR, {icon: 3, title: "Pay", area: ['400px', '500px']}, function(index) {
                layer.close(index);
                window.location.href = "${pageContext.request.contextPath}/customer/pay?" + parm
            });
        });
    })
</script>

</body>
</html>