<%--
  Created by IntelliJ IDEA.
  User: HR
  Date: 2020/4/17
  Time: 12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>销售开票单查询</title>
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
                销售开票单-查询
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
                    <a href="#">销售管理</a>
                </li>
                <li>
                    <a href="#">销售开票单管理</a>
                </li>
                <li class="active">查询</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <%--查询部分--%>
        <%-- id = query 按钮查询--%>
        <form id="form" method="post">
            <section class="content">
                <div class="panel panel-default">
                    <div class="panel-heading">查询(所有)</div>
                    <div class="row data-type">
                        <div class="col-md-2 title">开票号</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="fph"
                                   placeholder="开票号" value="">
                        </div>
                        <div class="col-md-2 title">开票日期</div>
                        <div class="col-md-4 data">
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right dateTimePicker" name="kprq">
                            </div>
                        </div>
                        <div class="col-md-2 title">发票类型</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="fplx"
                                   placeholder="发票类型" value="">
                        </div>
                        <div class="col-md-2 title">会计年度</div>
                        <div class="col-md-4 data">
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right dateTimePicker" name="kjnd">
                            </div>
                        </div>
                        <div class="col-md-2 title">客户</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="kh"
                                   placeholder="客户" value="">
                        </div>
                        <div class="col-md-2 title">客户打印名称</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="khdymc"
                                   placeholder="客户打印名称" value="">
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
                        <div class="col-md-2 title">收货单位</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="shdw"
                                   placeholder="收货单位" value="">
                        </div>
                        <div class="col-md-2 title">收货地址</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="shdz"
                                   placeholder="收货地址" value="">
                        </div>
                        <div class="col-md-2 title">整单折扣</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="zdzk"
                                   placeholder="整单折扣" value="">
                        </div>
                        <div class="col-md-2 title">仓库</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="ck"
                                   placeholder="仓库" value="">
                        </div>
                        <div class="col-md-2 title">币种</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="bz"
                                   placeholder="币种" value="">
                        </div>
                        <div class="col-md-2 title">发票总金额</div>
                        <div class="col-md-4 data">
                            <div class="input-group">
                                <span class="input-group-addon">¥</span>
                                <input type="text" class="form-control"
                                       name="fpzje">
                                <span class="input-group-addon">元</span>
                            </div>
                        </div>
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
                        <div class="col-md-2 title">审批人</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="spr"
                                   placeholder="审核人" value="">
                        </div>
                        <div class="col-md-2 title">审批日期</div>
                        <div class="col-md-4 data">
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right dateTimePicker" name="sprq">
                            </div>
                        </div>
                        <div class="col-md-2 title">是否审批</div>
                        <div class="col-md-4 data">
                            <select class="form-control" name="sfsp">
                                <option selected="selected" value="-1">全部</option>
                                <option value="1">是</option>
                                <option value="0">否</option>
                            </select>
                        </div>
                        <div class="col-md-2 title">审批是否通过</div>
                        <div class="col-md-4 data">
                            <select class="form-control" name="spsftg">
                                <option selected="selected" value="-1">全部</option>
                                <option value="1">是</option>
                                <option value="0">否</option>
                            </select>
                        </div>
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
                        <div class="col-md-2 title">应收款是否结束</div>
                        <div class="col-md-4 data">
                            <select class="form-control" name="ysksfjs">
                                <option selected="selected" value="-1">全部</option>
                                <option value="1">是</option>
                                <option value="0">否</option>
                            </select>
                        </div>
                        <div class="col-md-2 title">单据状态</div>
                        <div class="col-md-4 data">
                            <select class="form-control" name="status">
                                <option selected="selected" value="-1">全部</option>
                                <option value="1">结束</option>
                                <option value="0">未结束</option>
                            </select>
                        </div>
                    </div>
                </div>

                <!--工具栏-->
                <div class="box-tools text-right">
                    <button id="query" type="button" class="btn bg-red">搜索</button>
                    <button type="reset" class="btn bg-orange">重置</button>
                    <button type="button" class="btn bg-yellow"
                            onclick="history.back(-1);">返回
                    </button>
                </div>
                <!--工具栏/-->
            </section>
        </form>

        <%-- 1：主表--%>
        <from>
            <div style="padding-left: 20px"><h4></h4></div>
            <div style="overflow: scroll;overflow-y:scroll;height: 200px;width: 99%;">
                <table id="dataList_zhu" class="table table-bordered table-striped table-hover dataTable"
                       style="min-width:3500px;border:solid grey 1px">
                    <thead>
                    <th class="" style="padding-right:0px;">
                        <input id="selall_zhu" type="checkbox" class="icheckbox_square-blue">
                    </th>
                    <th class="sorting_asc" width="200px">开票号</th>
                    <th class="text-center sorting" width="200px">开票日期</th>
                    <th class="text-center sorting" width="200px">发票类型</th>
                    <th class="text-center sorting" width="200px">会计年度</th>
                    <th class="text-center sorting" width="200px">客户</th>
                    <th class="text-center sorting" width="200px">客户打印名称</th>
                    <th class="text-center sorting" width="200px">部门</th>
                    <th class="text-center sorting" width="200px">业务员</th>
                    <th class="text-center sorting" width="200px">收货单位</th>
                    <th class="text-center sorting" width="200px">收货地址</th>
                    <th class="text-center sorting" width="200px">整单折扣</th>
                    <th class="text-center sorting" width="200px">仓库</th>
                    <th class="text-center sorting" width="200px">币种</th>
                    <th class="text-center sorting" width="200px">发票总金额</th>
                    <th class="text-center sorting" width="200px">制单人</th>
                    <th class="text-center sorting" width="200px">制单日期</th>
                    <th class="text-center sorting" width="200px">审批人</th>
                    <th class="text-center sorting" width="200px">审批日期</th>
                    <th class="text-center sorting" width="200px">是否审批</th>
                    <th class="text-center sorting" width="200px">审批是否通过</th>
                    <th class="text-center sorting" width="200px">修改人</th>
                    <th class="text-center sorting" width="200px">修改日期</th>
                    <th class="text-center sorting" width="200px">应收款是否结束</th>
                    <th class="text-center sorting" width="200px">单据状态</th>
                    </thead>
                    <%--内容--%>
                    <tbody id="zhub_tbody">
                    </tbody>
                </table>
            </div>
            <%--工具栏--%>
            <div class="pull-left">
                <div class="form-group form-inline">
                    <span id="zhub_count" count="">共 0 条记录</span>
                </div>
            </div>
            <%--工具栏/--%>
        </from>
        <br><br>
        <div class="form-group">
            <input id="djh" class="form-control" type="text" readonly="readonly" style="width: 17%;"
                   placeholder="双击已查询的发票号进行选择" value="">
        </div>
        <%--2：子表--%>
        <from id="zib_form" zhub_id="-1">
            <div style="padding-left: 20px;"><h4></h4></div>
            <div style="overflow: scroll;overflow-y:scroll;height: 300px;width: 99%;">
                <table id="dataList_zi" class="table table-bordered table-striped table-hover dataTable"
                       style="min-width:4000px;border:solid grey 1px">
                    <thead>
                    <th class="" style="padding-right:0px;">
                        <input id="selall_zi" type="checkbox" class="icheckbox_square-blue">
                    </th>
                    <th class="sorting_asc" width="350px">行号</th>
                    <th class="text-center sorting" width="350px">商品编码</th>
                    <th class="text-center sorting" width="350px">商品名称</th>
                    <th class="text-center sorting" width="350px">规格</th>
                    <th class="text-center sorting" width="350px">计量单位</th>
                    <th class="text-center sorting" width="350px">型号</th>
                    <th class="text-center sorting" width="350px">数量</th>
                    <th class="text-center sorting" width="350px">税率</th>
                    <th class="text-center sorting" width="350px">单品折扣</th>
                    <th class="text-center sorting" width="350px">整单折扣</th>
                    <th class="text-center sorting" width="350px">发票折扣</th>
                    <th class="text-center sorting" width="350px">含税单价</th>
                    <th class="text-center sorting" width="350px">无税单价</th>
                    <th class="text-center sorting" width="350px">含税金额</th>
                    <th class="text-center sorting" width="350px">无税金额</th>
                    <th class="text-center sorting" width="350px">折扣额</th>
                    <th class="text-center sorting" width="350px">源头单据号</th>
                    <th class="text-center sorting" width="350px">源头行号</th>
                    <th class="text-center sorting" width="350px">来源单据号</th>
                    <th class="text-center sorting" width="350px">来源行号</th>
                    <th class="text-center sorting" width="350px">是否为赠品</th>
                    <th class="text-center sorting" width="350px">仓库</th>
                    <th class="text-center sorting" width="350px">收货单位</th>
                    <th class="text-center sorting" width="350px">累计开票数量</th>
                    <th class="text-center sorting" width="350px">累计应收款数量</th>
                    <th class="text-center sorting" width="350px">是否应收款结束</th>
                    <th class="text-center sorting" width="350px">单据状态</th>
                    </thead>
                    <%--内容--%>
                    <tbody id="zib_tbody">
                    </tbody>
                </table>
            </div>
            <%--工具栏--%>
            <div class="pull-left">
                <div class="form-group form-inline">
                    <span id="zib_count" count="">共 0 条记录</span>
                </div>
            </div>
            <%--工具栏/--%>
        </from>
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

        //功能：主表：点击查询按钮，根据主表一部分信息查询出所有满足的主表集合
        $("#query").click(function () {
            var params = $("#form").serialize();
            $.ajax({
                url: "${pageContext.request.contextPath}/xskpd/findZhubByMany",
                type: "post",
                data: params,
                dataType: "json",
                // async: false, 是否是异步: 同步会阻塞UI渲染线程，不会执行ajax后面的代码。
                //使用trigger功能时候，会导致页面卡住:因为这里已经设置async为false，导致被调用的函数执行时候，需要UI渲染线程，但是被阻塞，被调用的函数执行不了，所有会导致页面卡住。
                success: function (data) {
                    //清除$("#zhub_tbody")里面的内容
                    $("#zhub_tbody").innerHTML = '';
                    var xskpd_zhubs = data;
                    var html = '';
                    for (var i = 0; i < xskpd_zhubs.length; i++) {
                        html += '<tr>\n' +
                            '<td><input id="checkbox-pos-' + i + '" class="ids my-checkbox" name="zhub_ids" type="checkbox" value="' + xskpd_zhubs[i].xskpd_zhub_id + '"></td>\n' +
                            '<td><button id="zhub_ddh_btn-" i="' + i + '" ddh="' + xskpd_zhubs[i].fph + '" checked="" ondblclick="find_zib(this)" zhubId="' + xskpd_zhubs[i].xskpd_zhub_id + '" style="width: 100%;height: 99%">' + xskpd_zhubs[i].fph + '</button></td>\n' +
                            '<td>' + xskpd_zhubs[i].kprqStr + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].fplx + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].kjndStr + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].kh + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].khdymc + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].bm + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].ywy + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].shdw + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].shdz + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].zdzk + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].ck + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].bz + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].fpzje + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].zdr + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].zdrqStr + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].spr + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].sprqStr + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].sfspStr + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].spsftgStr + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].xgr + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].xgrqStr + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].ysksfjsStr + '</td>\n' +
                            '<td>' + xskpd_zhubs[i].statusStr + '</td>\n' +
                            '</tr>';
                    }
                    $("#zhub_tbody").html(html);
                    $("#zhub_count").html("共 " + xskpd_zhubs.length + " 条记录");
                    $("#zhub_count").attr("count", xskpd_zhubs.length);
                },
                error: function () {
                    alert("查询失败！")
                }
            });
        });

    });

    //功能：双击主表总ddh按钮触发，根据主表的id查询所有的子表信息，并添加到子表
    function find_zib(x) {
        //移除属性checked
        $(".my-checkbox").removeAttr('checked');
        //把当前设置为true
        var i = $(x).attr("i");
        $("#checkbox-pos-" + i).prop("checked", true);
        //获取id
        var xskpd_zhub_id = $(x).attr("zhubId");
        //获取ddh:对应了子表上面的 单据号：input[xxx],将单据号添加到里面显示，方便查看
        var djh = $(x).attr("ddh");
        $.ajax({
            url: "${pageContext.request.contextPath}/xskpd/findZibsByZhubId",
            type: "GET",
            data: {"xskpd_zhub_id": xskpd_zhub_id},
            dataType: "json",
            async: false,
            success: function (data) {
                //先清除$("#zib_tbody")里面的内容
                $("#zib_tbody").innerHTML = '';
                //给子表form的zhub_id赋值
                $("#zib_form").attr("zhub_id", xskpd_zhub_id);
                /*单据号：<input id="djh"...*/
                $("#djh").attr("value", djh);
                //添加内容
                xskpd_zibs = data;
                var html = '';
                for (var i = 0; i < xskpd_zibs.length; i++) {
                    html += '<tr>\n' +
                        '<td><input name="zib_ids" type="checkbox" value="' + xskpd_zibs[i].xskpd_zib_id + '"></td>\n' +
                        '<td>' + xskpd_zibs[i].hh + '</td>\n' +
                        '<td>' + xskpd_zibs[i].spbm + '</td>\n' +
                        '<td>' + xskpd_zibs[i].spmc + '</td>\n' +
                        '<td>' + xskpd_zibs[i].gg + '</td>\n' +
                        '<td>' + xskpd_zibs[i].dw + '</td>\n' +
                        '<td>' + xskpd_zibs[i].type + '</td>\n' +
                        '<td>' + xskpd_zibs[i].count + '</td>\n' +
                        '<td>' + xskpd_zibs[i].rate + '</td>\n' +
                        '<td>' + xskpd_zibs[i].dpzk + '</td>\n' +
                        '<td>' + xskpd_zibs[i].zdzk + '</td>\n' +
                        '<td>' + xskpd_zibs[i].fpzk + '</td>\n' +
                        '<td>' + xskpd_zibs[i].hsdj + '</td>\n' +
                        '<td>' + xskpd_zibs[i].wsdj + '</td>\n' +
                        '<td>' + xskpd_zibs[i].hsje + '</td>\n' +
                        '<td>' + xskpd_zibs[i].wsje + '</td>\n' +
                        '<td>' + xskpd_zibs[i].zke + '</td>\n' +
                        '<td>' + xskpd_zibs[i].ytdjh + '</td>\n' +
                        '<td>' + xskpd_zibs[i].ythh + '</td>\n' +
                        '<td>' + xskpd_zibs[i].lydjh + '</td>\n' +
                        '<td>' + xskpd_zibs[i].lyhh + '</td>\n' +
                        '<td>' + xskpd_zibs[i].zpStr + '</td>\n' +
                        '<td>' + xskpd_zibs[i].ck + '</td>\n' +
                        '<td>' + xskpd_zibs[i].shdw + '</td>\n' +
                        '<td>' + xskpd_zibs[i].ljkpsl + '</td>\n' +
                        '<td>' + xskpd_zibs[i].ljysksl + '</td>\n' +
                        '<td>' + xskpd_zibs[i].sfyskjsStr + '</td>\n' +
                        '<td>' + xskpd_zibs[i].statusStr + '</td>\n' +
                        '</tr>';
                }
                $("#zib_tbody").html(html);
                $("#zib_count").attr("count", xskpd_zibs.length);
                $("#zib_count").html("共 " + xskpd_zibs.length + " 条记录");
            },
            error: function () {
                alert("查询失败！")
            }
        });
    }

</script>


</body>

</html>


