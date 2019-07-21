<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Bill</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminlte/bower_components/Ionicons/css/ionicons.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminlte/bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminlte/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminlte/dist/css/skins/_all-skins.min.css">

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <jsp:include page="/WEB-INF/page/common/adminHeader.jsp"/>
    <!-- Left side column. contains the logo and sidebar -->
    <jsp:include page="/WEB-INF/page/common/menu.jsp"/>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Result
                <small>Your bill</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                <li><a href="#">Tables</a></li>
                <li class="active">Data tables</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="box">
                <div class="box-body">
                    Total income: $${total}
                </div>
            </div>
        </section>
    </div>
    <!-- /.content-wrapper -->

    <jsp:include page="/WEB-INF/page/common/adminFooter.jsp"/>

</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/adminlte/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/adminlte/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="${pageContext.request.contextPath}/adminlte/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/adminlte/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="${pageContext.request.contextPath}/adminlte/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="${pageContext.request.contextPath}/adminlte/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/adminlte/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/adminlte/dist/js/demo.js"></script>

</body>
</html>
