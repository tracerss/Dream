// /*后台页面的前端判断js
// *
//  */
// function test(){
//     document.getElementById("select0").style.display= "none";
//     document.getElementById("select1").style.display= "block";
// }
// function bPurchaseOrdMCreateNo() {
//     document.getElementById("bPurchaseOrdMCreateNo0").style.display= "none";
//     document.getElementById("bPurchaseOrdMCreateNo1").style.display= "block";
// }
// function bPurchaseOrdMClientNo() {
//     document.getElementById("bPurchaseOrdMClientNo0").style.display= "none";
//     document.getElementById("bPurchaseOrdMClientNo1").style.display= "block";
// }
// function bPurchaseOrdMFactoryGoodsNo() {
//     document.getElementById("bPurchaseOrdMFactoryGoodsNo0").style.display= "none";
//     document.getElementById("bPurchaseOrdMFactoryGoodsNo1").style.display= "block";
// }

function checkinput(form) {
    if (form.bPurchaseOrdMOrdProcureNo.value == "") {
        form.bPurchaseOrdMOrdProcureNo.focus();
        layer.msg('您还没有填写“订单货号”');
        return false;
    }
    ////ajax
    // else{
    //     var date = {OrdProcureNo:form.bPurchaseOrdMOrdProcureNo.value};
    //     $.ajax(
    //         {
    //             type: "post",
    //             url: "/pur_order/check",
    //             date: date,
    //             cache: false,
    //             async: false,
    //             //dataType: "json",
    //             success: function (data, textStatus, jqXHR) {
    //                 {
    //                     if ("true" == data.flag) {
    //                         alert("合法！");
    //                         return true;
    //                     } else {
    //                         alert("不合法！错误信息如下：" + data.errorMsg);
    //                         layer.msg('检测到数据库中已有该订单货号，请重新输入');
    //                         return false;
    //                     }
    //                 }
    //             }
    //         });
    //     }

    if (form.bPurchaseOrdMSalesman.value == "") {
        form.bPurchaseOrdMSalesman.focus();
        layer.msg('您还没有选择“业务员”');
        return false;
    }
    if (form.bPurchaseOrdMAdPaymoney.value == "") {
        form.bPurchaseOrdMAdPaymoney.focus();
        layer.msg('您还没有填写“预付款”');
        return false;
    }

    if (form.bPurchaseOrdMCreateNo.value == "") {
        form.bPurchaseOrdMCreateNo.focus();
        layer.msg('您还没有选择“制单人”');
        return false;
    }

      if (form.bPurchaseOrdMFactoryGoodsNo.value == "") {
            form.bPurchaseOrdMFactoryGoodsNo.focus();
            layer.msg('您还没有选择“厂家名称”');
            return false;
    }
    if (form.bPurchaseOrdMClientNo.value == "") {
        form.bPurchaseOrdMClientNo.focus();
        layer.msg('您还没有选择“客户编号”');
        return false;
    }

}
function checkpsd(form) {


    if (form.a_name.value == "") {
        form.a_name.focus();
        layer.msg('您还没有填写“用户名”');
        return false;
    }
    if (form.a_password.value == "") {
        form.a_password.focus();
        layer.msg('您还没有填写“密码”');
        return false;
    }
    // if (form.checkpsd.value == 0) {
    //     form.a_password.focus();
    //     layer.msg('密码或用户名错误');
    //     form.checkpsd.value = "";
    //     return false;
    // }
}

function chk() {

    if (form.checkpsd.value == 0) {
        form.a_password.focus();
        layer.msg('密码或用户名错误');
        form.checkpsd.value = "";
    }

}

function lichanged() {
    var a = document.getElementById("bPurchaseOrdSGoodsNo");

    form.bPurchaseOrdSOrdProcureNo.value = "change";
    alert("haahaha");
    guige.innerHTML = "" + "规格";
}
