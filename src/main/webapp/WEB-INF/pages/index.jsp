<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    statics name="viewport"
    content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <%--<link rel="Bookmark" href="../../statics/icon/favicon.ico" >--%>
    <%--<link rel="Shortcut Icon" href="../../statics/icon/favicon.ico" />--%>
    <!--[if lt IE 9]>
    <%--
    <script rel="stylesheet" type="text/javascript" src="../lib/html5shiv.js"></script>--%>
    <%--
    <script type="text/javascript" src="../lib/respond.min.js"></script>--%>
    <%--<![endif]-->--%>
    <%--
    <link rel="stylesheet" type="text/css" href="../statics/css/H-ui.min.css"/>--%>
    <%--
    <link rel="stylesheet" type="text/css" href="../statics/h-ui.admin/css/H-ui.admin.css"/>--%>
    <%--
    <link rel="stylesheet" type="text/css" href="../statics/lib/Hui-iconfont/1.0.8/iconfont.css"/>--%>
    <%--
    <link rel="stylesheet" type="text/css" href="../statics/h-ui.admin/skin/green/skin.css" id="skin"/>--%>
    <%--
    <link rel="stylesheet" type="text/css" href="../statics/h-ui.admin/css/style.css"/>--%>
    <%--<!--[if IE 6]>--%>
    <%--<script type="text/javascript" src="../statics/lib/DD_belatedPNG_0.0.8a-min.js" ></script>--%>
      <script  rel="stylesheet" type="text/javascript" src="../lib/html5shiv.js"></script>
    <script type="text/javascript" src="../lib/respond.min.js"></script>
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
    <title>梦想基金管理系统</title>
    <meta name="keywords" content="梦想基金管理系统">
    <meta name="description" content="xxx有限公司">

</head>
<body>
<header class="navbar-wrapper">
    <div class="navbar navbar-fixed-top">
        <div class="container-fluid cl"><a class="logo navbar-logo f-l mr-10 hidden-xs" href="index3">梦想基金后台系统</a> <a
                class="logo navbar-logo-m f-l mr-10 visible-xs" href="index3">xxx</a>
            <span class="logo navbar-slogan f-l mr-10 hidden-xs">Beta</span>
            <a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
            <nav class="nav navbar-nav">
                <ul class="cl">
                    <li class="dropDown dropDown_hover"><a href="javascript:;" class="dropDown_A"><i
                            class="Hui-iconfont">&#xe600;</i> 新增 <i class="Hui-iconfont">&#xe6d5;</i></a>
                        <ul class="dropDown-menu menu radius box-shadow">
                            <li><a href="javascript:;" onclick="member_add('添加用户','member-add.html','','510')"><i
                                    class="Hui-iconfont">&#xe60d;</i> 用户</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
                <ul class="cl">
                    <li>超级管理员</li>
                    <li class="dropDown dropDown_hover">
                        <a href="#" class="dropDown_A">admin <i class="Hui-iconfont">&#xe6d5;</i></a>
                        <ul class="dropDown-menu menu radius box-shadow">
                            <li><a href="javascript:;" onClick="myselfinfo()">个人信息</a></li>
                            <li><a href="#">切换账户</a></li>
                            <li><a href="#">退出</a></li>
                        </ul>
                    </li>
                    <li id="Hui-msg"><a href="#" title="消息"><span class="badge badge-danger">1</span><i
                            class="Hui-iconfont" style="font-size:18px">&#xe68a;</i></a></li>
                    <li id="Hui-skin" class="dropDown right dropDown_hover"><a href="javascript:;" class="dropDown_A"
                                                                               title="换肤"><i class="Hui-iconfont"
                                                                                             style="font-size:18px">&#xe62a;</i></a>
                        <ul class="dropDown-menu menu radius box-shadow">
                            <li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
                            <li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
                            <li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
                            <li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
                            <li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
                            <li><a href="javascript:;" data-val="orange" title="橙色">橙色</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</header>
