<!DOCTYPE html>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>首页</title>

    <spring:url value="/css/bootstrap.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet"/>
    <link href="/layui/css/layui.css" rel="stylesheet" media="all"/>

    <link href="/css/bootstrap-responsive.css" rel="stylesheet"/>
    <link href="/css/jquery.easy-pie-chart.css" rel="stylesheet"/>

    <link href="/css/styles1.css" rel="stylesheet" media="screen">

</head>
<body>

<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="#">智能罐区系统</a>
            <div class="nav-collapse collapse">
                <ul class="nav pull-right">
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-user"></i>管理员<i class="caret"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="#">用户信息</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a tabindex="-1" href="/logout">安全退出</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <ul class="nav">
                    <li class="active">
                        <a href="#">提单管理</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle">油品查询 <b class="caret"></b>

                        </a>
                        <ul class="dropdown-menu" id="menu1">
                            <li>
                                <a href="#">库存查询</a>
                            </li>
                            <li>
                                <a href="#">出入库查询</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Users <i class="caret"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a tabindex="-1" href="#">User List</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="#">Search</a>
                            </li>
                            <li>
                                <a tabindex="-1" href="#">Permissions</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!--/.nav-collapse -->
        </div>
    </div>
</div>
<div class="container-fluid">

    <div class="alert alert-success">
        <button type="button" class="close" data-dismiss="alert">&times;</button>

        提单<strong><a href="#">NB20170612NC</a></strong>申请成功！
    </div>

    <div class="row-fluid">

        <div class="span3" id="sidebar">
            <ul class="nav nav-list bs-docs-sidenav nav-collapse collapse">

                <li class="active">
                    <a href="/" class="menu-bar"><i class="icon-chevron-right"></i> 系统通知</a>
                </li>
                <li>
                    <a href="/order"><i class="icon-chevron-right"></i> 在线下单</a>
                </li>
                <li>
                    <a href="/hello"><i class="icon-chevron-right"></i> 提单管理</a>
                </li>
                <li>
                    <a href="form.jsp"><i class="icon-chevron-right"></i> 库存查询</a>
                </li>
                <li>
                    <a href="tables.html"><i class="icon-chevron-right"></i> 出入库查询</a>
                </li>
                <li>
                    <a href="buttons.html"><i class="icon-chevron-right"></i> 账单查询</a>
                </li>
                <li>
                    <a href="editors.html"><i class="icon-chevron-right"></i> 提货人管理</a>
                </li>
                <li>
                    <a href="interface.html"><i class="icon-chevron-right"></i> 用户管理</a>
                </li>
                <li>
                    <a href="#"><span class="badge badge-success pull-right">731</span> Orders</a>
                </li>
            </ul>
        </div>
        <!--/span-->

        <div class="span9">
        <div class="layui-tab" lay-filter="test1">
            <ul class="layui-tab-title">
                <li class="layui-this" lay-id="111" >文章列表</li>
                <li lay-id="222">发送信息</li>
                <li lay-id="333">权限分配</li>
                <li lay-id="444">审核</li>
                <li lay-id="555">订单管理</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">1</div>
                <div class="layui-tab-item">2</div>
                <div class="layui-tab-item">3</div>
                <div class="layui-tab-item">4</div>
                <div class="layui-tab-item">5</div>
            </div>
        </div>
        </div>
    </div>

    <hr>

    <footer>
        <p>&copy; Vincent Gabriel 2013</p>
    </footer>
</div>
<!--/.fluid-container-->


<spring:url value="/js/jquery.min.js" var="jquery" />
<spring:url value="/js/bootstrap.min.js" var="bootstrap" />
<spring:url value="/layui/layui.js" var="layui"/>
<script src="${jquery}"></script>
<script src="${bootstrap}"></script>
<script src="${layui}"></script>

<script src="/js/jquery.easy-pie-chart.js"></script>
<script src="/js/scripts.js"></script>
<script>


//    $(document).ready(function (e) {
//        //console.log(e);
//        $('.chart').easyPieChart({animate: 1000});
//    });

</script>

</body>
</html>
</h3>
</body>
</html>
