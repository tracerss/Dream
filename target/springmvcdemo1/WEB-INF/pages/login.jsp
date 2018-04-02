<%--
  Created by IntelliJ IDEA.
  User: l8277
  Date: 2017/8/3
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin index Examples</title>
    <meta name="description" content="登录">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <%--<link rel="icon" type="image/png" href="assets/i/favicon.png">--%>
    <%--<link rel="apple-touch-icon-precomposed" href="assets/i/app-icon72x72@2x.png">--%>
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="../../statics/css/amazeui.min.css" />
    <link rel="stylesheet" href="../../statics/css/amazeui.datatables.min.css" />
    <link rel="stylesheet" href="../../statics/css/app.css">
    <script src="../../statics/log_js/jquery.min.js"></script>
    <script type="text/javascript" src="../../statics/jss/houtaifanduan.js"></script>

</head>

<body data-type="login">
<script src="../../statics/log_js/theme.js"></script>
<div class="am-g tpl-g">
    <!-- 风格切换 -->
    <div class="tpl-skiner">
        <div class="tpl-skiner-toggle am-icon-cog">
        </div>
        <div class="tpl-skiner-content">
            <div class="tpl-skiner-content-title">
                选择主题
            </div>
            <div class="tpl-skiner-content-bar">
                <span class="skiner-color skiner-white" data-color="theme-white"></span>
                <span class="skiner-color skiner-black" data-color="theme-black"></span>
            </div>
        </div>
    </div>
    <div class="tpl-login">
        <div class="tpl-login-content">
            <div style="color: aliceblue;font-size: 22px">
               梦想基金&nbsp;&nbsp;•&nbsp;&nbsp;后台管理系统
            </div>


    <form:form name="log" id="log" class="am-form tpl-form-line-form" action="/index" method="post" role="form" onsubmit="return checkpsd(this)">

                <div class="am-form-group">
                    <input type="text" class="tpl-form-input" id="a_name" name="a_name" placeholder="请输入账号">
                </div>
                <div class="am-form-group">
                    <input type="password" class="tpl-form-input" id="a_password" name="a_password" placeholder="请输入密码">
                </div>
                    <%--<input type="hidden" id="checkpsd" name="checkpsd" value="">--%>
                <!--  <div class="am-form-group tpl-login-remember-me">
                      <input id="remember-me" type="checkbox">
                      <label for="remember-me">
                      记住密码
                       </label>
                  </div>-->

                <div class="am-form-group">

                    <input type="submit" name="submit" id="submit" class="am-btn am-btn-primary  am-btn-block tpl-btn-bg-color-success  tpl-login-btn" value="登录">

                </div>

    </form:form>
        </div>
    </div>
</div>

<script type="text/javascript">
    $('#loginbtn').click(function() {
        var param = {
            username : $("#username").val(),
            password : $("#password").val()
        };
        $.ajax({
            type: "post",
            url: "<%=request.getContextPath()%>" + "/checkLogin.json",
            data: param,
            dataType: "json",
            success: function(data) {
                if(data.success == false){
                    alert(data.errorMsg);
                }else{
                    //登录成功
                    window.location.href = "<%=request.getContextPath()%>" +  "/loginsuccess.jhtml";
                }
            },
            error: function(data) {
                alert("调用失败....");
            }
        });
    });
</script>

<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="../../statics/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="../../statics/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../../statics/jss/H-ui.min.js"></script>
<script type="text/javascript" src="../../statics/jss/admin/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="../../statics/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="../../statics/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="../../statics/lib/laypage/1.2/laypage.js"></script>
<script src="../../statics/log_js/amazeui.min.js"></script>
<script src="../../statics/log_js/app.js"></script>
</body>

</html>
