<%--
  Created by IntelliJ IDEA.
  User: vv
  Date: 2018/3/23
  Time: 13:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="../../statics/lib/html5shiv.js"></script>
    <script type="text/javascript" src="../../statics/lib/respond.min.js
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="../../statics/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="../../statics/css/admin/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css" href="../../statics/lib/Hui-iconfont/1.0.8/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="../../statics/skin/green/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css" href="../../statics/css/admin/style.css"/>
    <!--[if IE 6]>
    <script type="text/javascript" src="../../statics/lib/DD_belatedPNG_0.0.8a-min.js"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
</head>
<style>
    .display-none {
        display: none;
    }
</style>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 问题反馈 <span
        class="c-gray en">&gt;</span> 反馈名单 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
                                              href="javascript:location.replace(location.href);" title="刷新">
    <i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-sort">
            <thead>
            <tr class="text-c">
                <th width="25"><input type="checkbox" name="id" value=""></th>
                <th width="70">员工号</th>
                <th width="80">问题反馈</th>
                <th width="80">邮箱</th>
                <th width="80">更新时间</th>

            </thead>
            <tbody>
            <c:forEach items="${feedbackList}" var="t_problem" >
                <tr class="text-c">
                    <td>${t_problem.problemId}</td>
                    <td>${t_problem.staffId}</td>
                    <td>
                        <!点击查看按钮后的遮罩层框架>
                        <button type="button" class="btn btn-primary btn-lg"  data-toggle="modal" data-target="#myModal" onclick="btnClick('${t_problem.problem}')" >查看
                        </button>

                    </td>
                    <td>${t_problem.email}</td>
                    <td><fmt:formatDate value="${t_problem.updateTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>


    </div>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">问题描述</h4>
            </div>
            <div class="modal-body" id="bodyText">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
            </div>
        </div>
    </div>
</div>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="../../statics/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="../../statics/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../../statics/jss/H-ui.min.js"></script>
<script type="text/javascript" src="../../statics/jss/admin/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="../../statics/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="../../statics/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../../statics/lib/laypage/1.2/laypage.js"></script>
<script type="text/javascript">
    $('.table-sort').dataTable({
        "aaSorting": [[1, "desc"]],//默认第几个排序
        "bStateSave": true,//状态保存
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {"orderable": false, "aTargets": [0, 4]}// 制定列不参与排序
        ]

    });

    var text = document.getElementById("bodyText");//绑定id
    function btnClick(values) {
        console.log(values);
        text.innerHTML = "";//清空内容
        text.innerText = values;//传值
    }

</script>
</body>
</html>
