<%--
  Created by IntelliJ IDEA.
  User: vv
  Date: 2018/3/23
  Time: 12:58
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: laoli
  Date: 2017/7/1
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="e" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script type="text/javascript">
        //删除选中订单
        function datadel1() {
            var ques_id = [];
            $("[name=id]:checked").each(function () {
                ques_id.push($(this).val());
            });
            if (ques_id != '' && ques_id != null) {
                alert("确定要删除吗？");
                $.post('/pur_order/delete', {'qid': ques_id}, function (data) {
                    if (data == "0")
                        alert("删除失败！");
                    else {
                        alert("删除成功！");
                        window.location = 'pur_order';
                        getusers();
                    }
                });
            } else {
                layer.msg('请先选择要删除的内容');
            }
        }

        //查询订单，使用post时，参数必须一一对应，才可以匹配到controller中
        function purSearch() {
//                 var search =$("input[id='search']").val();
            var search = $("#search").val();
            alert("确定要查询吗？");
            $.post('/pur_order/pur_search', {'search': search});
            window.location = 'pur_order';
        }
    </script>

    <title>申请审核</title>
</head>
<style>
    .display-none {
        display: none;
    }
</style>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 申请审核 <span
        class="c-gray en">&gt;</span> 审核名单 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
                                              href="javascript:location.replace(location.href);" title="刷新"><i
        class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
    <%--<div class="text-c">--%>
    <%--<form class="Huiform" method="post" action="" target="_self">--%>
    <%--<input type="text" placeholder="请输入订单号" name="search" id="search" value="" class="input-text" style="width:120px">--%>
    <%--<span class="select-box" style="width:150px">--%>
    <%--<select class="select"  name="brandclass" size="1">--%>
    <%--<option value="" disabled selected  class="display-none">选择厂家</option>--%>
    <%--<option value="1" selected>厂家名称 </option>--%>
    <%--<option value="0">厂家2</option>--%>
    <%--</select>--%>
    <%--</span>--%>
    <%--</span><button type="button" class="btn btn-success" id="" name="" onClick="purSearch()"><i class="Hui-iconfont">&#xe600;</i> 查询</button>--%>
    <%--<span class="btn-upload form-group">--%>
    <%--<input class="input-text upload-url" type="text" name="uploadfile-2" id="uploadfile-2" readonly style="width:200px">--%>
    <%--<a href="javascript:void(0);" class="btn btn-primary upload-btn"><i class="Hui-iconfont">&#xe642;</i> 上传文件</a>--%>
    <%--<input type="file" multiple name="file-2" class="input-file">--%>
    <%--</span>--%>
    <%--&lt;%&ndash;<button type="button" class="btn btn-success" id="" name="" onClick="picture_colume_add(this);"><i class="Hui-iconfont">&#xe600;</i> 添加</button>&ndash;%&gt;--%>
    <%--</form>--%>
    <%--</div>--%>
    <%--<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="datadel1()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 批量删除</a></span> <span class="r">共有数据：<strong>1</strong> 条</span> </div>--%>
    <%--<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="datasearch()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 查询</a></span>  </div>--%>
    <div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="r">共有数据：<strong>1</strong> 条</span></div>
    <%--<div class="cl pd-5 bg-1 bk-gray mt-20"> <span class="l"><a href="javascript:;" onclick="datasearch()" class="btn btn-danger radius"><i class="Hui-iconfont">&#xe6e2;</i> 查询</a></span>  </div>--%>
    <div class="mt-20">

        <table class="table table-border table-bordered table-bg table-sort">
            <thead>
            <tr class="text-c">
                <th width="25"><input type="checkbox" name="id" value=""></th>
                <%--   <th width="30">员工编号</th>--%>
                <th width="70">员工账号</th>
                <%--<th width="80">排序</th>--%>
                <th width="80">员工姓名</th>
                <th width="80">提现金额</th>
                <th width="80">提现方式</th>
                <th width="80">申请时间</th>
                <%--<th width="80">入库单号</th>--%>
                <th width="80">操作</th>

            </thead>
            <tbody>

            <%--<script type="text/javascript">--%>
            <%--function test() {--%>
            <%--<c:forEach items="${bPurchaseOrdM}" var="purOrder">--%>
            <%--</c:forEach>--%>

            <%--}--%>
            <%--</script>--%>

            <%
                int i = 1;
            %>
            <%--<c:forEach items="${testuserEntity}" var="purOrder">
                <tr class="text-c">
                    <td><input name="id" type="checkbox"  value="${purOrder.name}"></td>
                    <td><%=i %><% i++; %></td>
                    <td><a href="/pur_order/detaileOrder/${purOrder.name}">1</a></td>
                    <td>${purOrder.name}</td>
                        &lt;%&ndash;<td >${purOrder.bPurchaseOrdMOrdProcureNo}</td>&ndash;%&gt;
                    <td >${purOrder.name}</td>
                        &lt;%&ndash;<td >${purOrder.bPurchaseOrdMPaymentAttributer}</td>&ndash;%&gt;
                    <td >${purOrder.name}</td>
                    <td >${purOrder.name}</td>
                    <td >${purOrder.name}</td>
                    <td class="f-14 product-brand-manage"><a style="text-decoration:none" onClick="product_brand_edit('订单编辑','index2.html','1')" href="/pur_order/update/${purOrder.name}" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a> <a style="text-decoration:none" class="ml-5" onclick="if(!confirm('确定删除？')) return false;" href="/pur_order/delete/${purOrder.name}" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>--%>

            <c:forEach items="${applyList}" var="t_application">
                <tr class="text-c">
                    <th width="25"><input type="checkbox" name="id" value=""></th>
                    <td>${t_application.staffId}</td>
                    <td>${t_application.applyId}</td>
                    <td>${t_application.applyNum}</td>
                    <td>
                        <c:if test="${t_application.applyType==0}">
                            <p>提现</p>
                        </c:if>
                        <c:if test="${t_application.applyType==1}">
                            <p>梦想兑换</p>
                        </c:if>
                    </td>
                    <td>${t_application.createtime}</td>
                    <td>
                        <a href="Apply/applydetail/${t_application.applyId} " type="button" class="btn btn-primary btn-lg">审核</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>


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
            {"orderable": false, "aTargets": [0, 6]}// 制定列不参与排序
        ]
    });
</script>
</body>
</html>
