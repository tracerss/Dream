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
<%@ taglib prefix="font-size" uri="http://www.springframework.org/tags/form" %>
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


                            <div class="modal-header">
                                    <h3><strong>审核信息</strong></h3>
                            </div>
                            <input type="hidden" id="id" name="id" value="">
                            <div class="modal-body">
                                <table class="table table-border table-bordered table-bg " width="500">
                                    <tbody >
                                    <tr class="text-c">
                                        <td width="150">照片</td>
                                        <td >
                                            <table >
                                                <tr>
                                                    <td width="150">姓名:</td>
                                                    <td width="300"><p>${getUser.staffEntity.name}</p></td>
                                                </tr>
                                                <tr>
                                                    <td width="150" width="150">员工ID:</td>
                                                    <td width="300">${getUser.staffEntity.staffId}</td>
                                                </tr>
                                                <tr>
                                                    <td width="150">工龄:</td>
                                                    <td width="300">${getUser.staffEntity.entrytime}</td>
                                                </tr>
                                                <tr>
                                                    <td width="150">职位:</td>
                                                    <td width="300">${getUser.staffEntity.postion}</td>
                                                </tr>
                                                <tr>
                                                    <td width="150">梦想:</td>
                                                    <td width="300">${getUser.dreamEntity.dream}</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr >
                                        <table class="table table-border table-bordered table-bg ">
                                            <tr>
                                            <td width="150">申请金额:</td>
                                            <td  width="300">${getUser.tApplicationEntity.applyNum}</td>
                                            <td  width="150">申请类型:</td>
                                            <td width=" 300"><c:if test="${getUser.tApplicationEntity.applyType==0}">
                                                <p>提现</p>
                                            </c:if>
                                                <c:if test="${getUser.tApplicationEntity.applyType==1}">
                                                    <p>梦想兑换</p>
                                                </c:if></td>
                                        </tr>
                                            <tr>
                                                <td width="150">附件：</td>
                                                <td >没有附件</td>
                                            </tr>
                                        </table>
                                    </tr>
                                    <tr>
                                    <table class="table table-border table-bordered table-bg ">
                                            <tr>
                                                <td width=" 300">基金明细：</td>
                                                <td></td>
                                            </tr>
                                            <tr>
                                                <td align="center">
                                                    2015年的基金已提现：<br>
                                                    2015年的基金余额:<br>
                                                </td>
                                            </tr>
                                    </table>
                                    </tr>
                                            <tr>
                                                <table>
                                                    <tr align="center">
                                                        <td>
                                                            <a href="/Apply/applydetail/success/${getUser.staffEntity.staffId}" type="button" class="btn btn-sm btn-success" >
                                                                审核成功
                                                            </a>
                                                        </td>
                                                        <td>
                                                        <button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#myDefault" >
                                                            审核失败
                                                        </button>
                                                            <div class="modal fade" id="myDefault" tabindex="-1" role="dialog" aria-labelledby="myDefaultLabel">
                                                            <div class="modal-dialog modal-lg" role="document">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                                        <div class="cl pd-5 bg-1 bk-gray mt-20"> <h2 class="l"><strong>&nbsp;&nbsp;&nbsp;&nbsp;失败原因：</strong></h2></div>
                                                                        <br><br>
                                                                        <form action="/Apply/applydetail/default/${getUser.staffEntity.staffId}" name="default" method="post">
                                                                        <textarea id="defaultreason"name="defaultreason" cols="80" rows="15" maxlength="400"></textarea>
                                                                        <div class="modal-footer">
                                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                                            <button type="submit" class="btn btn-primary">Save changes</button>
                                                                        </div>
                                                                        </form>
                                                                    </div>
                                                                    <div class="modal-body">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            </div>
                                                    </td>
                                                    </tr>
                                                </table>
                                            </tr>
                                        </table>
                                    </tr>
                                    </tbody>
                                </table>
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
