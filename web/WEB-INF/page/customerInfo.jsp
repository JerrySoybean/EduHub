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
                        <p class="login-box-msg" style="color: orangered">${msg}</p><br>
                        <input type="hidden" name="id" value="${curr_customer.id}">
                        <div class="form-group">
                            <label for="inputName3" class="col-sm-2 control-label">UserName</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputName3" placeholder="Name" name="name" value = "${curr_customer.name}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="inputEmail3" placeholder="Email" name="email" value="${curr_customer.email}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputTel3" class="col-sm-2 control-label">Telephone Number</label>
                            <div class="col-sm-10">
                                <input type="tel" class="form-control" id="inputTel3" placeholder="Tel number" name="tel" value="${curr_customer.tel}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="OldPassword" class="col-sm-2 control-label">Old Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="OldPassword" placeholder="Old password" name="password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="NewPassword" class="col-sm-2 control-label">New Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="NewPassword" placeholder="New password" name="password2">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="NewPassword2" class="col-sm-2 control-label">Confirm New Password</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="NewPassword2" placeholder="Confirm new password" name="password3">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Gender</label>
                            <div class="col-sm-10">
                                <%--<input type="radio" name="sex"  checked="checked" value = "1"> Male
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="radio" name="sex"  value = "0"> Female--%>
                                <c:if test="${curr_customer.sex==true}">
                                    <input type="radio" name="sex"  checked="checked" value = "1">Male&nbsp;&nbsp;
                                    <input type="radio" name="sex"  value = "0">Female
                                </c:if>
                                <c:if test="${curr_customer.sex==false}">
                                    <input type="radio" name="sex" value = "1">Male&nbsp;&nbsp;
                                    <input type="radio" name="sex" checked="checked" value = "0">Female
                                </c:if>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputBirthday3" class="col-sm-2 control-label">Birthday</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="inputBirthday3" placeholder="Birthday" name="birthday" value="${curr_customer.birthdayTxt}">
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
                            <button type="submit" class="btn btn-info btn-block btn-flat">Submit</button>
                            <%--<button type="button" class="btn btn-default btn-cancel">Cancel</button>--%>
                        </div>
                        <!-- /.box-footer -->
                    </form>
                </div>
            </div>
        <%--//Personal Information--%>

    </div>

</div>
<!--//content-->
<jsp:include page="/WEB-INF/page/common/footer.jsp"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/template/js/simpleCart.min.js"> </script>
<!-- slide -->
<script src="${pageContext.request.contextPath}/template/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/template/layer/layer.js"></script>
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
