<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>在线下单</title>

    <spring:url value="/css/bootstrap.css" var="bootstrapCss" />
    <spring:url value="/layui/css/layui.css" var="layuiCss"/>
    <link href="${bootstrapCss}" rel="stylesheet"/>
    <link href="${layuiCss}" rel="stylesheet" media="all"/>

    <link href="/css/bootstrap-responsive.css" rel="stylesheet"/>
    <link href="/css/bootstrap-table.css" rel="stylesheet"/>
</head>
<body>


<div class="container">

    <div id="toolbar">
        <div class="form-inline" role="form">
            <!--<div class="form-group">-->
                <!--<span>Offset: </span>-->
                <!--<input name="offset" class="form-control w70" type="number" value="0"/>-->
            <!--</div>-->
            <!--<div class="form-group">-->
                <!--<span>Limit: </span>-->
                <!--<input name="limit" class="form-control w70" type="number" value="5"/>-->
            <!--</div>-->
            <!--<div class="form-group">-->
                <!--<input name="search" class="form-control" type="text" placeholder="Search"/>-->
            <!--</div>-->
            <button id="ok" type="submit" class="btn btn_list">查询</button>
            <button id="add" type="submit" class="btn btn-success btn_list">下单</button>
            <button id="edit" type="submit" class="btn btn-warning btn_list">修改</button>
            <button id="delete" type="submit" class="btn btn-danger btn_list">删除</button>
            <!--<button id="lock" type="submit" class="btn btn-primary btn_lock" data-toggle="modal" data-target="#myModal2">提交</button>-->
            <button id="info" type="submit" class="btn btn-info btn_list">详情</button>
        </div>
    </div>

    <table id="table" data-toolbar="#toolbar" data-click-to-select="true"></table>
</div>

<!-- lock modal -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel2">锁定提单</h4>
            </div>
            <div class="modal-body">
                <span>锁定提单后将提交订单，不允许修改和删除提单，是否确定操作？</span>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-primary btn-lg btn_sure">确定</button>
                <button type="button" class="btn btn-default btn-lg" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>

<!-- delete modal -->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel3">删除提单</h4>
            </div>
            <div class="modal-body">
                是否确定删除提单操作？
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-primary btn-lg btn_sure">确定</button>
                <button type="button" class="btn btn-default btn-lg" data-dismiss="modal">取消</button>
            </div>
        </div>
    </div>
</div>


<spring:url value="/js/jquery.min.js" var="jquery" />
<spring:url value="/js/bootstrap.min.js" var="bootstrap" />
<spring:url value="/layui/layui.js" var="layui"/>
<script src="${jquery}"></script>
<script src="${bootstrap}"></script>
<script src="${layui}"></script>

