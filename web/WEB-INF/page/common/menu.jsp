<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header">MAIN NAVIGATION</li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>People</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="${pageContext.request.contextPath}/admin/customers"><i class="fa fa-circle-o"></i>Manage customers</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/toaddadmin"><i class="fa fa-circle-o"></i>Add admin</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-dollar"></i> <span>Orders</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="${pageContext.request.contextPath}/admin/orders"><i class="fa fa-circle-o"></i>All orders</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/bill"><i class="fa fa-circle-o"></i>Bill</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-book"></i> <span>Commodities</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="${pageContext.request.contextPath}/admin/allgoods"><i class="fa fa-circle-o"></i>All goods</a></li>
                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-circle-o"></i>Classes
                            <span class="pull-right-container">
                                <i class="fa fa-angle-left pull-right"></i>
                            </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="${pageContext.request.contextPath}/admin/ebook"><i class="fa fa-square-o"></i>Electronic book</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/learnvideo"><i class="fa fa-square-o"></i>Learning video</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/paper"><i class="fa fa-square-o"></i>Test paper analysis</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/flowchart"><i class="fa fa-square-o"></i>Flowchart</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/protocol"><i class="fa fa-square-o"></i>Experimental protocol</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/studynote"><i class="fa fa-square-o"></i>Study notes</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/vip"><i class="fa fa-square-o"></i>Vip</a></li>
                        </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/admin/toadd"><i class="fa fa-circle-o"></i>Add</a></li>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>