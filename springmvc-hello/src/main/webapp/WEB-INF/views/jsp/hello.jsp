<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>欢迎</title>

    <spring:url value="/css/bootstrap.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet"/>
    <link href="/css/bootstrap-table.css" rel="stylesheet"/>
</head>
<body>




<div class="container">
    <div id="toolbar">
        <button class="btn btn-success" id="refresh">按钮</button>
        <button class="btn" id="lay">Layer</button>
    </div>

    <table id="table" data-toolbar="#toolbar" data-click-to-select="true"></table>
</div>



<spring:url value="/js/jquery.min.js" var="jquery" />
<spring:url value="/js/bootstrap.min.js" var="bootstrap" />
<script src="${jquery}"></script>
<script src="${bootstrap}"></script>

<script src="/js/bootstrap-table.js" ></script>
<script src="/js/bootstrap-table-locale-all.js"></script>
<script>

    $('#table').bootstrapTable({

        url: '/json',
        columns: [
            {field: 'checked', radio: true, align: 'center', valign: 'middle'},
            {field: 'id', title: '#', sortable:true},
            {field: 'contract', title: '合同'},
            {field: 'atom', title: '计划量'},
            {field: 'dutyDay', title: '计划日期'},
            {field: 'duty', title: '提货人'},
            {field: 'type', title: '操作'},
            {field: 'status', title: '状态',align: 'center', valign:'middle', formatter: function (value, index) {
                if (value === 0) {
                    return '<span class="label label-info">申请中</span>';
                } else if (value === 1) {
                    return '<span class="label label-success">接受</span>';
                } else if (value === 2) {
                    return '<span class="label label-important">拒绝</span>';
                }
            }},
            {field: 'no', title: '提单号',width:200}
        ],
        pagination:true,
        locale:'zh-CN',
        striped: true,
        pageSize: 10,
        pageNumber: 1,
        sortName: 'id',
        sortOrder: 'desc',
        search: true

    });
    
    $('#refresh').click(function () {
        $('#table').bootstrapTable('refresh');
    });
    
    $('#lay').click(function () {
        //layer.msg("我是你的小蜜蜂");
        layer.open({
            type: 2,
            title: 'iframe父子操作',
            maxmin: true,
            shadeClose: true,
            area: ['800px', '520px'],
            content: 'form.html'
        });
    });
</script>
</body>
</html>
