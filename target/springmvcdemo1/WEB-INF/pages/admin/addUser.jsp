<%--
  Created by IntelliJ IDEA.
  User: vv
  Date: 2018/3/10
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>SpringMVC 添加用户</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="container">
    <h1>梦想基金 添加用户</h1>
    <hr/>
    <form:form action="/index/addP" method="post" commandName="t_staff" role="form">
     <%--   <div class="form-group">
            <label for="staffId">员工编号:</label>
            <input type="text" class="form-control" id="staffId" name="staffId" placeholder="Enter StaffId:"/>
        </div>--%>
        <div class="form-group">
            <label for="account"> 员工账号:</label>
            <input type="text" class="form-control" id="account" name="account" placeholder="请输入员工账号:"/>

        </div>
        <div class="form-group">
            <label for="psd">员工密码:</label>
            <input type="text" class="form-control" id="psd" name="psd" placeholder="请输入员工密码:"/>
        </div>
        <div class="form-group">
            <label for="name">员工姓名:</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="请输入员工姓名:"/>
        </div>

        <div class="form-group">
            <label for="phone">员工电话:</label>
            <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入员工电话:"/>
        </div>

        <div class="form-group">
            <label for="department">员工隶属部门:</label>
            <input type="text" class="form-control" id="department" name="department" placeholder="请输入隶属部门:"/>
        </div>
        <div class="form-group">
            <label for="postion">员工职位:</label>
            <input type="text" class="form-control" id="postion" name="postion" placeholder="请输入员工职位:"/>
        </div>
<%--        <div class="form-group">
            <label for="entrytime">职位:</label>
            <input type="text" class="form-control" id="entrytime" name="entrytime" placeholder="Enter Position:"/>
        </div>
        <div class="form-group">
            <label for="createtime">职位:</label>
            <input type="text" class="form-control" id="createtime" name="createtime" placeholder="Enter Position:"/>
        </div>
        <div class="form-group">
            <label for="updatetime">职位:</label>
            <input type="text" class="form-control" id="updatetime" name="updatetime" placeholder="Enter Position:"/>
        </div>--%>

        <div class="form-group">
            <button type="submit" class="btn btn-sm btn-success">提交</button>
        </div>
    </form:form>
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>