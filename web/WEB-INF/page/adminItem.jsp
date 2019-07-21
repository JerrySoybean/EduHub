<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Modify Item</title>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/adminlte/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">

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
                Data Tables
                <small>advanced tables</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i>Home</a></li>
                <li><a href="#">Tables</a></li>
                <li class="active">Data tables</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">Modify item</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form class="form-horizontal" action="${pageContext.request.contextPath}/admin/updateitem" method="post">

                            <input class="form-control" type="hidden" name="id" value="${item.id}">
                            <input class="form-control" type="hidden" name="picturePath" value="${item.picturePath}">
                            <input class="form-control" type="hidden" name="uploadDate" value="${item.uploadDate}">

                            <div class="box-body">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="itemName">Name</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" id="itemName" type="text" name="name" value="${item.name}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="itemClass">Class</label>
                                    <div class="col-sm-10">
                                        <select id="itemClass" class="form-control" name="gclassId">
                                            <option value="ebook" <s:if test="${item.gclassId=='ebook'}"> selected="selected" </s:if>>Electronic book</option>
                                            <option value="video" <s:if test="${item.gclassId=='video'}"> selected="selected" </s:if>>Learning video</option>
                                            <option value="paper" <s:if test="${item.gclassId=='paper'}"> selected="selected" </s:if>>Test Paper Analysis</option>
                                            <option value="flowchart" <s:if test="${item.gclassId=='flowchart'}"> selected="selected" </s:if>>Flowchart</option>
                                            <option value="protocol" <s:if test="${item.gclassId=='protocol'}"> selected="selected" </s:if>>Protocol</option>
                                            <option value="note" <s:if test="${item.gclassId=='note'}"> selected="selected" </s:if>>Study notes</option>
                                            <option value="vip" <s:if test="${item.gclassId=='vip'}"> selected="selected" </s:if>>Vip</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="itemFormat">Format</label>
                                    <div class="col-sm-10">
                                        <select id="itemFormat" class="form-control" name="gformatId">
                                            <option value="mp4" <s:if test="${item.gformatId=='mp4'}"> selected="selected" </s:if>>mp4</option>
                                            <option value="pdf" <s:if test="${item.gformatId=='pdf'}"> selected="selected" </s:if>>pdf</option>
                                            <option value="png" <s:if test="${item.gformatId=='png'}"> selected="selected" </s:if>>png</option>
                                            <option value="txt" <s:if test="${item.gformatId=='txt'}"> selected="selected" </s:if>>txt</option>
                                            <option value="word" <s:if test="${item.gformatId=='word'}"> selected="selected" </s:if>>word</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="itemPrice">Price</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" id="itemPrice" type="text" name="price" value="${item.price}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="itemIntroduction">Introduction</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" id="itemIntroduction" type="text" name="introduction" style="width: 100%; height: 100%">${item.introduction}</textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="itemPicturePath">Picture path</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" id="itemPicturePath" type="file" name="newPicturePath" value="${item.picturePath}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="itemSize">Size</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" id="itemSize" type="text" name="size" value="${item.size}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Visible</label>
                                    <div class="col-sm-10">
                                        <c:if test="${item.visible==true}">
                                            On sale: <input name="visible" type="radio" checked="checked" value="true">&nbsp;&nbsp;
                                            Off sale: <input name="visible" type="radio" value="false">
                                        </c:if>
                                        <c:if test="${item.visible==false}">
                                            On sale: <input name="visible" type="radio" value="true">&nbsp;&nbsp;
                                            Off sale: <input name="visible" type="radio" checked="checked" value="false">
                                        </c:if>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Restriction</label>
                                    <div class="col-sm-10">
                                        <c:if test="${item.restriction==true}">
                                            Vip: <input name="restriction" type="radio" checked="checked" value="true">&nbsp;&nbsp;
                                            Non vip: <input name="restriction" type="radio" value="false">
                                        </c:if>
                                        <c:if test="${item.restriction==false}">
                                            Vip: <input name="restriction" type="radio" value="true">&nbsp;&nbsp;
                                            Non vip: <input name="restriction" type="radio" checked="checked" value="false">
                                        </c:if>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="itemUploadTime">Upload time</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" id="itemUploadTime" type="text" name="uploadDateTxt" value="${item.uploadDateTxt}" readonly="true">
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button class="btn btn-default btn_quxiao" type="button">Cancel</button>
                                <button class="btn btn-info pull-right" type="submit">Submit</button>
                            </div>
                            <!-- /.box-footer -->
                        </form>
                    </div>
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
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
<script src="${pageContext.request.contextPath}/adminlte/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<script src="${pageContext.request.contextPath}/adminlte/bower_components/bootstrap-datepicker/js/locales/bootstrap-datepicker.zh-CN.js"></script>
<script>
    $(function () {
        // Date picker
        $('#finishTime').datepicker({
            autoclose: true,
            language: "zh-CN",
            format: "yyyy-mm-dd"
        });
        $(".btn_quxiao").click(function () {
            window.history.go(-1);
        });
    });
</script>

</body>
</html>
