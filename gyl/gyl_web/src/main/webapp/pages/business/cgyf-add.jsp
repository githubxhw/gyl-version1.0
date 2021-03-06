 <%--
  Created by IntelliJ IDEA.
  User: XHW
  Date: 2020/2/17
  Time: 22:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>采购应付单制单</title>
    <meta name="description" content="AdminLTE">
    <meta name="keywords" content="AdminLTE">

    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no"
          name="viewport">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">
<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="../../header.jsp"/>
    <!-- 页面头部 /-->
    <!-- 导航侧栏 -->
    <jsp:include page="../../aside.jsp"/>
    <!-- 导航侧栏 /-->
    <!-- 内容区域 -->
    <div class="content-wrapper">
        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                采购应付单-制单
            </h1>
            <ol class="breadcrumb">
                <li>
                    <a href="${pageContext.request.contextPath}/index.jsp">
                        <i class="fa fa-dashboard"></i> 首页
                    </a>
                </li>
                <li>
                    <a href="#">业务</a>
                </li>
                <li>
                    <a href="#">应付应付管理</a>
                </li>
                <li>
                    <a href="#">应付管理</a>
                </li>
                <li class="active">制单</li>
            </ol>
        </section>
        <!-- 内容头部 /-->
        <form id="form" method="post">
            <section class="content">
                <!-- zhub -->
                <div class="panel panel-default">
                    <div class="panel-heading">添加</div>
                    <div class="row data-type">
                        <%--1--%>
                        <div class="col-md-2 title">单据号</div>
                        <div class="col-md-4 data">
                            <input readonly="readonly" type="text" class="form-control" name="djh"
                                   placeholder="订单号" value="${djh}">
                        </div>
                        <%--2--%>
                            <div class="col-md-2 title">公司</div>
                            <div class="col-md-4 data">
                                <input type="text" class="form-control" name="gs"
                                       placeholder="公司" value="">
                            </div>
                            <div class="col-md-2 title">日期</div>
                            <div class="col-md-4 data">
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text"  class="form-control pull-right dateTimePicker" name="rq">
                                </div>
                            </div>
                            <div class="col-md-2 title">起算日期</div>
                            <div class="col-md-4 data">
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text"  class="form-control pull-right dateTimePicker" name="qsrq">
                                </div>
                            </div>
                            <div class="col-md-2 title">客商</div>
                            <div class="col-md-4 data">
                                <input type="text" class="form-control" name="ks"
                                       placeholder="客商" value="">
                            </div>

                            <div class="col-md-2 title">部门</div>
                            <div class="col-md-4 data">
                                <input type="text" class="form-control" name="bm"
                                       placeholder="部门" value="">
                            </div>
                            <div class="col-md-2 title">业务员</div>
                            <div class="col-md-4 data">
                                <input type="text"  class="form-control" name="ywy"
                                       placeholder=业务员" value="">
                            </div>
                    </div>
                </div>
                <!-- zhub /-->
                <%--zib--%>
                <span hh="0" id="zib_hh"></span><%--记录子表的条数--%>
                <div style="overflow: scroll;overflow-y:scroll;height: 300px;width: 100%;">
                    <table id="dataList_zi" class="table table-bordered table-striped table-hover dataTable"
                           style="min-width:2000px;border:solid grey 1px">
                        <thead>

                        <th class="text-center" width="10px">
                            <div class="btn-group">
                                <button onclick="add_zib(this)" type="button" class="btn btn-default" title="添加">
                                    <i></i><span style="font-size: 15px">+</span>
                                </button>
                            </div>
                        </th>
                        <th class="sorting_asc" width="150px">行号</th>
                        <th class="text-center sorting" width="150px">数量</th>
                        <th class="text-center sorting" width="150px">商品名称</th>
                        <th class="text-center sorting" width="150px">商品编码</th>
                        <th class="text-center sorting" width="150px">单位</th>
                        <th class="text-center sorting" width="150px">含税金额</th>
                        <th class="text-center sorting" width="150px">税额</th>
                        <th class="text-center sorting" width="150px">无税金额</th>
                        <th class="text-center sorting" width="150px">来源单据号</th>
                        <th class="text-center sorting" width="150px">来源行号</th>
                        <th class="text-center sorting" width="150px">源头单据号</th>
                        <th class="text-center sorting" width="150px">源头行号</th>
                        <th class="text-center sorting" width="150px">单价</th>
                        <th class="text-center sorting" width="150px">累计应付数量</th>
                        <th class="text-center sorting" width="150px">应付是否结束</th>
                        </thead>
                        <%--内容--%>
                        <tbody id="zib_tbody">

                        </tbody>
                    </table>
                </div>
                <%--zib /--%>
                <br><br>
                <%--制单人--%>
                <div class="panel panel-default">
                    <div class="row data-type">
                        <div class="col-md-2 title">制单人</div>
                        <div class="col-md-4 data">
                            <input  id="zdr" type="text" class="form-control" name="zdr"
                                   placeholder="制单人" value="" aa="制单人">
                        </div>
                        <div class="col-md-2 title">制单日期</div>
                        <div class="col-md-4 data">
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input  id="zdsj" type="text" class="form-control pull-right dateTimePicker" name="zdsj" aa="制单日期">
                            </div>
                        </div>
                    </div>
                </div>
                <br>

                <!--工具栏-->
                <div class="box-tools text-right">
                    <button id="save_button" type="button" class="btn bg-maroon">保存</button>
                    <button type="button" class="btn bg-default"
                            onclick="history.back(-1);">返回
                    </button>
                </div>
                <!--工具栏/-->
        </form>
        <br>
        <br>
    </div>
    <!-- 内容区域 /-->
    <!-- 底部导航 -->
    <jsp:include page="../../footer.jsp"/>
    <!-- 底部导航 /-->
