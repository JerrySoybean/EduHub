<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer Information</title>
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
    <link href="${pageContext.request.contextPath}/template/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet"/>
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

<!--content-->
<div class="content">
    <div class="container">
        <%--Personal Information--%>
            <div class="content-mid">
                <h3>Personal Information</h3>
                <label class="line"></label>
                <%--form--%>
                <div class="bs-example" data-example-id="simple-horizontal-form">
                    <form class="form-horizontal" action="${pageContext.request.contextPath}/customer/infoupdate">
                        <input type="hidden" name="id" value="${cus.id}">
                        <div class="form-group">
                            <label for="inputName3" class="col-sm-2 control-label">UserName</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputName3" placeholder="Name" name="name" value = "${cus.name}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="inputEmail3" placeholder="Email" name="email" value="${cus.name}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputTel3" class="col-sm-2 control-label">Telephone Number</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputTel3" placeholder="Tel number" name="tel" value="${cus.tel}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="inputPassword3" placeholder="Password" name="password" value="${cus.password}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Gender  ${cus.sex}</label>
                            <div class="col-sm-10">
                                <%--<input type="radio" name="sex"  checked="checked" value = "1"> Male
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="sex"  value = "0"> Female--%>
                                <c:if test="${cus.sex==true}">
                                    <input type="radio" name="sex"  checked="checked" value = "1">Male
                                    <input type="radio" name="sex"  value = "0">Female
                                </c:if>
                                <c:if test="${cus.sex==false}">
                                    <input type="radio" name="sex" value = "1">Male
                                    <input type="radio" name="sex" checked="checked" value = "0">Female
                                </c:if>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputBirthday3" class="col-sm-2 control-label">Birthday</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputBirthday3" placeholder="Birthday" name="birthdayTxt" value="${cus.birthday}">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox"> Remember me
                                    </label>
                                </div>
                            </div>
                        </div>
                        <%--<div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <button type="submit" class="btn btn-default">Sign in</button>
                            </div>
                        </div>--%>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" class="btn btn-default btn-cancel">Cancel</button>
                            <button type="submit" class="btn btn-info pull-right">Submit</button>
                        </div>
                        <!-- /.box-footer -->
                    </form>
                </div>
            </div>
        <%--//Personal Information--%>

        <!--products-->
        <div class="content-mid">
            <h3>Trending Items</h3>
            <label class="line"></label>
            <div class="mid-popular">
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                    <div class=" mid-pop">
                        <div class="pro-img">
                            <img src="${pageContext.request.contextPath}/template/images/pc.jpg" class="img-responsive" alt="">
                            <div class="zoom-icon ">
                                <a class="picture" href="${pageContext.request.contextPath}/template/images/pc.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Women</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">Sed ut perspiciati</a></h6>
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
                            <img src="${pageContext.request.contextPath}/template/images/pc1.jpg" class="img-responsive" alt="">
                            <div class="zoom-icon ">
                                <a class="picture" href="${pageContext.request.contextPath}/template/images/pc1.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Women</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">At vero eos</a></h6>
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
                            <img src="${pageContext.request.contextPath}/template/images/pc2.jpg" class="img-responsive" alt="">
                            <div class="zoom-icon ">
                                <a class="picture" href="${pageContext.request.contextPath}/template/images/pc2.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Men</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">Sed ut perspiciati</a></h6>
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
                            <img src="${pageContext.request.contextPath}/template/images/pc3.jpg" class="img-responsive" alt="">
                            <div class="zoom-icon ">
                                <a class="picture" href="${pageContext.request.contextPath}/template/images/pc3.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Women</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">On the other</a></h6>
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
                <div class="clearfix"></div>
            </div>
            <div class="mid-popular">
                <div class="col-md-3 item-grid simpleCart_shelfItem">
                    <div class=" mid-pop">
                        <div class="pro-img">
                            <img src="${pageContext.request.contextPath}/template/images/pc4.jpg" class="img-responsive" alt="">
                            <div class="zoom-icon ">
                                <a class="picture" href="${pageContext.request.contextPath}/template/images/pc4.jpg" rel="title" class="b-link-stripe b-animate-go  thickbox"><i class="glyphicon glyphicon-search icon "></i></a>
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Men</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">On the other</a></h6>
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
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Men</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">Sed ut perspiciati</a></h6>
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
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Women</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">At vero eos</a></h6>
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
                                <a href="${pageContext.request.contextPath}/single"><i class="glyphicon glyphicon-menu-right icon"></i></a>
                            </div>
                        </div>
                        <div class="mid-1">
                            <div class="women">
                                <div class="women-top">
                                    <span>Men</span>
                                    <h6><a href="${pageContext.request.contextPath}/single">Sed ut perspiciati</a></h6>
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
                <div class="clearfix"></div>
            </div>
        </div>
        <!--//products-->

    </div>

</div>
<!--//content-->
<jsp:include page="/WEB-INF/page/common/footer.jsp"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/template/js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="${pageContext.request.contextPath}/template/js/bootstrap.min.js"></script>
<!--light-box-files -->
<script src="${pageContext.request.contextPath}/template/js/jquery.chocolat.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/template/css/chocolat.css" type="text/css" media="screen" charset="utf-8">
<script src = "${pageContext.request.contextPath}/template/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!--light-box-files -->
<script type="text/javascript" charset="utf-8">
    $(function() {
        $('a.picture').Chocolat();
        $('#inputBirthday3').datepicker({
            autoclose: true,
            todayHighlight: true,
            // language: "zh-CN", //使用中文日期
            format: "yyyy-mm-dd"
        });
        $(".btn-cancel").click(function(){
            window.history.go(-1);
        })
    });
</script>

</body>
</html>
