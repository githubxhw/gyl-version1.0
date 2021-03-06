<%--
  Created by IntelliJ IDEA.
  User: YT
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
    <title>应收单签字</title>
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

                应收单-签字
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
                    <a href="#">应收应付管理</a>
                </li>
                <li>
                    <a href="#">应收单管理</a>
                </li>
                <li class="active">签字</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <%--查询部分--%>
        <%-- id = query 按钮查询--%>
        <form id="form" method="post">
            <section class="content"> <!--产品信息-->

                <div class="panel panel-default">
                    <div class="panel-heading">查询(签字)</div>
                    <div class="row data-type">
                        <%--1--%>
                            <div class="col-md-2 title">ID</div>
                            <div class="col-md-4 data">
                                <input type="text" class="form-control" name="xsysdzhubid"
                                       placeholder="应收单ID" value="">
                            </div>
                            <%--2--%>
                            <div class="col-md-2 title">公司</div>
                            <div class="col-md-4 data">
                                <input type="text" class="form-control" name="gs"
                                       placeholder="公司" value="">
                            </div>
                            <div class="col-md-2 title">订单号</div>
                            <div class="col-md-4 data">
                                <input type="text" class="form-control" name="ddh"
                                       placeholder="订单号" value="">
                            </div>
                            <%--3--%>
                            <div class="col-md-2 title">日期</div>
                            <div class="col-md-4 data">
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right dateTimePicker" name="rq">
                                </div>
                            </div>
                            <div class="col-md-2 title">起算日期</div>
                            <div class="col-md-4 data">
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right dateTimePicker" name="qsrq">
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
                                <input type="text" class="form-control" name="ywy"
                                       placeholder="业务员" value="">
                            </div>
                            <div class="col-md-2 title">生效标志</div>
                            <div class="col-md-4 data">
                                <select class="form-control" name="sxbz">
                                    <option selected="selected" value="-1">全部</option>
                                </select>
                            </div>


                            <%--5--%>
                            <div class="col-md-2 title">制单人</div>
                            <div class="col-md-4 data">
                                <input type="text" class="form-control" name="zdr"
                                       placeholder="制单人" value="">
                            </div>
                            <div class="col-md-2 title">制单日期</div>
                            <div class="col-md-4 data">
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right dateTimePicker" name="zdrq">
                                </div>
                            </div>
                            <%--6--%>
                            <div class="col-md-2 title">修改人</div>
                            <div class="col-md-4 data">
                                <input type="text" class="form-control" name="xgr"
                                       placeholder="修改人" value="">
                            </div>
                            <div class="col-md-2 title">修改日期</div>
                            <div class="col-md-4 data">
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right dateTimePicker" name="xgrq">
                                </div>
                            </div>
                            <div class="col-md-2 title">签字人</div>
                            <div class="col-md-4 data">
                                <input type="text" class="form-control" name="qzr"
                                       placeholder="签字人" value="">
                            </div>
                            <div class="col-md-2 title">签字日期</div>
                            <div class="col-md-4 data">
                                <div class="input-group date">
                                    <div class="input-group-addon">
                                        <i class="fa fa-calendar"></i>
                                    </div>
                                    <input type="text" class="form-control pull-right dateTimePicker" name="qzrq">
                                </div>
                            </div>
                    </div>
                </div>
                <!--订单信息/--> <!--工具栏-->
                <div class="box-tools <%--text-center --%>text-right">
                    <button id="query" type="button" class="btn <%--bg-maroon--%> bg-red">搜索</button>
                    <button type="reset" class="btn bg-orange">重置</button>
                    <button type="button" class="btn bg-yellow"
                            onclick="history.back(-1);">返回
                    </button>
                </div>
                <!--工具栏/--> </section>
        </form>

        <!--数据列表-->
        <%-- 1：主表--%>
        <from><%--提交ids--%>
            <div style="padding-left: 20px"><h4><%--主表--%></h4></div>
            <div style="overflow: scroll;overflow-y:scroll;height: 200px;width: 99%;">
                <table id="dataList_zhu" class="table table-bordered table-striped table-hover dataTable"
                       style="min-width:2300px;border:solid grey 1px">
                    <thead>
                    <th class="" style="padding-right:0px;">
                        <input id="selall_zhu" type="checkbox" class="icheckbox_square-blue">
                    </th>
                    <th class="sorting_asc" style="width: 150px">订单号</th>
                    <th class="text-center sorting" style="width: 150px">公司</th>
                    <th class="text-center sorting" style="width: 150px">日期</th>
                    <th class="text-center sorting" style="width: 150px">起算日期</th>
                    <th class="text-center sorting" style="width: 150px">客商</th>
                    <th class="text-center sorting" style="width: 150px">部门</th>
                    <th class="text-center sorting" style="width: 150px">业务员</th>
                    <th class="text-center sorting" style="width: 150px">生效标志</th>
                    <th class="text-center sorting" style="width: 150px">制单人</th>
                    <th class="text-center sorting" style="width: 150px">制单日期</th>
                    <th class="text-center sorting" style="width: 150px">审核人</th>
                    <th class="text-center sorting" style="width: 150px">审核日期</th>
                    <th class="text-center sorting" style="width: 150px">修改人</th>
                    <th class="text-center sorting" style="width: 150px">修改日期</th>
                    <th class="text-center sorting" style="width: 150px">签字人</th>
                    <th class="text-center sorting" style="width: 150px">签字日期</th>
                    </thead>
                    <%--内容--%>
                    <tbody id="zhub_tbody">
                    </tbody>
                </table>
            </div>
            <span id="zhub_count" count="">共 0 条记录</span>
        </from>
        <br>
        <br>
        <div class="form-group">
            <input id="djh" class="form-control" type="text" readonly="readonly" style="width: 17%;"
                   placeholder="双击已查询的单据号进行选择" value="">
        </div>
        <%--2：子表--%>
        <from id="zib_form" zhub_id="-1">
            <div style="padding-left: 20px;"><h4><%--子表--%></h4></div>
            <div style="overflow: scroll;overflow-y:scroll;height: 300px;width: 99%;">
                <table id="dataList_zi" class="table table-bordered table-striped table-hover dataTable"
                       style="min-width:2000px;border:solid grey 1px">
                    <thead>
                    <th class="" style="padding-right:0px;">
                        <input id="selall_zi" type="checkbox" class="icheckbox_square-blue">
                    </th>
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
                    <th class="text-center sorting" width="150px">累计应收数量</th>
                    <th class="text-center sorting" width="150px">应收是否结束</th>
                    </thead>
                    <%--内容--%>
                    <tbody id="zib_tbody">
                    </tbody>
                </table>
            </div>
            <%--工具栏--%>
            <div class="pull-left">
                <div class="form-group form-inline">
                    <div class="btn-group">
                        <button onclick="refresh(this)" type="button" class="btn btn-default"
                                title="刷新"><i
                                class="fa fa-refresh"></i> 刷新
                        </button>
                    </div>
                    <span id="zib_count" count="">共 0 条记录</span>
                </div>
            </div>
            <%--工具栏/--%>
        </from>
        <br>
        <br>
        <div class="panel panel-default">
            <div class="row data-type">
                <div class="col-md-2 title">签字人</div>
                <div class="col-md-4 data">
                    <input id="sp_qzr" type="text" class="form-control"
                           placeholder="签字人" value="">
                </div>
                <div class="col-md-2 title">签字日期</div>
                <div class="col-md-4 data">
                    <div class="input-group date">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <input id="sp_qzrq" type="text" class="form-control pull-right dateTimePicker" value="">
                    </div>
                </div>
            </div>
        </div>
        <%--工具栏--%>
        <div class="pull-left">
            <div class="form-group form-inline">
                <div class="btn-group">
                    <button id="sp_forbidden_btn" onclick="alert('签字没通过请继续修改或重新制单')" type="button" class="btn bg-red">不签字</button>
                </div>
            </div>
        </div>
        <div class="pull-right">
            <div class="form-group form-inline">
                <div class="btn-group">
                    <button id="sp_adopt_btn" onclick="sp_adopt(this)" type="button" class="btn bg-green">签字通过</button>
                </div>
            </div>
        </div>
        <%--工具栏/--%>
        <br><br><br><br><br>
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
            format: "yyyy-mm-dd hh:ii",
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

        // 全选操作：子表
        $("#selall_zi").click(function () {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList_zi td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList_zi td input[type='checkbox']").iCheck("check");
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

    /*发表单查询*/
    $(document).ready(function () {

        /*start*/
        //功能：主表：点击查询按钮，根据主表一部分信息查询出所有满足的主表集合
        $("#query").click(function () {
            var params = $("#form").serialize();
            $.ajax({
                url: "${pageContext.request.contextPath}/ys/findBySxBzIsOne",
                type: "post",
                data: params,
                dataType: "json",
                async: false,
                success: function (data) {
                    //清除$("#zhub_tbody")里面的内容
                    $("#zhub_tbody").innerHTML = '';
                    var xsys_zhubs = data;


                    var html = '';
                    for (var i = 0; i < xsys_zhubs.length; i++) {

                        html += '<tr>\n' +
                            '<td><input id="checkbox-pos-' + i + '" class="ids my-checkbox" name="zhub_ids" type="checkbox" value="' + xsys_zhubs[i].xsysdzhubid+ '"></td>\n' +
                            '<td><button i="' + i + '" ddh="' + xsys_zhubs[i].ddh + '" checked="" ondblclick="find_zib(this)" zhubId="' + xsys_zhubs[i].xsysdzhubid + '" style="width: 100%;height: 99%">' + xsys_zhubs[i].ddh + '</button></td>\n' +
                            '<td>' + NoNull(xsys_zhubs[i].gs) + '</td>\n' +
                            '<td>' + FormatTime(xsys_zhubs[i].rq)+ '</td>\n' +
                            '<td>' + FormatTime(xsys_zhubs[i].qsrq) + '</td>\n' +
                            '<td>' + NoNull(xsys_zhubs[i].ks) + '</td>\n' +
                            '<td>' + NoNull(xsys_zhubs[i].bm) + '</td>\n' +
                            '<td>' + NoNull(xsys_zhubs[i].ywy) + '</td>\n' +
                            '<td>' + sxbe(xsys_zhubs[i].sxbz) + '</td>\n' +
                            '<td>' + NoNull(xsys_zhubs[i].zdr) + '</td>\n' +
                            '<td>' + FormatTime(xsys_zhubs[i].zdrq) + '</td>\n' +
                            '<td>' + NoNull(xsys_zhubs[i].sher) + '</td>\n' +
                            '<td>' + FormatTime(xsys_zhubs[i].shrq) + '</td>\n' +
                            '<td>' + NoNull(xsys_zhubs[i].xgr) + '</td>\n' +
                            '<td>' + FormatTime(xsys_zhubs[i].xgrq) + '</td>\n' +
                            '<td>' + NoNull(xsys_zhubs[i].qzr) + '</td>\n' +
                            '<td>' + FormatTime(xsys_zhubs[i].qzrq) + '</td>\n' +
                            '</tr>';
                    }
                    $("#zhub_tbody").html(html);
                    $("#zhub_count").html("共 " + xsys_zhubs.length + " 条记录");
                    $("#zhub_count").attr("count", xsys_zhubs.length);
                },
                error: function () {
                    alert("查询失败！")
                }
            });
        });

    });

    function statusbe(x){
        if (x == 1){
            return "结束";
        }
        if (x == 0){
            return "没结束";
        }
        return "";
    }
    function sxbe(x){
        if (x == 1){
            return "生效";
        }
        if (x == 0){
            return "没生效";
        }
        return "";
    }

    function NoNull(x){
        var k = "";
        if(x == null){
            return k;
        }else{
            return x;
        }
    }

    //格式化时间
    function FormatTime(nowD) {
        if (!nowD) {
            return "";
        }
// 日期过滤
        if(typeof nowD === 'string'){
            nowD = DateFilter(nowD);
        }
        nowD = new Date(nowD);
        let YY = nowD.getFullYear(),
            MM = nowD.getMonth() + 1,
            DD = nowD.getDate(),
            hh = nowD.getHours(),
            mm = nowD.getMinutes(),
            ss = nowD.getSeconds();
        return YY+"-"+MM+"-"+DD+" "+hh+":"+mm;
        // return {
        //
        // YY: YY,
        // MM: ("00" + MM).substr(("" + MM).length),
        // DD: ("00" + DD).substr(("" + DD).length),
        // hh: ("00" + hh).substr(("" + hh).length),
        // mm: ("00" + mm).substr(("" + mm).length),
        // ss: ("00" + ss).substr(("" + ss).length)
        // };
    }
    /*7*/
    //功能：双击主表总ddh按钮触发，根据主表的id查询所有的子表信息，并添加到子表
    function find_zib(x) {
        //移除属性checked
        $(".my-checkbox").removeAttr('checked');
        //把当前设置为true
        var i = $(x).attr("i");
        $("#checkbox-pos-" + i).prop("checked", true);
        //获取id
        var ys_zhub_id = $(x).attr("zhubId");
        //获取ddh:对应了子表上面的 单据号：input[xxx],将单据号添加到里面显示，方便查看
        var djh = $(x).attr("ddh");
        $.ajax({
            url: "${pageContext.request.contextPath}/ys/findZiByZid",
            type: "GET",
            data: {"zid": ys_zhub_id},
            dataType: "json",
            async: false,
            success: function (data) {
                //先清除$("#zib_tbody")里面的内容
                $("#zib_tbody").innerHTML = '';

                //给子表form的zhub_id赋值
                $("#zib_form").attr("zhub_id", ys_zhub_id);
                /*单据号：<input id="djh"...*/
                $("#djh").attr("value", djh);
                //添加内容
                ys_zibs = data;
                var html = '';
                for (var i = 0; i < ys_zibs.length; i++) {
                    html += '<tr>\n' +
                        '<td><input name="zib_ids" type="checkbox" value="' + ys_zibs[i].xsysdzhibid + '"></td>\n' +
                        '<td>' + NoNull(ys_zibs[i].hh) + '</td>\n' +
                        '<td>' + NoNull(ys_zibs[i].sl) + '</td>\n' +
                        '<td>' + NoNull(ys_zibs[i].spmc) + '</td>\n' +
                        '<td>' + NoNull(ys_zibs[i].spbm) + '</td>\n' +
                        '<td>' + NoNull(ys_zibs[i].dw) + '</td>\n' +
                        '<td>' + NoNull(ys_zibs[i].hsje) + '</td>\n' +
                        '<td>' + NoNull(ys_zibs[i].se) + '</td>\n' +
                        '<td>' + NoNull(ys_zibs[i].wsje) + '</td>\n' +
                        '<td>' + NoNull(ys_zibs[i].lydjh) + '</td>\n' +
                        '<td>' + NoNull(ys_zibs[i].lyhh) + '</td>\n' +
                        '<td>' + NoNull(ys_zibs[i].ytdjh) + '</td>\n' +
                        '<td>' + NoNull(ys_zibs[i].ythh) + '</td>\n' +
                        '<td>' + NoNull(ys_zibs[i].dj) + '</td>\n' +
                        '<td>' + NoNull(ys_zibs[i].ljyssl) + '</td>\n' +
                        '<td>' + statusbe(ys_zibs[i].isysgb) + '</td>\n' +
                        '</tr>';
                }
                $("#zib_tbody").html(html);
                $("#zib_count").attr("count", ys_zibs.length);
                $("#zib_count").html("共 " + ys_zibs.length + " 条记录");
            },
            error: function () {
                alert("查询失败！")
            }
        });
    }

    /*14*/
    //功能： 单击 子表下面的刷新按钮触发，对子表进行刷新
    function refresh(x) {
        var zhub_id = $("#zib_form").attr("zhub_id");

        if (zhub_id != -1) {
            //获取id
            //获取ddh:对应了子表上面的 单据号：input[xxx],将单据号添加到里面显示，方便查看
            var djh = $("#djh").attr("value");
            $.ajax({
                url: "${pageContext.request.contextPath}/ys/findZiByZid",
                type: "GET",
                data: {"zid": ys_zhub_id},
                dataType: "json",
                async: false,
                success: function (data) {
                    //先清除$("#zib_tbody")里面的内容
                    $("#zib_tbody").innerHTML = '';

                    //给子表form的zhub_id赋值
                    /*单据号：<input id="djh"...*/
                    $("#djh").attr("value", djh);
                    //添加内容
                    ys_zibs = data;
                    var html = '';
                    for (var i = 0; i < ys_zibs.length; i++) {
                        html += '<tr>\n' +
                            '<td><input name="zib_ids" type="checkbox" value="' + ys_zibs[i].xsysdzhibid + '"></td>\n' +
                            '<td>' + NoNull(ys_zibs[i].hh) + '</td>\n' +
                            '<td>' + NoNull(ys_zibs[i].sl) + '</td>\n' +
                            '<td>' + NoNull(ys_zibs[i].spmc) + '</td>\n' +
                            '<td>' + NoNull(ys_zibs[i].spbm) + '</td>\n' +
                            '<td>' + NoNull(ys_zibs[i].dw) + '</td>\n' +
                            '<td>' + NoNull(ys_zibs[i].hsje) + '</td>\n' +
                            '<td>' + NoNull(ys_zibs[i].se) + '</td>\n' +
                            '<td>' + NoNull(ys_zibs[i].wsje) + '</td>\n' +
                            '<td>' + NoNull(ys_zibs[i].lydjh) + '</td>\n' +
                            '<td>' + NoNull(ys_zibs[i].lyhh) + '</td>\n' +
                            '<td>' + NoNull(ys_zibs[i].ytdjh) + '</td>\n' +
                            '<td>' + NoNull(ys_zibs[i].ythh) + '</td>\n' +
                            '<td>' + NoNull(ys_zibs[i].dj) + '</td>\n' +
                            '<td>' + NoNull(ys_zibs[i].ljyssl) + '</td>\n' +
                            '<td>' + statusbe(ys_zibs[i].isysgb) + '</td>\n' +
                            '</tr>';
                    }
                    $("#zib_tbody").html(html);
                    $("#zib_count").attr("count", ys_zibs.length);
                    $("#zib_count").html("共 " + ys_zibs.length + " 条记录");
                },
                error: function () {
                    alert("查询失败！")
                }
            });
        }
    }
    function sp_adopt(x) {
        var ddh = $("#djh").attr("value");
        if(ddh.length <= 0 || ddh == null || ddh == undefined){
            alert("请选择要应收单据号进行签字!");
        }else {
            var msg = "确认签字通过此订单?";
            if(confirm(msg) == true) {
                var qzr = $("#sp_qzr").val();
                var qzrq = $("#sp_qzrq").val();
                if(qzr.length <= 0 || qzr == null || qzr == undefined){
                    alert("请填写签字人!")
                }else {
                    if(qzrq.length <= 0 || qzrq == null || qzrq == undefined){
                        alert("请填写签字日期!")
                    }else {
                        $.ajax({
                            url: "${pageContext.request.contextPath}/ys/qz",
                            type: "GET",
                            data: {"ddh":ddh,"qzr":qzr,"qzrq":qzrq},
                            dataType: "json",
                            // async: false,
                            success: function (data) {
                                var pageInfo = data;
                                if (pageInfo.resFlag === "1") {//成功
                                    alert("签字成功");
                                    location.href = "${pageContext.request.contextPath}/pages/business/xsys-qz.jsp";
                                } else {//失败
                                    var errors = pageInfo.msgList;
                                    var msg = "签字失败:\n";
                                    for (var i = 0; i < errors.length; i++) {
                                        msg += i + "、" + errors[i] + "\n";
                                    }
                                    alert(msg);
                                }

                            },
                            error: function () {
                                alert("遇到未知问题，联系管理员");
                            }
                        });
                    }
                }
            }
        }
    }
</script>


</body>

</html>


