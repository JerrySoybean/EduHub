<%@ page import="com.demo.mms.common.domain.Goods" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Study Notes</title>
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
    <%--datepicker--%>
    <link href="${pageContext.request.contextPath}/template/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.css" rel="stylesheet"/>
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

</head>
<body>
<jsp:include page="/WEB-INF/page/common/customerHeader.jsp"/>
<hr>
<!--content-->
<!--products-->
<div class="content-mid">
    <h3>Study Notes</h3>
    <label class="line"></label>
    <% int count = -1; List<Goods> goods = (List<Goods>) request.getAttribute("goods"); %>
    <c:if test="${rownum > 0}">
        <c:forEach  begin="1" end="${rownum}">
            <%--<p>hello</p>--%>
            <div class="mid-popular">
                <c:forEach begin="1" end="4">
                    <div class="col-md-3 item-grid simpleCart_shelfItem" <%=count++%>>
                        <div class=" mid-pop">
                            <div class="pro-img">
                                <img src="${pageContext.request.contextPath}<%=goods.get(count).getPicturePath()%>" class="img-responsive" alt="">
                                <div class="zoom-icon ">
                                    <a class="picture" href="${pageContext.request.contextPath}<%=goods.get(count).getPicturePath()%>" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                    <a href="${pageContext.request.contextPath}/customer/item?id=<%=goods.get(count).getId()%>"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                                </div>
                            </div>
                            <div class="mid-1">
                                <div class="women">
                                    <div class="women-top">
                                        <span><%=goods.get(count).getGclassId()%></span>
                                        <h6><a href="${pageContext.request.contextPath}/customer/item?id=<%=goods.get(count).getId()%>"><%=goods.get(count).getName()%></a></h6>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="mid-2">
                                    <p ><em class="item_price">$<%=goods.get(count).getPrice()%></em></p>
                                    <div class="block">
                                        <div class="starbox small ghosting"> </div>
                                    </div>

                                    <div class="clearfix"></div>
                                </div>

                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
            <div class="clearfix"></div>
        </c:forEach>
    </c:if>

    <c:forEach begin="1" end="${lcolnum}">
        <div class="col-md-3 item-grid simpleCart_shelfItem" <%=count++%>>
            <div class=" mid-pop">
                <div class="pro-img">
                    <img src="${pageContext.request.contextPath}<%=goods.get(count).getPicturePath()%>" class="img-responsive" alt="">
                    <div class="zoom-icon ">
                        <a class="picture" href="${pageContext.request.contextPath}<%=goods.get(count).getPicturePath()%>" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                        <a href="${pageContext.request.contextPath}/customer/item?id=<%=goods.get(count).getId()%>"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                    </div>
                </div>
                <div class="mid-1">
                    <div class="women">
                        <div class="women-top">
                            <span><%=goods.get(count).getGclassId()%></span>
                            <h6><a href="${pageContext.request.contextPath}/customer/item?id=<%=goods.get(count).getId()%>"><%=goods.get(count).getName()%></a></h6>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="mid-2">
                        <p ><em class="item_price">$<%=goods.get(count).getPrice()%></em></p>
                        <div class="block">
                            <div class="starbox small ghosting"> </div>
                        </div>

                        <div class="clearfix"></div>
                    </div>

                </div>
            </div>
        </div>
    </c:forEach>
    <div class="clearfix"></div>
    <%--<div class="mid-popular">
        <div class="col-md-3 item-grid simpleCart_shelfItem">
            <div class=" mid-pop">
                <div class="pro-img">
                    <img src="${pageContext.request.contextPath}/template/images/pc4.jpg" class="img-responsive" alt="">
                    <div class="zoom-icon ">
                        <a class="picture" href="${pageContext.request.contextPath}/template/images/pc4.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                        <a href="${pageContext.request.contextPath}/customer/item"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                    </div>
                </div>
                <div class="mid-1">
                    <div class="women">
                        <div class="women-top">
                            <span>Men</span>
                            <h6><a href="${pageContext.request.contextPath}/customer/item">On the other</a></h6>
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
                        <a href="${pageContext.request.contextPath}/customer/item"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                    </div>
                </div>
                <div class="mid-1">
                    <div class="women">
                        <div class="women-top">
                            <span>Men</span>
                            <h6><a href="${pageContext.request.contextPath}/customer/item">Sed ut perspiciati</a></h6>
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
                        <a href="${pageContext.request.contextPath}/customer/item"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                    </div>
                </div>
                <div class="mid-1">
                    <div class="women">
                        <div class="women-top">
                            <span>Women</span>
                            <h6><a href="${pageContext.request.contextPath}/customer/item">At vero eos</a></h6>
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
                        <a href="${pageContext.request.contextPath}/customer/item"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                    </div>
                </div>
                <div class="mid-1">
                    <div class="women">
                        <div class="women-top">
                            <span>Men</span>
                            <h6><a href="${pageContext.request.contextPath}/customer/item?id=${goods[0].id}/template/images/ca.png" alt=""></a></h6>
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
    </div>--%>
</div>
<!--//products-->
<!--//content-->
<jsp:include page="/WEB-INF/page/common/footer.jsp"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/template/js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="${pageContext.request.contextPath}/template/js/bootstrap.min.js"></script>
<!--light-box-files -->
<script src="${pageContext.request.contextPath}/template/js/jquery.chocolat.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/template/css/chocolat.css" type="text/css" media="screen" charset="utf-8">
<script src = "${pageContext.request.contextPath}/template/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.js"></script>
<!--light-box-files -->
<script type="text/javascript" charset="utf-8">
    $(function() {
        $("a.picture").Chocolat();
        //Date picker
        $("#inputBirthday3").datepicker({
            autoclose: true,
            todayHighlight: true,
            format: "yyyy-mm-dd"
        });
        $(".btn-flat").click(function(){
            // alert("Submit successfully.")
        });
    });
</script>

</body>
</html>