<aside class="Hui-aside">
    <div class="menu_dropdown bk_2">
        <dl id="menu-members">
            <dt><i class="Hui-iconfont">&#xe60d;</i> 员工管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a data-href="result" data-title="员工管理" href="javascript:void(0)">员工管理</a></li>
                </ul>
            </dd>

            <%--            <dd>
                <ul>
                    <li><a data-href="result" data-title="采购订单" href="javascript:void(0)">采购订单</a></li>
                    <li><a data-href="result" data-title="采购合同" href="javascript:void(0)">采购合同</a></li>
                    <li><a data-href="result" data-title="采购入库" href="javascript:void(0)">采购入库</a></li>
                    <li><a data-href="result" data-title="采购退货" href="javascript:void(0)">采购退货</a></li>
                    <li><a data-href="result" data-title="采购协议" href="javascript:void(0)">采购协议</a></li>
                </ul>
            </dd>--%>
        </dl>
        <dl id="menu-check">
            <dt><i class="Hui-iconfont">&#xe616;</i> 审核申请<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a data-href="applicationForm" data-title="审核申请" href="javascript:void(0)">审核申请</a></li>


                </ul>
            </dd>
        </dl>

        <dl id="menu-distribute">
            <dt><i class="Hui-iconfont">&#xe62d;</i> 分配基金<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a data-href="distributiveFund" data-title="分配基金" href="javascript:void(0)">分配基金</a></li>


                </ul>
                <%--
                <ul>
                    <li><a data-href="result" data-title="仓库管理" href="javascript:void(0)">仓库管理</a></li>
                    <li><a data-href="result" data-title="仓库管理" href="javascript:void(0)">仓库管理</a></li>
                    <li><a data-href="result" data-title="仓库管理" href="javascript:void(0)">仓库管理</a></li>

                </ul>--%>
            </dd>
        </dl>
        <dl id="menu-inquire">
            <dt><i class="Hui-iconfont">&#xe620;</i> 查询<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a data-href="inquire" data-title="查询" href="javascript:void(0)">查询</a></li>
                </ul>
                <%--  <ul>
                      <li><a data-href="result" data-title="报表管理" href="javascript:void(0)">报表管理</a></li>
                      <li><a data-href="result" data-title="报表管理" href="javascript:void(0)">报表管理</a></li>
                      <li><a data-href="result" data-title="报表管理" href="javascript:void(0)">报表管理</a></li>
                  </ul>--%>
            </dd>
        </dl>
        <dl id="menu-feedback">
            <dt><i class="Hui-iconfont">&#xe622;</i> 问题反馈<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
            <dd>
                <ul>
                    <li><a data-href="feedback" data-title="问题反馈" href="javascript:void(0)">问题反馈</a></li>

                </ul>
            </dd>
            <%--            <dd>
                            <ul>
                                <li><a data-href="result" data-title="销售管理" href="javascript:;">销售订货</a></li>
                                <li><a data-href="result" data-title="销售单" href="javascript:void(0)">销售单</a></li>
                            </ul>
                        </dd>
                    </dl>
                    <dl id="menu-member">
                        <dt><i class="Hui-iconfont">&#xe60d;</i> 用户管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
                        <dd>
                            <ul>
                                <li><a data-href="result" data-title="用户管理" href="javascript:;">用户管理</a></li>
                                <li><a data-href="result" data-title="用户管理" href="javascript:;">用户管理</a></li>
                                <li><a data-href="result" data-title="用户管理" href="javascript:;">用户管理</a></li>

                            </ul>
                        </dd>
                    </dl>
                    <dl id="menu-admin">
                        <dt><i class="Hui-iconfont">&#xe62d;</i> 费用管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
                        <dd>
                            <ul>
                                <li><a data-href="result" data-title="费用管理" href="javascript:void(0)">费用管理</a></li>
                                <li><a data-href="result" data-title="费用管理" href="javascript:void(0)">费用管理</a></li>
                                <li><a data-href="result" data-title="费用管理" href="javascript:void(0)">费用管理</a></li>
                            </ul>
                        </dd>
                    </dl>
                    <dl id="menu-tongji">
                        <dt><i class="Hui-iconfont">&#xe61a;</i> 系统统计(待定)<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
                        </dt>
                        <dd>
                            <ul>
                                <li><a data-href="result" data-title="折线图" href="javascript:void(0)">折线图</a></li>
                                <li><a data-href="result" data-title="时间轴折线图" href="javascript:void(0)">时间轴折线图</a></li>
                                <li><a data-href="result" data-title="区域图" href="javascript:void(0)">区域图</a></li>
                                <li><a data-href="result" data-title="柱状图" href="javascript:void(0)">柱状图</a></li>
                                <li><a data-href="result" data-title="饼状图" href="javascript:void(0)">饼状图</a></li>
                                <li><a data-href="result" data-title="3D柱状图" href="javascript:void(0)">3D柱状图</a></li>
                                <li><a data-href="result" data-title="3D饼状图" href="javascript:void(0)">3D饼状图</a></li>
                            </ul>
                        </dd>
                    </dl>
                    <dl id="menu-system">
                        <dt><i class="Hui-iconfont">&#xe62e;</i> 系统管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
                        <dd>
                            <ul>
                                <li><a data-href="result" data-title="系统设置" href="javascript:void(0)">系统设置</a></li>
                                <li><a data-href="result" data-title="栏目管理" href="javascript:void(0)">栏目管理</a></li>
                                <li><a data-href="result" data-title="数据字典" href="javascript:void(0)">数据字典</a></li>
                                <li><a data-href="result" data-title="屏蔽词" href="javascript:void(0)">屏蔽词</a></li>
                                <li><a data-href="result" data-title="系统日志" href="javascript:void(0)">系统日志</a></li>
                            </ul>
                        </dd>
                    </dl>--%>
    </div>
