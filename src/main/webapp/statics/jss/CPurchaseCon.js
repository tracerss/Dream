/*后台页面的前端判断js
 *
 */
// function test1(){
//     document.getElementById("select0").style.display= "none";
//     document.getElementById("select1").style.display= "block";
// }

function checkinput(form) {

    if (form.select1.value == "") {
        form.select1.focus();
        layer.msg('您还没有填写“客户名称”');
        return false;
    }
    if (form.cPurchaseConMConDate.value == "") {
        form.cPurchaseConMConDate.focus();
        layer.msg('您还没有填写“合同日期”');
        return false;
    }
    if (form.select2.value == "") {
        form.select2.focus();
        layer.msg('您还没有选择“审核人”');
        return false;
    }
}

function checkinput1(form) {

    if (form.good1.value == "") {
        form.good1.focus();
        layer.msg('您还没有填写“客户名称”');
        return false;
    }
    if (form.cPurchaseConSTaxRate.value == "") {
        form.cPurchaseConSTaxRate.focus();
        layer.msg('您还没有填写“税率”');
        return false;
    }
    if (form.cPurchaseConSConQuantity.value == "") {
        form.cPurchaseConSConQuantity.focus();
        layer.msg('您还没有选择“合同数量”');
        return false;
    }
}