<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/login" method="post">
    <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="用户名" name="name">
    </div>
    <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="密码" name="password">
    </div>
    <div class="form-group has-feedback">
        顾客：<input type="radio" class="form-control" name="ca" checked="checked" value="0">
        管理员：<input type="radio" class="form-control" name="ca" value="1">
    </div>
    <div class="row">
        <!-- /.col -->
        <div class="col-xs-12">
            <button type="submit" class="btn btn-primary btn-block btn-flat">登录</button>
        </div>
        <!-- /.col -->
    </div>
</form>
</body>
</html>
