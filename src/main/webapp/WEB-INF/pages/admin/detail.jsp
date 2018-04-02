<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/3/28
  Time: 22:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 align="center">我的梦想基金
</h1>
<TABLE frame="void" align="center">
    <TR >
        <td height="50">余额</td>
        <td>${account.balance}</td>
    </TR>
    <TR>
        <td height="50">已提现</td>
        <td>${account.drawTotal}</td>
    </TR>



</TABLE>
</body>
</html>
