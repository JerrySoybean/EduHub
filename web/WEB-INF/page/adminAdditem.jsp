<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Add Item</title>
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
                <small>Add item</small>
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
                            <h3 class="box-title">Add item</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form class="form-horizontal" id="form" action="${pageContext.request.contextPath}/admin/additem" method="post">
                            <br><p class="login-box-msg" style="color: orangered">${msg}</p>
                            <div class="box-body">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="itemName">Name</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" id="itemName" type="text" name="name" placeholder="Name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="itemClass">Class</label>
                                    <div class="col-sm-10">
                                        <select id="itemClass" class="form-control" name="gclassId">
                                            <option value="ebook" selected="selected">Electronic book</option>
                                            <option value="video">Learning video</option>
                                            <option value="paper">Test Paper Analysis</option>
                                            <option value="flowchart">Flowchart</option>
                                            <option value="protocol">Protocol</option>
                                            <option value="note">Study notes</option>
                                            <option value="vip">Vip</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="itemFormat">Format</label>
                                    <div class="col-sm-10">
                                        <select id="itemFormat" class="form-control" name="gformatId">
                                            <option value="mp4" selected="selected">mp4</option>
                                            <option value="pdf">pdf</option>
                                            <option value="png">png</option>
                                            <option value="txt">txt</option>
                                            <option value="word">word</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="itemPrice">Price</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" id="itemPrice" type="text" name="price" placeholder="Price">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="itemIntroduction">Introduction</label>
                                    <div class="col-sm-10">
                                        <textarea class="form-control" id="itemIntroduction" type="text" name="introduction" style="width: 100%; height: 100%" placeholder="Introduction..."></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="itemPicturePath">Picture path</label>
                                    <div class="col-sm-10">
                                        <input id="itemPicturePath" type="file" name="newPicturePath">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="itemSize">Size</label>
                                    <div class="col-sm-10">
                                        <input class="form-control" id="itemSize" type="number" name="size" placeholder="Size">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Visible</label>
                                    <div class="col-sm-10">
                                        On sale: <input name="visible" type="radio" checked="checked" value="true">&nbsp;&nbsp;
                                        Off sale: <input name="visible" type="radio" value="false">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Restriction</label>
                                    <div class="col-sm-10">
                                        Vip: <input name="restriction" type="radio" value="true">&nbsp;&nbsp;
                                        Non vip: <input name="restriction" type="radio" checked="checked" value="false">
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

        //自定义validate验证输入的数字小数点位数不能大于两位
        jQuery.validator.addMethod("minNumber",function(value, element){
            var returnVal = true;
            inputZ = value;
            var ArrMen= inputZ.split(".");    //截取字符串
            if(ArrMen.length==2){
                if(ArrMen[1].length>2){    //判断小数点后面的字符串长度
                    returnVal = false;
                    return false;
                }
            }
            return returnVal;
        },"小数点后最多为两位");         //验证错误信息


        //提交表单验证，并ajax传值
        $("#form").validate({

            //验证规则
            rules: {
                cash: {
                    required: true,    //要求输入不能为空
                    number: true,     //输入必须是数字
                    min: 0.01,          //输入的数字最小值为0.01，不能为0或者负数
                    minNumber: $("#itemPrice").val()    //调用自定义验证
                }
            },

            //错误提示信息
            messages: {
                cash: {
                    required: "请填写充值金额",
                    number: "请正确输入金额",
                    min: "输入最小金额为0.01",
                    length: "输入数字最多小数点后两位"
                }
            }
        });
    });
</script>
</body>
</html>