</div>


<script
        src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script
        src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.js"></script>

<script>
    $(document).ready(function () {
        // 选择框
        $(".select2").select2();
        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
        //日期控件
        // datetime picker
        $('.dateTimePicker').datetimepicker({
            format: "yyyy-mm-dd hh:ii:ss",
            showSeconds:true,
            autoclose: true,
            todayBtn: true,
            language: 'zh-CN'
        });
        // 列表按钮
        $("#dataList_zhu td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
        $("#dataList_zi td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
        // 全选操作:主表
        $("#selall_zhu").click(function () {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList_zhu td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList_zhu td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });
    });

    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }

    $(document).ready(function () {
        $('#datepicker-a3').datetimepicker({
            format: "yyyy-mm-dd hh:ii",
            showSeconds:true,
            autoclose: true,
            todayBtn: true,
            language: "zh-CN"
        });
    });

    $(document).ready(function () {
        // 激活导航位置
        setSidebarActive("order-manage");
        $("#datepicker-a3").datetimepicker({
            format: "yyyy-mm-dd hh:ii",
        });
    });

    function aa(x){
        if ($(x).val() == ""){
            $(x).css("border","1px solid red")
            var aa = $(x).attr("aa");
            alert(aa+"为空")
            return false;
        }else{
            $(x).css("border","")
            return true;
        }
    }
    <%--$(function () {--%>
    <%--    document.getElementsByName("gys")[0].onblur = function () {--%>
    <%--        var gys = document.getElementsByName("gys")[0].value;--%>
    <%--        if (gys!=""){--%>
    <%--            $.ajax({--%>
    <%--                url: "${pageContext.request.contextPath}/cgdd/FindG",--%>
    <%--                type: "POST",--%>
    <%--                data: {"name":gys},--%>
    <%--                dataType: "json",--%>
    <%--                async: false,--%>
    <%--                success: function (data) {--%>
    <%--                    //添加主表信息到页面--%>
    <%--                    if (data.msg === "Ok"){--%>
    <%--                        document.getElementsByName("gys")[0].style.border = "";--%>

    <%--                    }else {--%>
    <%--                        alert(data.msg);--%>
    <%--                        document.getElementsByName("gys")[0].style.border = "1px solid red";--%>
    <%--                        document.getElementsByName("gys")[0].style.value = "";--%>
    <%--                    }--%>

    <%--                },--%>
    <%--                error: function () {--%>
    <%--                    alert("出现未知错误")--%>
    <%--                }--%>
    <%--            });--%>
    <%--        }--%>
    <%--    }--%>
    <%--})--%>
    $(document).ready(function () {
        //功能：保存主表和子表信息,返回成功即跳转到新页面，失败提示
        $("#save_button").click(function () {
            //alert("ok")
            var params = $("#form").serialize();
            if(aa($("#zdr"))&& aa($("#zdsj"))){
                $.ajax({
                    url: "${pageContext.request.contextPath}/yf/SaveZhubAndZib",
                    type: "POST",
                    data: params,
                    dataType: "json",
                    async: false,
                    success: function (data) {
                        //添加主表信息到页面
                        var pageInfo = data;
                        if (pageInfo.resFlag == "1") {//添加成功
                            alert("添加成功")
                            location.href = "${pageContext.request.contextPath}/yf/getDdhToAddUI"
                        } else {//添加失败
                            var errors = pageInfo.msgList;
                            var msg = "添加失败:\n";
                            for (var i = 0; i < errors.length; i++) {
                                msg += i + "、" + errors[i] + "\n";
                            }
                            alert(msg);
                        }

                    },
                    error: function () {
                        alert("添加失败！出现未知错误")
                    }
                });
            }

        });
        //功能：点击跳转到query.jsp
        $("#toquery_button").click(function () {
            window.location.href = "${pageContext.request.contextPath}/pages/business/xsyf-query.jsp";
        });
    });

    //功能： 点击 按钮+号，在子表中添加一列
    function add_zib(x) {
        //获取hh
        var befCount = parseInt($("#zib_hh").attr("hh"));
        console.log(befCount)
        //判断是否 子表的内容不为空
        var childCount = document.getElementById("zib_tbody").childElementCount;
        var flag = "0";
        //没有元素
        if (childCount == 0) {
            flag = "1";
        } else {
            //有至少一个时候：获取最后一个
            var lastChildren = document.getElementById("zib_tbody").lastChild;
            var pos = $(lastChildren).attr("id");
            var text = $("#spbm-" + pos).val();
            var text1 = text.replace(/^\s+|\s+$/g, "");
            if (text1 == null || text1.length == 0) {
                flag = "0";
            } else {
                flag = "1";
            }
        }
        if (flag == "1") {
            //要添加第几条数据
            var nowCount = 1 + befCount;
            var index = nowCount - 1;
            var str = '<tr id="' + nowCount + '">' +
                '<td>                            <button pos="' + nowCount + '" onclick="delete_zib(this)" type="button" class="btn btn-default" title="添加">\n' +
                '                                    <i></i><span style="font-size: 15px">-</span>\n' +
                '                                </button>' +
                '</td>' +
                '<td>                            <input id="hh-' + nowCount + '" type="text" readonly="readonly"  class="form-control" name="cgyfd_zibs[' + index + '].hh"\n' +
                '                                   placeholder="行号" value="' + nowCount + '"></td>\n' +

                '<td>                            <input id="sl-' + nowCount + '" type="text" class="form-control"  name="cgyfd_zibs[' + index + '].sl"\n' +
                '                                   placeholder="数量"></td>\n' +
                '<td>                            <input id="spmc-' + nowCount + '" type="text" class="form-control" name="cgyfd_zibs[' + index + '].spmc"\n' +
                '                                   placeholder="商品名称" value=""></td>\n' +
                '<td>                            <input id="spbm-' + nowCount + '" type="text" class="form-control" name="cgyfd_zibs[' + index + '].spbm"\n' +
                '                                   placeholder="商品编码" value=""></td>\n' +
                '<td>                            <input id="dw-' + nowCount + '" type="text" class="form-control" name="cgyfd_zibs[' + index + '].dw"\n' +
                '                                   placeholder="单位" value=""></td>\n' +
                '<td>                            <input id="hsje-' + nowCount + '" type="text" class="form-control" name="cgyfd_zibs[' + index + '].hsje"\n' +
                '                                   placeholder="含税金额" value=""></td>\n' +
                '<td>                            <input id="se-' + nowCount + '" type="text" class="form-control" name="cgyfd_zibs[' + index + '].se"\n' +
                '                                   placeholder="税额" value=""></td>\n' +
                '<td>                            <input id="wsje-' + nowCount + '" type="text" class="form-control " name="cgyfd_zibs[' + index + '].wsje"\n' +
                '                                   placeholder="无税金额" value=""></td>\n' +
                '<td>                            <input id="lydjh-' + nowCount + '" type="text" class="form-control"  name="cgyfd_zibs[' + index + '].lydjh" ' +
                '                                   placeholder="来源单据号" value=""></td>\n' +
                '<td>                            <input id="lyhh-' + nowCount + '" type="text" class="form-control"  name="cgyfd_zibs[' + index + '].lyhh" ' +
                '                                   placeholder="来源行号" value=""></td>\n' +
                '<td>                            <input id="ytdjh-' + nowCount + '" type="text" class="form-control" name="cgyfd_zibs[' + index + '].ytdjh" ' +
                '                                   placeholder="源头单据号" value=""></td>\n' +
                '<td>                            <input id="ythh-' + nowCount + '" type="text" class="form-control"  name="cgyfd_zibs[' + index + '].ythh" ' +
                '                                   placeholder="源头行号" value=""></td>\n' +
                '<td>                            <input id="dj-' + nowCount + '" type="text" class="form-control"  name="cgyfd_zibs[' + index + '].dj" ' +
                '                                   placeholder="单价" value=""></td>\n' +
                '<td>                            <input id="ljyssl-' + nowCount + '" type="text" class="form-control" readonly="readonly" name="cgyfd_zibs[' + index + '].ljyfsl" ' +
                '                                   placeholder="累计应付数量" value=""></td>\n' +
                '<td>                            <input id="isysgb-' + nowCount + '" type="text" class="form-control" readonly="readonly" name="cgyfd_zibs[' + index + '].status" ' +
                '                                   placeholder="应付是否结束" value=""></td>\n' +
                '</tr>';
            $("#zib_tbody").append(str);
            $("#zib_hh").attr("hh", nowCount);
        }
    }

    //功能： 点击 按钮-号，在子表中删除当前列
    function delete_zib(x) {
        var pos = $(x).attr("pos");
        $("#" + pos).remove();
    }



</script>


</body>

</html>