<script src="/js/bootstrap-table.js" ></script>
<script src="/js/bootstrap-table-locale-all.js"></script>
<script src="/js/common.js"></script>
<script>

    var flag = 0 //0-lock 1-delete 2-add/edit
        , id = 0; //提单id

    //console.log(e);
    var $table = $('#table');

    $('.btn_list').click(function () {


        //console.log(JSON.stringify(data));

        switch (this.id) {
            case 'ok':
                refresh();
                break;
            case 'add':
                //layer.msg('新增数据');
                f_add();
                break;
            case 'edit':
                //layer.msg('修改数据');
                f_edit();
                break;
            case 'delete':
                f_delete();
                break;
            case 'info':
                f_info();
                break;
        }
    });
    
    function refresh() {
        $table.bootstrapTable('refresh');
    }

    function f_add() {
        layer.open({
            type:2,
            title: '新增数据',
            maxmin: true,
            shadeClose: true,
            area: ['500px', '500px'],
            btn: ['确定','取消'],
            content: '/order/form?id=0',
            yes: function (layero, index) {

                var form = layer.getChildFrame('#form', index);
                console.log(form)
//                var body = layer.getChildFrame('body', index);
//                var iframeWin = window[layero.find('iframe')[0]['name']];
//                iframeWin.test();
//                var data = $table.bootstrapTable('getSelections');
//                $.ajax({
//                    url:'/order/save',
//                    data: {param: data[0]},
//                    success: function (data) {
//                        var obj = JSON.parse(data);
//                        if (obj.code) {
//                            refresh();
//                            layer.close(index);
//                            console.log('add save success');
//                        } else {
//                            refresh();
//                            layer.close(index);
//                            console.log('add save failed');
//                        }
//                    }
//                    ,error: function (e) {
//                        console.log(e);
//                    }
//                });
            }
        });
    }
    
    function f_edit() {
        var data = $table.bootstrapTable('getSelections');
        //console.log(data);
        if (data.length !== 1) {
            alert("请选择一行");
            return false;
        }
        var id = data[0].id;
        layer.open({
            type:2,
            title: '编辑数据',
            maxmin: true,
            shadeClose: true,
            area: ['500px', '500px'],
            btn: ['确定','取消'],
            content: '/order/form?id='+id+'&r='+new Date(),
            yes: function (layero, index) {
                //调用内部方法
                var body = layer.getChildFrame('body', index);
                var iframeWin = window[layero.find('iframe')[0]['name']];
                iframeWin.test();
//                var data = $table.bootstrapTable('getSelections');
//                $.ajax({
//                    url: '/order/save',
//                    data: {param: data[0]},
//                    success: function (data) {
//                        var obj = JSON.parse(data);
//                        if (obj.code) {
//                            refresh();
//                            layer.close(index);
//                            console.log('edit save success');
//                        } else {
//                            refresh();
//                            layer.close(index);
//                            console.log('edit save failed');
//                        }
//                    }
//                    , error: function (e) {
//                        console.log(e);
//                    }
//                });
            }
        });
    }
    
    function f_delete() {
        var data = $table.bootstrapTable('getSelections');
        //console.log(data);
        if (data.length !== 1) {
            alert("请选择一行");
            return false;
        }
        layer.open({
            title:'删除数据',
            content: '确定删除吗？',
            btn: ['确定', '取消']
            ,yes: function (index, layero) {
                //console.log(layero);
                //alert('正在删除数据' + data[0].id);
                $.ajax({
                    url: '/order/delete',
                    type: 'POST',
                    data: {id: data[0].id},
                    success: function (data) {
                        //console.log(data.code);
                        //layer.close();
                        //layer.msg("操作成功!");
                        //refresh();
                        var obj = JSON.parse(data);
                        //console.log(obj.code>0);
                        //layer.close();
                        if (obj.code) {
                            layer.close(index);
                            refresh();
                            console.log('success');
                            //layer.msg("操作成功!");
                        } else {
                            refresh();
                            //layer.msg("操作失败!");
                            console.log('failed');
                        }
                    },
                    error: function (e) {
                        console.log(e);
                    }
                })
            }
        });
    }

    function f_info() {
        var data = $table.bootstrapTable('getSelections');
        //console.log(data);
        if (data.length !== 1) {
            alert("请选择一行");
            return false;
        }
        layer.open({
            title: '详情',
            type:1,
            maxmin: true,
            shadeClose: true,
            area: ['500px', '500px']
        });
    }

    $table.bootstrapTable({
        url: '/order/data',
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
        pagination: true,
        locale: 'zh-CN',
        pageSize: 10,
        pageNumber: 1,
        sortName: 'id',
        striped: true,
        sortOrder: 'desc',
        search:true
    });



//    $('#form-cont').typeahead({
//        source: [
//            {id: 1, name: 'XX201506081984'},
//            {id: 2, name: 'GB201506081984'},
//            {id: 3, name: 'NG201506081984'},
//            {id: 4, name: 'MK201506081984'},
//            {id: 5, name: 'BP201506081984'},
//            {id: 6, name: 'DH201506081984'}
//        ]
//    });
//
//    $('#form-bill').typeahead({
//        source: [
//            {id: 1, name: 'XX201506081984'},
//            {id: 2, name: 'GB201506081984'},
//            {id: 3, name: 'NG201506081984'},
//            {id: 4, name: 'MK201506081984'},
//            {id: 5, name: 'BP201506081984'},
//            {id: 6, name: 'DH201506081984'}
//        ]
//    });

    function ajax_post(url, data) {
        $.ajax({
            url: url,
            type: 'post',
            data: data,
            dataType: 'json',
            cache: false,
            success: function (ret) {
            	//console.log(JSON.stringify(ret));
                //var obj = JSON.parse(ret);
                
                if (ret.code === 1) {
                    $table.bootstrapTable('refresh');
                }
            },
            error: function (e) {
                console.log(e);
            }
        });
    }

</script>

</body>
</html>