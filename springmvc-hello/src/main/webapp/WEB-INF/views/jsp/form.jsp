<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: feilin
  Date: 2017/6/21
  Time: 13:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表单</title>

    <spring:url value="/css/bootstrap.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet"/>
    <link href="/css/bootstrap-datetimepicker.css" rel="stylesheet"/>

</head>
<body>

    <%--<div class="container">--%>
        <%--<button class="btn">按钮</button>--%>
    <%--</div>--%>
    <%--<form>--%>
        <%--<fieldset>--%>
            <%--<legend>Legend</legend>--%>
            <%--<label>Label name</label>--%>
            <%--<input type="text" placeholder="Type something…">--%>
            <%--<span class="help-block">Example block-level help text here.</span>--%>
            <%--<label class="checkbox">--%>
                <%--<input type="checkbox"> Check me out--%>
            <%--</label>--%>
            <%--<button type="submit" class="btn">Submit</button>--%>
        <%--</fieldset>--%>
    <%--</form>--%>
    <form class="form-horizontal" id="form" action="/order/save" method="post">
        <div class="control-group">
            <label class="control-label" for="inputEmail">合同</label>
            <div class="controls">
                <input type="text" name="contract" value="${order.contract}" id="inputEmail" placeholder="合同">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="inputDate">计划日期</label>
            <div class="controls">
                <input type="text" name="dutyDay" value="${order.dutyDay}" id="inputDate" placeholder="计划日期">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label"  for="inputAtom">计划量(吨)</label>
            <div class="controls">
                <input type="text" name="atom" value="${order.atom}" id="inputAtom" placeholder="计划量">
            </div>
        </div>
        <div class="control-group">
            <label class="control-label" for="inputDuty">提货人</label>
            <div class="controls">
                <input type="text" name="duty" value="${order.duty}" id="inputDuty" placeholder="提货人">
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="inputOper">操作</label>
            <input type="hidden" name="type" id="oper"/>
            <div class="controls">
                <select id="inputOper" onchange="f_oper(this)">
                    <option value="1">收</option>
                    <option value="2">付</option>
                    <option value="3">加湿</option>
                    <option value="4">加热</option>
                    <option value="5">恒温</option>
                </select>
            </div>
        </div>

        <div class="control-group">
            <label class="control-label" for="inputMemo">备注</label>
            <div class="controls">
                <textarea id="inputMemo" name="memo" rows="3">${order.memo}</textarea>
            </div>
            <div class="controls">
                <button class="btn btn-primary" type="submit">提交</button>
            </div>
        </div>



    </form>


    <spring:url value="/js/jquery.min.js" var="jquery" />
    <spring:url value="/js/bootstrap.min.js" var="bootstrap" />
    <script src="${jquery}"></script>
    <script src="${bootstrap}"></script>

    <script src="/js/bootstrap-datetimepicker.js"></script>
    <script src="/js/bootstrap-datetimepicker.zh-CN.js"></script>
    <script src="/layer/layer.js"></script>
    <script>
        $('#inputDate').datetimepicker({
            language: 'zh-CN',
            weekStart: 1,
            todayBtn: 1,
            format: 'yyyy-mm-dd',
            autoclose: true,
            startView: 2,
            minView: 2,
            forceParse: 0
        });

//        $('#inputOper').on('onchange', function (e) {
//            console.log(e)
//        })
        function f_oper(param) {
            $('#oper').val(param.value);
            //console.log(param.options[param.selectedIndex].label)
        }
        
        function submit() {
            var $form = $('#form');
            $.ajax({
                url: '/order/save',
                data: $form.serializeArray(),
                dataType: 'json',
                type: 'POST',
                success: function (data) {
                    console.log(data);
                },
                error: function (e) {
                    console.log(e);
                }
            })
        }
        
        function test() {
            alert('来自父窗口');
        }

        $('.new').click(function () {
            parent.layer.msg('hi man');
        });
    </script>
</body>
</html>
