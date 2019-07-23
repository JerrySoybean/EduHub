<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact</title>
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
    <style type="text/css">
        .figure-list{
            margin: 0;
            padding: 0;
        }
        .figure-list:after{
            content: "";
            display: block;
            clear: both;
            height: 0;
            overflow: hidden;
            visibility: hidden;
        }
        .figure-list li{
            list-style: none;
            float: left;
            width: 16.6%;
            margin: 0 0% 0% 0;
        }
        .figure-list figure{
            border: 0px solid #000;
            position: relative;
            width: 100%;
            height: 0;
            overflow: hidden;
            margin: 0;
            padding-bottom: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .figure-list figure a{
            display: block;
            position: absolute;
            width: 100%;
            top: 0;
            bottom: 0;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/page/common/customerHeader.jsp"/>
<!--banner-->
<div class="banner-top">
    <div class="container">
        <h1>Contact</h1>
        <em></em>
        <h2><a href="${pageContext.request.contextPath}/customer/home">Home</a><label>/</label>Contact</h2>
    </div>
</div>
<ul class="figure-list">
    <li>
        <figure style="background-image:url(${pageContext.request.contextPath}/images/lcr.png)">
            <a href="#"></a>
        </figure>
    </li>
    <li>
        <figure style="background-image:url(${pageContext.request.contextPath}/images/hmc.png)">
            <a href="#"></a>
        </figure>
    </li>
    <li>
        <figure style="background-image:url(${pageContext.request.contextPath}/images/jby.jpg)">
            <a href="#"></a>
        </figure>
    </li>
    <li>
        <figure style="background-image:url(${pageContext.request.contextPath}/images/wsn.jpg)">
            <a href="#"></a>
        </figure>
    </li>
    <li>
        <figure style="background-image:url(${pageContext.request.contextPath}/images/htq.jpg)">
            <a href="#"></a>
        </figure>
    </li>
    <li>
    <figure style="background-image:url(${pageContext.request.contextPath}/images/lt.jpg)">
        <a href="#"></a>
    </figure>
    </li>
</ul>

<div class="contact">
    <table align="center">
        <tbody align="center">
            <tr>
                <td width="16.6%">
                    李宬睿 Chengrui Li
                </td>
                <td width="16.6%">
                    侯牧村 Mucun Hou
                </td>
                <td width="16.6%">
                    焦炳祎 Bingyi Jiao
                </td>
                <td width="16.6%">
                    王胜男 Shengnan Wang
                </td>
                <td width="16.6%">
                    何天其 Tianqi He
                </td>
                <td width="16.6%">
                    刘恬 Tian Liu
                </td>
            </tr>
        </tbody></table>
</div>

<!--//contact-->
<jsp:include page="/WEB-INF/page/common/footer.jsp"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->

<script src="${pageContext.request.contextPath}/template/js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="${pageContext.request.contextPath}/template/js/bootstrap.min.js"></script>

</body>
</html>
