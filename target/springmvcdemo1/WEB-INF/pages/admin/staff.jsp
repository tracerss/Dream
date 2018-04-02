<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/3/28
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 align="center">梦想基金</h1>

<TABLE frame="void" align="center">

    <TR>
        <td height="50">姓名</td>
        <td>${user.staffEntity.name}</td>
    </TR>
    <TR>
        <td height="50">部门</td>
        <td>${user.staffEntity.department}</td>
    </TR>
    <TR>
        <td height="50">职位</td>
        <td>${user.staffEntity.postion}</td>
    </TR>
    <TR>
        <td height="50">入职时间</td>
        <td>${user.staffEntity.creatime}</td>
    </TR>
    <TR>
        <td height="50">梦想</td>
        <td>$</td>
    </TR>
    <TR>
        <td height="50" ><a href="/admin/detail/${user.staffEntity.staffId}" >我的梦想基金</a></td>
        <td height="50">申请提现</td>
    </TR>

    <TR>
        <td height="50">问题反馈</td>
        <td height="50">修改资料</td>
    </TR>
</TABLE>
</body>
</html>