</aside>
<div class="dislpayArrow hidden-xs"><a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a>
</div>
<section class="Hui-article-box">
    <div id="Hui-tabNav" class="Hui-tabNav hidden-xs">
        <div class="Hui-tabNav-wp">
            <ul id="min_title_list" class="acrossTab cl">
                <li class="active">
                    <span title="我的桌面" data-href="welcome.html">我的桌面</span>
                    <em></em></li>
            </ul>
        </div>
        <div class="Hui-tabNav-more btn-group"><a id="js-tabNav-prev" class="btn radius btn-default size-S"
                                                  href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a
                id="js-tabNav-next" class="btn radius btn-default size-S" href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a>
        </div>
    </div>
    <div id="iframe_box" class="Hui-article">
        <div class="show_iframe">
            <div style="display:none" class="loading"></div>
            <iframe scrolling="yes" frameborder="0" src="result"></iframe>
        </div>
    </div>
</section>

<div class="contextMenu" id="Huiadminmenu">
    <ul>
        <li id="closethis">关闭当前</li>
        <li id="closeall">关闭全部</li>
    </ul>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="../../statics/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="../../statics/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="../../statics/jss/H-ui.min.js"></script>
<script type="text/javascript" src="../../statics/jss/admin/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="../lib/jquery.contextmenu/jquery.contextmenu.r2.js"></script>
<script type="text/javascript">
    $(function () {
        /*$("#min_title_list li").contextMenu('Huiadminmenu', {
         bindings: {
         'closethis': function(t) {
         console.log(t);
         if(t.find("i")){
         t.find("i").trigger("click");
         }
         },
         'closeall': function(t) {
         alert('Trigger was '+t.id+'\nAction was Email');
         },
         }
         });*/
    });

    /*个人信息*/
    function myselfinfo() {
        layer.open({
            type: 1,
            area: ['300px', '200px'],
            fix: false, //不固定
            maxmin: true,
            shade: 0.4,
            title: '查看信息',
            content: '<div>管理员信息</div>'
        });
    }

    /*资讯-添加*/
    function article_add(title, url) {
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }

    /*图片-添加*/
    function picture_add(title, url) {
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }

    /*产品-添加*/
    function product_add(title, url) {
        var index = layer.open({
            type: 2,
            title: title,
            content: url
        });
        layer.full(index);
    }

    /*用户-添加*/
    function member_add(title, url, w, h) {
        layer_show(title, url, w, h);
    }


</script>


<script>
    var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>

</body>
</html>