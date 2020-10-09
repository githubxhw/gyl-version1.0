<%--
  Created by IntelliJ IDEA.
  User: HR
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
    <title>销售出库单修订</title>
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
                销售出库单-修订
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
                    <a href="#">销售出库单管理</a>
                </li>
                <li class="active">修订</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <%--查询部分--%>
        <%-- id = query 按钮查询--%>
        <form id="form" method="post">
            <section class="content">
                <div class="panel panel-default">
                    <div class="panel-heading">查询(未审批)</div>
                    <div class="row data-type">
                        <div class="col-md-2 title">单据号</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="djh"
                                   placeholder="单据号" value="">
                        </div>
                        <div class="col-md-2 title">出库日期</div>
                        <div class="col-md-4 data">
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right dateTimePicker" name="djrq">
                            </div>
                        </div>
                        <div class="col-md-2 title">仓库</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="ck"
                                   placeholder="仓库" value="">
                        </div>
                        <div class="col-md-2 title">库管员</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="kgy"
                                   placeholder="库管员" value="">
                        </div>
                        <div class="col-md-2 title">部门</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="bm"
                                   placeholder="部门" value="">
                        </div>
                        <div class="col-md-2 title">客户</div>
                        <div class="col-md-4 data">
                            <input type="text" class="form-control" name="kh"
                                   placeholder="客户" value="">
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
                        <div class="col-md-2 title">审核人</div>
                        <div class="col-md-4 data">
                            <input readonly="readonly" type="text" class="form-control" name="spr"
                                   placeholder="审核人" value="">
                        </div>
                        <div class="col-md-2 title">审核日期</div>
                        <div class="col-md-4 data">
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input readonly="readonly" type="text" class="form-control pull-right" name="shrq">
                            </div>
                        </div>
                        <div class="col-md-2 title">是否审核</div>
                        <div class="col-md-4 data">
                            <select class="form-control" name="sfsh">
                                <option value="0">否</option>
                            </select>
                        </div>
                        <div class="col-md-2 title">审核是否通过</div>
                        <div class="col-md-4 data">
                            <select class="form-control" name="shsftg">
                                <option value="0">否</option>
                            </select>
                        </div>
                        <div class="col-md-2 title">修改人</div>
                        <div class="col-md-4 data">
                            <input readonly="readonly" type="text" class="form-control" name="xgr"
                                   placeholder="修改人" value="">
                        </div>
                        <div class="col-md-2 title">修改日期</div>
                        <div class="col-md-4 data">
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input readonly="readonly" type="text" class="form-control pull-right" name="xgrq">
                            </div>
                        </div>
                        <div class="col-md-2 title">是否退货</div>
                        <div class="col-md-4 data">
                            <select class="form-control" name="sfth">
                                <option selected="selected" value="-1">全部</option>
                                <option value="1">是</option>
                                <option value="0">否</option>
                            </select>
                        </div>
                        <div class="col-md-2 title">单据状态</div>
                        <div class="col-md-4 data">
                            <select class="form-control" name="status">
                                <option value="0">未结束</option>
                            </select>
                        </div>
                    </div>
                </div>
                <!--工具栏-->
                <div class="box-tools <%--text-center --%>text-right">
                    <button id="query" type="button" class="btn <%--bg-maroon--%> bg-red">搜索</button>
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
                       style="min-width:2700px;border:solid grey 1px">
                    <thead>
                    <th class="" style="padding-right:0px;">
                        <input id="selall_zhu" type="checkbox" class="icheckbox_square-blue">
                    </th>
                    <th class="sorting_asc" width="200px">单据号</th>
                    <th class="text-center sorting" width="200px">出库日期</th>
                    <th class="text-center sorting" width="200px">仓库</th>
                    <th class="text-center sorting" width="200px">库管员</th>
                    <th class="text-center sorting" width="200px">部门</th>
                    <th class="text-center sorting" width="200px">客户</th>
                    <th class="text-center sorting" width="200px">制单人</th>
                    <th class="text-center sorting" width="200px">制单日期</th>
                    <th class="text-center sorting" width="200px">审核人</th>
                    <th class="text-center sorting" width="200px">审核日期</th>
                    <th class="text-center sorting" width="200px">是否审核</th>
                    <th class="text-center sorting" width="200px">审核是否通过</th>
                    <th class="text-center sorting" width="200px">修改人</th>
                    <th class="text-center sorting" width="200px">修改日期</th>
                    <th class="text-center sorting" width="200px">是否退货</th>
                    <th class="text-center sorting" width="200px">单据状态</th>
                    <th class="text-center" width="200px">操作</th>
                    </thead>
                    <%--内容--%>
                    <tbody id="zhub_tbody">
                    </tbody>
                </table>
            </div>
            <%--工具栏--%>
            <div class="pull-left">
                <div class="form-group form-inline">
                    <div class="btn-group">
                        <button onclick="deleteZhubByIds(this)" type="button" class="btn btn-default" title="删除"><i
                                class="fa fa-trash-o"></i> 删除
                        </button>
                    </div>
                    <span id="zhub_count" count="">共 0 条记录</span>
                </div>
            </div>
            <%--工具栏/--%>
        </from>
        <br><br><br>
        <div class="form-group">
            <input id="djh" class="form-control" type="text" readonly="readonly" style="width: 17%;"
                   placeholder="双击已查询的单据号进行选择" value="">
        </div>
        <%--2：子表--%>
        <from id="zib_form" zhub_id="-1">
            <div style="padding-left: 20px;"><h4></h4></div>
            <div style="overflow: scroll;overflow-y:scroll;height: 300px;width: 99%;">
                <table id="dataList_zi" class="table table-bordered table-striped table-hover dataTable"
                       style="min-width:3125px;border:solid grey 1px">
                    <thead>
                    <th class="" style="padding-right:0px;">
                        <input id="selall_zi" type="checkbox" class="icheckbox_square-blue">
                    </th>
                    <th class="sorting_asc" width="350px">行号</th>
                    <th class="text-center sorting" width="350px">发货日期</th>
                    <th class="text-center sorting" width="350px">存货编码</th>
                    <th class="text-center sorting" width="350px">存货名称</th>
                    <th class="text-center sorting" width="350px">型号</th>
                    <th class="text-center sorting" width="350px">计量单位</th>
                    <th class="text-center sorting" width="350px">生产日期</th>
                    <th class="text-center sorting" width="350px">失效日期</th>
                    <th class="text-center sorting" width="350px">应发数量</th>
                    <th class="text-center sorting" width="350px">实发数量</th>
                    <th class="text-center sorting" width="350px">单价</th>
                    <th class="text-center sorting" width="350px">金额</th>
                    <th class="text-center sorting" width="350px">是否赠品</th>
                    <th class="text-center sorting" width="350px">源头单据号</th>
                    <th class="text-center sorting" width="350px">源头行号</th>
                    <th class="text-center sorting" width="350px">来源单据号</th>
                    <th class="text-center sorting" width="350px">来源行号</th>
                    <th class="text-center sorting" width="350px">累计出库数量</th>
                    <th class="text-center sorting" width="350px">单据状态</th>
                    <th class="text-center" width="350px">操作</th>
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
                        <button id="get_zib_hh" type="button" class="btn btn-default" data-toggle="modal"
                                data-target="#myModal_1"
                                title="添加">
                            <i class="fa fa-file-o"></i> 添加
                        </button>
                        <%--模拟窗口--%>
                        <div id="myModal_1" class="modal modal-primary" role="dialog">
                            <div class="modal-dialog modal-lg">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                        <h4 class="modal-title">添加销售出库子单</h4>
                                    </div>
                                    <div class="modal-body">
                                        <div class="box-body">
                                            <div class="form-horizontal">
                                                <%--子表添加--%>
                                                <form id="zib_save_form" method="post">
                                                    <!-- 正文区域 -->
                                                    <section class="content"> <!--产品信息-->

                                                        <div class="panel panel-default">
                                                            <div class="panel-heading">销售出库单子单</div>
                                                            <div class="row data-type">
                                                                <div class="col-md-2 title">行号</div>
                                                                <div class="col-md-4 data">
                                                                    <input id="zibhh" type="text" readonly="readonly"
                                                                           class="form-control" name="hh"
                                                                           placeholder="行号" value="">
                                                                </div>
                                                                <div class="col-md-2 title">存货编码</div>
                                                                <div class="col-md-4 data">
                                                                    <input type="text" class="form-control" name="spbm"
                                                                           placeholder="存货编码" value="">
                                                                </div>
                                                                <div class="col-md-2 title">存货名称</div>
                                                                <div class="col-md-4 data">
                                                                    <input type="text" class="form-control" name="spmc"
                                                                           placeholder="存货名称" value="">
                                                                </div>
                                                                <div class="col-md-2 title">型号</div>
                                                                <div class="col-md-4 data">
                                                                    <input type="text" class="form-control" name="type"
                                                                           placeholder="型号" value="">
                                                                </div>
                                                                <div class="col-md-2 title">计量单位</div>
                                                                <div class="col-md-4 data">
                                                                    <input type="text" class="form-control" name="dw"
                                                                           placeholder="计量单位" value="">
                                                                </div>
                                                                <div class="col-md-2 title">生产日期</div>
                                                                <div class="col-md-4 data">
                                                                    <div class="input-group date">
                                                                        <div class="input-group-addon">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </div>
                                                                        <input type="text"
                                                                               class="form-control pull-right dateTimePicker"
                                                                               name="scrq">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2 title">失效日期</div>
                                                                <div class="col-md-4 data">
                                                                    <div class="input-group date">
                                                                        <div class="input-group-addon">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </div>
                                                                        <input type="text"
                                                                               class="form-control pull-right dateTimePicker"
                                                                               name="sxrq">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2 title">应发数量</div>
                                                                <div class="col-md-4 data">
                                                                    <input type="text" class="form-control" name="yfsl"
                                                                           placeholder="应发数量" value="">
                                                                </div>
                                                                <div class="col-md-2 title">实发数量</div>
                                                                <div class="col-md-4 data">
                                                                    <input type="text" class="form-control" name="sfsl"
                                                                           placeholder="实发数量" value="">
                                                                </div>
                                                                <div class="col-md-2 title">单价</div>
                                                                <div class="col-md-4 data">
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">¥</span>
                                                                        <input type="text" class="form-control"
                                                                               name="dj">
                                                                        <span class="input-group-addon">元</span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2 title">金额</div>
                                                                <div class="col-md-4 data">
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">¥</span>
                                                                        <input type="text" class="form-control"
                                                                               name="je">
                                                                        <span class="input-group-addon">元</span>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2 title">出库日期</div>
                                                                <div class="col-md-4 data">
                                                                    <div class="input-group date">
                                                                        <div class="input-group-addon">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </div>
                                                                        <input type="text"
                                                                               class="form-control pull-right dateTimePicker"
                                                                               name="ckrq">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2 title">是否是赠品</div>
                                                                <div class="col-md-4 data">
                                                                    <select class="form-control" name="zp">
                                                                        <option value="1">是</option>
                                                                        <option selected="selected" value="0">否
                                                                        </option>
                                                                    </select>
                                                                </div>
                                                                <div class="col-md-2 title">源头单据号</div>
                                                                <div class="col-md-4 data">
                                                                    <input type="text" class="form-control"
                                                                           name="ytdjh"
                                                                           placeholder="源头单据号" value="">
                                                                </div>
                                                                <div class="col-md-2 title">源头行号</div>
                                                                <div class="col-md-4 data">
                                                                    <input type="text" class="form-control"
                                                                           name="ythh"
                                                                           placeholder="源头行号" value="">
                                                                </div>
                                                                <div class="col-md-2 title">来源单据号</div>
                                                                <div class="col-md-4 data">
                                                                    <input type="text" class="form-control"
                                                                           name="lydjh"
                                                                           placeholder="来源单据号" value="">
                                                                </div>
                                                                <div class="col-md-2 title">来源行号</div>
                                                                <div class="col-md-4 data">
                                                                    <input type="text" class="form-control"
                                                                           name="lyhh"
                                                                           placeholder="来源行号" value="">
                                                                </div>
                                                                <div class="col-md-2 title">累计出库数量</div>
                                                                <div class="col-md-4 data">
                                                                    <input readonly="readonly" type="text" class="form-control"
                                                                           name="ljcksl"
                                                                           placeholder="累计出库数量" value="0">
                                                                </div>
                                                                <div class="col-md-2 title">单据状态</div>
                                                                <div class="col-md-4 data">
                                                                    <select class="form-control" name="status">
                                                                        <option selected="selected" value="0">未结束
                                                                        </option>
                                                                    </select>
                                                                </div>
                                                                <%--外键id--%>
                                                                <input id="zib_zhub_id_input" type="hidden"
                                                                       value="" name="xsckd_zhub_id">
                                                            </div>
                                                        </div>
                                                        <!--订单信息/--> <!--工具栏-->
                                                        <div class="box-tools <%--text-center --%>text-right">
                                                            <button type="reset" class="btn bg-orange">重置</button>
                                                        </div>
                                                        <!--工具栏/-->
                                                    </section>
                                                    <!-- 正文区域 /-->
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button id="zib_save" type="button" class="btn btn-outline"
                                                data-dismiss="modal">添加
                                        </button>
                                        <button type="button" class="btn btn-outline" data-dismiss="modal">取消</button>
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>

                            <!-- /.modal-dialog -->
                        </div>
                        <%--模拟窗口/--%>
                        <button onclick="deleteZibByIds(this)" type="button" class="btn btn-default"
                                title="删除"><i
                                class="fa fa-trash-o"></i> 删除
                        </button>
                        <button id="zib_refresh_btn" onclick="refresh(this)" type="button" class="btn btn-default"
                                title="刷新"><i
                                class="fa fa-refresh"></i> 刷新
                        </button>
                    </div>
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

        //功能：主表：点击查询按钮，根据主表一部分信息和未审批 查询出所有满足的主表集合
        $("#query").click(function () {
            var params = $("#form").serialize();
            $.ajax({
                url: "${pageContext.request.contextPath}/xsckd/findAllAndNotSh",
                type: "post",
                data: params,
                dataType: "json",
                // async: false, 是否是异步: 同步会阻塞UI渲染线程，不会执行ajax后面的代码。
                //使用trigger功能时候，会导致页面卡住:因为这里已经设置async为false，导致被调用的函数执行时候，需要UI渲染线程，但是被阻塞，被调用的函数执行不了，所有会导致页面卡住。
                success: function (data) {
                    //清除$("#zhub_tbody")里面的内容
                    $("#zhub_tbody").innerHTML = '';
                    var xsckd_zhubs = data;
                    var html = '';
                    for (var i = 0; i < xsckd_zhubs.length; i++) {
                        html += '<tr>\n' +
                            '<td><input id="checkbox-pos-' + i + '" class="ids my-checkbox" name="zhub_ids" type="checkbox" value="' + xsckd_zhubs[i].xsckd_zhub_id + '"></td>\n' +
                            '<td><button id="zhub_ddh_btn-" i="' + i + '" ddh="' + xsckd_zhubs[i].djh + '" checked="" ondblclick="find_zib(this)" zhubId="' + xsckd_zhubs[i].xsckd_zhub_id + '" style="width: 100%;height: 99%">' + xsckd_zhubs[i].djh + '</button></td>\n' +
                            '<td>' + xsckd_zhubs[i].djrqStr + '</td>\n' +
                            '<td>' + xsckd_zhubs[i].ck + '</td>\n' +
                            '<td>' + xsckd_zhubs[i].kgy + '</td>\n' +
                            '<td>' + xsckd_zhubs[i].bm + '</td>\n' +
                            '<td>' + xsckd_zhubs[i].kh + '</td>\n' +
                            '<td>' + xsckd_zhubs[i].zdr + '</td>\n' +
                            '<td>' + xsckd_zhubs[i].zdrqStr + '</td>\n' +
                            '<td>' + xsckd_zhubs[i].spr + '</td>\n' +
                            '<td>' + xsckd_zhubs[i].shrqStr + '</td>\n' +
                            '<td>' + xsckd_zhubs[i].sfshStr + '</td>\n' +
                            '<td>' + xsckd_zhubs[i].shsftgStr + '</td>\n' +
                            '<td>' + xsckd_zhubs[i].xgr + '</td>\n' +
                            '<td>' + xsckd_zhubs[i].xgrqStr + '</td>\n' +
                            '<td>' + xsckd_zhubs[i].sfthStr + '</td>\n' +
                            '<td>' + xsckd_zhubs[i].statusStr + '</td>\n' +
                            '<td class="text-center">\n' +
                            '<button id="zhub_xg_btn" i=' + i + ' onclick="zhub_xg_btn(this)" zhubId="' + xsckd_zhubs[i].xsckd_zhub_id + '" type="button" data-toggle="modal" data-target="#myModal-zhub-' + i + '" class="btn bg-olive btn-xs"\n' +
                            '">\n' +
                            '    修改\n' +
                            '</button>\n' +
                            <%--模拟窗口--%>
                            '\n' +
                            '                        <div id="myModal-zhub-' + i + '" class="modal modal-primary" role="dialog">\n' +
                            '                            <div class="modal-dialog modal-lg">\n' +
                            '                                <div class="modal-content">\n' +
                            '                                    <div class="modal-header">\n' +
                            '                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">\n' +
                            '                                            <span aria-hidden="true">&times;</span>\n' +
                            '                                        </button>\n' +
                            '                                        <h4 class="modal-title">修改主表信息</h4>\n' +
                            '                                    </div>\n' +
                            '                                    <div class="modal-body">\n' +
                            '                                        <div class="box-body">\n' +
                            '                                            <div class="form-horizontal">\n' +
                            '                                                <%--主表修改--%>\n' +
                            '                                                <form id="zhub_xg_form-' + i + '" method="post">\n' +
                            '                                                    <!-- 正文区域 -->\n' +
                            '                                                    <section class="content"> <!--产品信息-->\n' +
                            '\n' +
                            '                                                        <div class="panel panel-default">\n' +
                            '                                                            <div class="panel-heading">修改销售出库单主单</div>\n' +
                            '                                                            <div class="row data-type">\n' +
                            '\n' +                                                           /* 此处是 标记一个主表的id属性，方便根据id更新主表zhub*/
                            '                                                                <input id="zhub_xg_xsckd_zhub_id-' + i + '" type="hidden" name="xsckd_zhub_id" value="">\n' +
                            '                                                                \n' +
                            '                                                                <div class="col-md-2 title">单据号</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <input id="zhub_xg_djh-' + i + '" readonly="readonly" type="text"\n' +
                            '                                                                           class="form-control" name="djh"\n' +
                            '                                                                           placeholder="单据号" value="">\n' +
                            '                                                                </div>\n' +
                            '                                                                <div class="col-md-2 title">出库日期</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <div class="input-group date">\n' +
                            '                                                                        <div class="input-group-addon">\n' +
                            '                                                                            <i class="fa fa-calendar"></i>\n' +
                            '                                                                        </div>\n' +
                            '                                                                        <input id="zhub_xg_djrq-' + i + '" type="text"\n' +
                            '                                                                               class="form-control pull-right dateTimePicker"\n' +
                            '                                                                               name="djrq">\n' +
                            '                                                                    </div>\n' +
                            '                                                                </div>\n' +
                            '                                                                <div class="col-md-2 title">仓库</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <input id="zhub_xg_ck-' + i + '" type="text" class="form-control" name="ck"\n' +
                            '                                                                           placeholder="仓库" value="">\n' +
                            '                                                                </div>\n' +
                            '                                                                <div class="col-md-2 title">库管员</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <input id="zhub_xg_kgy-' + i + '" type="text" class="form-control" name="kgy"\n' +
                            '                                                                           placeholder="库管员" value="">\n' +
                            '                                                                </div>\n' +
                            '                                                                <div class="col-md-2 title">部门</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <input id="zhub_xg_bm-' + i + '" type="text" class="form-control" name="bm"\n' +
                            '                                                                           placeholder="部门" value="">\n' +
                            '                                                                </div>\n' +
                            '                                                                <div class="col-md-2 title">客户</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <input id="zhub_xg_kh-' + i + '" type="text" class="form-control" name="kh"\n' +
                            '                                                                           placeholder="客户" value="">\n' +
                            '                                                                </div>\n' +
                            '                                                                <div class="col-md-2 title">制单人</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <input id="zhub_xg_zdr-' + i + '" type="text" class="form-control" name="zdr"\n' +
                            '                                                                           placeholder="制单人" value="">\n' +
                            '                                                                </div>\n' +
                            '                                                                <div class="col-md-2 title">制单日期</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <div class="input-group date">\n' +
                            '                                                                        <div class="input-group-addon">\n' +
                            '                                                                            <i class="fa fa-calendar"></i>\n' +
                            '                                                                        </div>\n' +
                            '                                                                        <input id="zhub_xg_zdrq-' + i + '" type="text"\n' +
                            '                                                                               class="form-control pull-right dateTimePicker"\n' +
                            '                                                                               name="zdrq">\n' +
                            '                                                                    </div>\n' +
                            '                                                                </div>\n' +
                            '                                                                <div class="col-md-2 title">审核人</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <input readonly="readonly" id="zhub_xg_spr-' + i + '" type="text" class="form-control" name="spr"\n' +
                            '                                                                           placeholder="审核人" value="">\n' +
                            '                                                                </div>\n' +
                            '                                                                <div class="col-md-2 title">审核日期</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <div class="input-group date">\n' +
                            '                                                                        <div class="input-group-addon">\n' +
                            '                                                                            <i class="fa fa-calendar"></i>\n' +
                            '                                                                        </div>\n' +
                            '                                                                        <input readonly="readonly" id="zhub_xg_shrq-' + i + '" type="text"\n' +
                            '                                                                               class="form-control pull-right"\n' +
                            '                                                                               name="shrq">\n' +
                            '                                                                    </div>\n' +
                            '                                                                </div>\n' +
                            '                                                                <div class="col-md-2 title">是否审核</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <select class="form-control" name="sfsh">\n' +
                            '                                                                        <option id="zhub_xg_sfsh0_option-' + i + '" value="0">否</option>\n' +
                            '                                                                    </select>\n' +
                            '                                                                </div>\n' +
                            '                                                                <div class="col-md-2 title">审核是否通过</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <select class="form-control" name="shsftg">\n' +
                            '                                                                        <option id="zhub_xg_shsftg0_option-' + i + '" value="0">未通过</option>\n' +
                            '                                                                    </select>\n' +
                            '                                                                </div>\n' +
                            '                                                                <div class="col-md-2 title">修改人</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <input readonly="readonly" id="zhub_xg_xgr-' + i + '" type="text" class="form-control" name="xgr"\n' +
                            '                                                                           placeholder="修改人" value="">\n' +
                            '                                                                </div>\n' +
                            '                                                                <div class="col-md-2 title">修改日期</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <div class="input-group date">\n' +
                            '                                                                        <div class="input-group-addon">\n' +
                            '                                                                            <i class="fa fa-calendar"></i>\n' +
                            '                                                                        </div>\n' +
                            '                                                                        <input readonly="readonly" id="zhub_xg_xgrq-' + i + '" type="text"\n' +
                            '                                                                               class="form-control pull-right"\n' +
                            '                                                                               name="xgrq">\n' +
                            '                                                                    </div>\n' +
                            '                                                                </div>\n' +
                            '                                                                <div class="col-md-2 title">是否退货</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <select class="form-control" name="sfth">\n' +
                            '                                                                        <option id="zhub_xg_sfth1_option-' + i + '" value="1">是</option>\n' +
                            '                                                                        <option id="zhub_xg_sfth0_option-' + i + '" value="0">否</option>\n' +
                            '                                                                    </select>\n' +
                            '                                                                </div>\n' +
                            '                                                                <div class="col-md-2 title">单据状态</div>\n' +
                            '                                                                <div class="col-md-4 data">\n' +
                            '                                                                    <select id="zhub_xg_select_status-' + i + '" class="form-control" name="status">\n' +
                            '                                                                        <option id="zhub_xg_status0_option-' + i + '" value="0">未结束</option>\n' +
                            '                                                                    </select>\n' +
                            '                                                                </div>\n' +
                            '                                                            </div>\n' +
                            '                                                        </div>\n' +
                            '                                                    </section>\n' +
                            '                                                    <!-- 正文区域 /-->\n' +
                            '                                                </form>\n' +
                            '                                            </div>\n' +
                            '                                        </div>\n' +
                            '                                    </div>\n' +
                            '                                    <div class="modal-footer">\n' +
                            '                                        <button i="' + i + '" onclick="updateXsckd_zhubById(this)" type="button" class="btn btn-outline" data-dismiss="modal">修改</button>\n' +
                            '                                        <button type="button" class="btn btn-outline" data-dismiss="modal">取消</button>\n' +
                            '                                    </div>\n' +
                            '                                </div>\n' +
                            '                                <!-- /.modal-content -->\n' +
                            '                            </div>\n' +
                            '\n' +
                            '                            <!-- /.modal-dialog -->\n' +
                            '                        </div>' +
                            <%--模拟窗口/--%>
                            '<button zhubId="' + xsckd_zhubs[i].xsckd_zhub_id + '" data-toggle="modal" data-target="#myModal_2" type="button" class="btn bg-olive btn-xs"\n' +
                            '    onclick="delete_zhub(this)">\n' +
                            '    删除\n' +
                            '</button>\n' +
                            '</td>\n' +
                            '</tr>';
                    }
                    $("#zhub_tbody").html(html);
                    $("#zhub_count").html("共 " + xsckd_zhubs.length + " 条记录");
                    $("#zhub_count").attr("count", xsckd_zhubs.length);
                },
                error: function () {
                    alert("查询失败！")
                }
            });
        });

        //功能：子表：点击主表添加按钮触发，添加到模态框主表信息，先查询出行号，行号添加是从1开始递增
        $("#get_zib_hh").click(function () {
            //获取主表id
            var zhub_id = $("#zib_form").attr("zhub_id");
            if (zhub_id == -1) {
                alert("请指定一个主表：单击主表中的发货单号按钮即可");
            } else {
                //把zhubid外键赋值给子表模态框的input里面
                $("#zib_zhub_id_input").attr("value", zhub_id);
                $.ajax({
                    url: "${pageContext.request.contextPath}/xsckd/getZibHhByZhubId",
                    type: "get",
                    data: {"xsckd_zhub_id": zhub_id},
                    dataType: "text",
                    async: false,
                    success: function (data) {
                        var hh = data;
                        //赋值
                        $("#zibhh").attr("value", hh);
                    },
                    error: function () {
                        alert("获取行号失败!");
                    }
                });
            }
        });

        //功能：子表：点击模拟框中的添加按钮触发请求，保存一个子表信息
        $("#zib_save").click(function () {
            var params = $("#zib_save_form").serialize();
            $.ajax({
                url: "${pageContext.request.contextPath}/xsckd/saveXsckd_zib",
                type: "post",
                data: params,
                dataType: "text",
                //async: false,
                success: function () {
                    //添加主表信息到页面
                    alert("添加成功!");
                    //刷新功能
                    $("#zib_refresh_btn").trigger("click");
                },
                error: function () {
                    alert("添加失败！")
                }
            });
        });
    });
    
    //功能：单击主表中的修改按钮，把该行的信息填充到模拟div中
    function zhub_xg_btn(x) {
        var xsckd_zhub_id = $(x).attr("zhubId");
        $.ajax({
            url: "${pageContext.request.contextPath}/xsckd/findXsckd_zhubById",
            type: "get",
            data: {"xsckd_zhub_id": xsckd_zhub_id},
            dataType: "json",
            async: false,
            success: function (data) {
                //alert("ok");
                var xsckd_zhub = data;
                //添加数据到模态框中
                //1,获取点击了该修改按钮所在的行号i
                var i = $(x).attr("i");
                //2,给每一个按钮框添加值
                $("#zhub_xg_xsckd_zhub_id-" + i).attr("value", xsckd_zhub.xsckd_zhub_id);
                $("#zhub_xg_djh-" + i).attr("value", xsckd_zhub.djh);
                $("#zhub_xg_djrq-" + i).attr("value", xsckd_zhub.djrqStr);
                $("#zhub_xg_ck-" + i).attr("value", xsckd_zhub.ck);
                $("#zhub_xg_kgy-" + i).attr("value", xsckd_zhub.kgy);
                $("#zhub_xg_bm-" + i).attr("value", xsckd_zhub.bm);
                $("#zhub_xg_kh-" + i).attr("value", xsckd_zhub.kh);
                $("#zhub_xg_zdr-" + i).attr("value", xsckd_zhub.zdr);
                $("#zhub_xg_zdrq-" + i).attr("value", xsckd_zhub.zdrqStr);
                $("#zhub_xg_spr-" + i).attr("value", xsckd_zhub.spr);
                $("#zhub_xg_shrq-" + i).attr("value", xsckd_zhub.shrqStr);
                $("#zhub_xg_xgr-" + i).attr("value", xsckd_zhub.xgr);
                $("#zhub_xg_xgrq-" + i).attr("value", xsckd_zhub.xgrqStr);

                if (xsckd_zhub.sfth == 1) {
                    $("#zhub_xg_sfth1_option-" + i).attr("selected", "selected");
                } else {
                    $("#zhub_xg_sfth0_option-" + i).attr("selected", "selected");
                }
                //添加disabled="disabled" 注意：在提交表单的时候，需要把disabled移除，不然提交不了数据
                //zhub_xg_select_status-'+i+'
                /*$("#zhub_xg_select_status-" + i).attr("disabled", "disabled");*/
            },
            error: function (data) {
                alert("无响应!");
            }
        });
    }

    //功能：单击主表模态框中的修改按钮，对修改的信息进行修改
    function updateXsckd_zhubById(x) {
        //判断是否删除
        var msg = "是否确认修改?";
        if (confirm(msg) == true) {
            //获取点击了该修改按钮所在的行号i
            var i = $(x).attr("i");
            //一定要移除disabled属性 ???????
            /*$("#zhub_xg_select_status-" + i).removeAttr("disabled");*/
            //表单数据
            var params = $("#zhub_xg_form-" + i).serialize();
            $.ajax({
                url: "${pageContext.request.contextPath}/xsckd/updateXsckd_zhubById",
                type: "post",
                data: params,
                dataType: "text",
                // async: false,
                success: function () {
                    alert("修改成功！");
                    $("#query").trigger("click");
                },
                error: function () {
                    alert("修改异常!")
                }
            });
        }
    }
    
    //功能：单击主表总右边的删除按钮，删除主表 by id
    function delete_zhub(x) {
        //判断是否删除
        var msg = "是否确认删除?";
        if (confirm(msg) == true) {
            var xsckd_zhub_id = $(x).attr("zhubId");
            $.ajax({
                url: "${pageContext.request.contextPath}/xsckd/deleteXsckd_zhubById",
                type: "GET",
                data: {"xsckd_zhub_id": xsckd_zhub_id},
                dataType: "text",
                async: false,
                success: function (data) {
                    //遍历每一个tr
                    $("#zhub_tbody tr").each(function (i) {
                        //获取第一个节点
                        var firstTd = $(this).children('td')[0];
                        //第一个节点的input标签，即小框框
                        var firstInput = $(firstTd).children('input')[0];
                        var id = $(firstInput).attr("value")
                        if (id == xsckd_zhub_id) {
                            $(this).remove();
                            var befCount = $("#zhub_count").attr("count");
                            var realCount = befCount - 1;
                            $("#zhub_count").html("共 " + realCount + " 条记录");
                            $("#zhub_count").attr("count", realCount);
                        }
                    });
                    alert("删除成功!");
                },
                error: function (data) {
                    alert("删除失败!")
                }
            });
        }
    }

    //功能：单机主表下面的删除按钮，删除主表by ids
    function deleteZhubByIds(x) {
        var msg = "是否确定删除?";
        if (confirm(msg) == true) {
            var ids = "";
            var inputs = document.getElementsByName("zhub_ids");
            for (var i = 0, j = 0; i < inputs.length; i++) {
                if (inputs[i].checked) {
                    if (j == 0) {
                        ids += inputs[i].value;
                        j++;
                    } else {
                        ids += "," + inputs[i].value;
                    }
                }
            }
            $.ajax({
                url: "${pageContext.request.contextPath}/xsckd/deleteXsckd_ZhubByIds",
                type: "GET",
                data: {"ids": ids},
                dataType: "text",
                async: false,
                success: function () {
                    var n = 0;
                    for (var i = inputs.length - 1; i >= 0; i--) {
                        if (inputs[i].checked) {
                            inputs[i].parentElement.parentElement.remove();
                            n++;
                        }
                    }
                    var befCount = $("#zhub_count").attr("count");
                    var realCount = befCount - n;
                    $("#zhub_count").html("共 " + realCount + " 条记录");
                    $("#zhub_count").attr("count", realCount);
                    alert("删除成功!")
                },
                error: function () {
                    alert("删除失败!")
                }
            });
        }
    }
    
    //功能：双击主表总ddh按钮触发，根据主表的id查询所有的子表信息，并添加到子表
    function find_zib(x) {
        //移除属性checked
        $(".my-checkbox").removeAttr('checked');
        //把当前设置为true
        var i = $(x).attr("i");
        $("#checkbox-pos-" + i).prop("checked", true);
        //获取id
        var xsckd_zhub_id = $(x).attr("zhubId");
        //获取ddh:对应了子表上面的 单据号：input[xxx],将单据号添加到里面显示，方便查看
        var djh = $(x).attr("ddh");
        $.ajax({
            url: "${pageContext.request.contextPath}/xsckd/findZibsByZhubId",
            type: "GET",
            data: {"xsckd_zhub_id": xsckd_zhub_id},
            dataType: "json",
            async: false,
            success: function (data) {
                //先清除$("#zib_tbody")里面的内容
                $("#zib_tbody").innerHTML = '';
                //给子表form的zhub_id赋值
                $("#zib_form").attr("zhub_id", xsckd_zhub_id);
                /*单据号：<input id="djh"...*/
                $("#djh").attr("value", djh);
                //添加内容
                xsckd_zibs = data;
                var html = '';
                for (var i = 0; i < xsckd_zibs.length; i++) {
                    html += '<tr>\n' +
                        '<td><input name="zib_ids" type="checkbox" value="' + xsckd_zibs[i].xsckd_zib_id + '"></td>\n' +
                        '<td>' + xsckd_zibs[i].hh + '</td>\n' +
                        '<td>' + xsckd_zibs[i].spbm + '</td>\n' +
                        '<td>' + xsckd_zibs[i].spmc + '</td>\n' +
                        '<td>' + xsckd_zibs[i].type + '</td>\n' +
                        '<td>' + xsckd_zibs[i].dw + '</td>\n' +
                        '<td>' + xsckd_zibs[i].scrqStr + '</td>\n' +
                        '<td>' + xsckd_zibs[i].sxrqStr + '</td>\n' +
                        '<td>' + xsckd_zibs[i].yfsl + '</td>\n' +
                        '<td>' + xsckd_zibs[i].sfsl + '</td>\n' +
                        '<td>' + xsckd_zibs[i].dj + '</td>\n' +
                        '<td>' + xsckd_zibs[i].je + '</td>\n' +
                        '<td>' + xsckd_zibs[i].ckrqStr + '</td>\n' +
                        '<td>' + xsckd_zibs[i].zpStr + '</td>\n' +
                        '<td>' + xsckd_zibs[i].ytdjh + '</td>\n' +
                        '<td>' + xsckd_zibs[i].ythh + '</td>\n' +
                        '<td>' + xsckd_zibs[i].lydjh + '</td>\n' +
                        '<td>' + xsckd_zibs[i].lyhh + '</td>\n' +
                        '<td>' + xsckd_zibs[i].ljcksl + '</td>\n' +
                        '<td>' + xsckd_zibs[i].statusStr + '</td>\n' +
                        '<td class="text-center">\n' +
                        '<button id="zib_xg_btn-'+i+'" status="'+xsckd_zibs[i].status+'" i="' + i + '" zibId="' + xsckd_zibs[i].xsckd_zib_id + '" onclick="zib_xg_btn(this)" type="button" data-toggle="modal" data-target="#myModal-zib-' + i + '" class="btn bg-olive btn-xs"\n' +
                        '    >\n' +
                        '    修改\n' +
                        '</button>\n' +
                        <%--模拟窗口--%>
                        '\n' +
                        '                        <div id="myModal-zib-' + i + '" class="modal modal-primary" role="dialog">\n' +
                        '                            <div class="modal-dialog modal-lg">\n' +
                        '                                <div class="modal-content">\n' +
                        '                                    <div class="modal-header">\n' +
                        '                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">\n' +
                        '                                            <span aria-hidden="true">&times;</span>\n' +
                        '                                        </button>\n' +
                        '                                        <h4 class="modal-title">修改子表信息</h4>\n' +
                        '                                    </div>\n' +
                        '                                    <div class="modal-body">\n' +
                        '                                        <div class="box-body">\n' +
                        '                                            <div class="form-horizontal">\n' +
                        '                                                <%--主表修改--%>\n' +
                        '                                                <form id="zib_xg_form-' + i + '" method="post">\n' +
                        '                                                    <!-- 正文区域 -->\n' +
                        '                                                    <section class="content"> <!--产品信息-->\n' +
                        '\n' +
                        '                                                        <div class="panel panel-default">\n' +
                        '                                                            <div class="panel-heading">修改子单</div>\n' +
                        '                                                            <div class="row data-type">\n' +
                        '                        <input id="zib_xg_xsckd_zhub_id-' + i + '" type="hidden" name="xsckd_zhub_id" value="">\n' + /*主表id--》外键*/
                        '                        <input id="zib_xg_xsckd_zib_id-' + i + '" type="hidden" name="xsckd_zib_id" value="">\n' + /*子表id*/
                        '                        <div class="col-md-2 title">行号</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <input id="zib_xg_hh-' + i + '" type="text" readonly="readonly"  class="form-control" name="hh"\n' +
                        '                                   placeholder="行号" value="">\n' +
                        '                        </div>\n' +
                        '                        <div class="col-md-2 title">存货编码</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <input id="zib_xg_spbm-' + i + '" type="text" class="form-control" name="spbm"\n' +
                        '                                   placeholder="存货编码" value="">\n' +
                        '                        </div>\n' +
                        '                        <div class="col-md-2 title">存货名称</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <input id="zib_xg_spmc-' + i + '" type="text" class="form-control" name="spmc"\n' +
                        '                                   placeholder="存货名称" value="">\n' +
                        '                        </div>\n' +
                        '                        <div class="col-md-2 title">型号</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <input id="zib_xg_type-' + i + '" type="text" class="form-control" name="type"\n' +
                        '                                   placeholder="型号" value="">\n' +
                        '                        </div>\n' +
                        '                        <div class="col-md-2 title">计量单位</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <input id="zib_xg_dw-' + i + '" type="text" class="form-control" name="dw"\n' +
                        '                                   placeholder="计量单位" value="">\n' +
                        '                        </div>\n' +
                        '                        <div class="col-md-2 title">生产日期</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <div class="input-group date">\n' +
                        '                                <div class="input-group-addon">\n' +
                        '                                            <i class="fa fa-calendar"></i>\n' +
                        '                                </div>\n' +
                        '                                <input id="zib_xg_scrq-' + i + '" type="text"\n' +
                        '                                      class="form-control pull-right dateTimePicker" name="scrq">\n' +
                        '                             </div>\n' +
                        '                         </div>\n' +
                        '                        <div class="col-md-2 title">失效日期</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <div class="input-group date">\n' +
                        '                                <div class="input-group-addon">\n' +
                        '                                            <i class="fa fa-calendar"></i>\n' +
                        '                                </div>\n' +
                        '                                <input id="zib_xg_sxrq-' + i + '" type="text"\n' +
                        '                                      class="form-control pull-right dateTimePicker" name="sxrq">\n' +
                        '                             </div>\n' +
                        '                         </div>\n' +
                        '                        <div class="col-md-2 title">应发数量</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <input id="zib_xg_yfsl-' + i + '" type="text" class="form-control" name="yfsl"\n' +
                        '                                   placeholder="应发数量" value="">\n' +
                        '                        </div>\n' +
                        '                        <div class="col-md-2 title">实发数量</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <input id="zib_xg_sfsl-' + i + '" type="text" class="form-control" name="sfsl"\n' +
                        '                                   placeholder="实发数量" value="">\n' +
                        '                        </div>\n' +
                        '                        <div class="col-md-2 title">单价</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <div class="input-group">\n' +
                        '                                <span class="input-group-addon">¥</span>\n' +
                        '                                <input id="zib_xg_dj-' + i + '" type="text" class="form-control" name="dj">\n' +
                        '                                <span class="input-group-addon">元</span>\n' +
                        '                            </div>\n' +
                        '                        </div>\n' +
                        '                        <div class="col-md-2 title">金额</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <div class="input-group">\n' +
                        '                                <span class="input-group-addon">¥</span>\n' +
                        '                                <input id="zib_xg_je-' + i + '" type="text" class="form-control" name="je">\n' +
                        '                                <span class="input-group-addon">元</span>\n' +
                        '                            </div>\n' +
                        '                        </div>\n' +
                        '                        <div class="col-md-2 title">出库日期</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <div class="input-group date">\n' +
                        '                                <div class="input-group-addon">\n' +
                        '                                            <i class="fa fa-calendar"></i>\n' +
                        '                                </div>\n' +
                        '                                <input id="zib_xg_ckrq-' + i + '" type="text"\n' +
                        '                                      class="form-control pull-right dateTimePicker" name="ckrq">\n' +
                        '                             </div>\n' +
                        '                         </div>\n' +
                        '                         <div class="col-md-2 title">是否为赠品</div>\n' +
                        '                         <div class="col-md-4 data">\n' +
                        '                             <select id="zib_xg_select_zp-' + i + '" class="form-control" name="zp">\n' +
                        '                                    <option id="zib_xg_zp1_option-' + i + '" value="1">是</option>\n' +
                        '                                    <option id="zib_xg_zp0_option-' + i + '" value="0">否</option>\n' +
                        '                             </select>\n' +
                        '                          </div>\n' +
                        '                        <div class="col-md-2 title">源头单据号</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <input id="zib_xg_ytdjh-' + i + '" type="text" class="form-control" name="ytdjh"\n' +
                        '                                   placeholder="源头单据号" value="">\n' +
                        '                        </div>' +
                        '                        <div class="col-md-2 title">源头行号</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <input id="zib_xg_ythh-' + i + '" type="text" class="form-control" name="ythh"\n' +
                        '                                   placeholder="源头行号" value="">\n' +
                        '                        </div>' +
                        '                        <div class="col-md-2 title">来源单据号</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <input id="zib_xg_lydjh-' + i + '" type="text" class="form-control" name="lydjh"\n' +
                        '                                   placeholder="来源单据号" value="">\n' +
                        '                        </div>' +
                        '                        <div class="col-md-2 title">来源行号</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <input id="zib_xg_lyhh-' + i + '" type="text" class="form-control" name="lyhh"\n' +
                        '                                   placeholder="来源行号" value="">\n' +
                        '                        </div>' +
                        '                        <div class="col-md-2 title">累计出库数量</div>\n' +
                        '                        <div class="col-md-4 data">\n' +
                        '                            <input readonly="readonly" id="zib_xg_ljcksl-' + i + '"  type="text" class="form-control" name="ljcksl"\n' +
                        '                                   placeholder="累计出库数量" value="">\n' +
                        '                        </div>' +
                        '                         <div class="col-md-2 title">状态</div>\n' +
                        '                         <div class="col-md-4 data">\n' +
                        '                             <select id="zib_xg_select_status-' + i + '" class="form-control" name="status">\n' +
                        '                                    <option id="zib_xg_status0_option-' + i + '" value="0">未结束</option>\n' +
                        '                             </select>\n' +
                        '                          </div>\n' +

                        '                                                        </div>\n' +
                        '                                                        </div>\n' +
                        '                                                    </section>\n' +
                        '                                                    <!-- 正文区域 /-->\n' +
                        '                                                </form>\n' +
                        '                                            </div>\n' +
                        '                                        </div>\n' +
                        '                                    </div>\n' +
                        '                                    <div class="modal-footer">\n' +
                        '                                        <button zibId="' + xsckd_zibs[i].xsdd_zib_id + '" i="' + i + '" onclick="updateZibById(this)" type="button" class="btn btn-outline" data-dismiss="modal">修改</button>\n' +
                        '                                        <button type="button" class="btn btn-outline" data-dismiss="modal">取消</button>\n' +
                        '                                    </div>\n' +
                        '                                </div>\n' +
                        '                                <!-- /.modal-content -->\n' +
                        '                            </div>\n' +
                        '\n' +
                        '                            <!-- /.modal-dialog -->\n' +
                        '                        </div>' +
                        <%--模拟窗口/--%>
                        '<button zibId="' + xsckd_zibs[i].xsckd_zib_id + '" type="button" class="btn bg-olive btn-xs"\n' +
                        '    onclick="delete_zib(this)">\n' +
                        '    删除\n' +
                        '</button>\n' +
                        '</td>\n' +
                        '</tr>';
                }
                $("#zib_tbody").html(html);
                $("#zib_count").attr("count", xsckd_zibs.length);
                $("#zib_count").html("共 " + xsckd_zibs.length + " 条记录");
            },
            error: function () {
                alert("查询失败！")
            }
        });
    }
    
    //功能：单击 子表中的 修改按钮，把该行的信息填充到模拟div中
    function zib_xg_btn(x) {
        //1,获取点击了该修改按钮所在的行号i
        var i = $(x).attr("i");
        var zib_status = $("#zib_xg_btn-"+i).attr("status");
        if(zib_status == 1){
            //结束
            confirm("已经结束，不能修改！");
            //删除
            $("#myModal-zib-"+i).remove();
        }else {
            //没有结束
            var xsckd_zib_id = $(x).attr("zibId");
            $.ajax({
                url: "${pageContext.request.contextPath}/xsckd/findXsckd_zibById",
                type: "get",
                data: {"xsckd_zib_id": xsckd_zib_id},
                dataType: "json",
                async: false,
                success: function (data) {
                    var xsckd_zib = data;
                    //添加数据到模态框中
                    //2,给每一个按钮框添加值
                    $("#zib_xg_xsckd_zhub_id-" + i).attr("value", xsckd_zib.xsckd_zhub_id); /*主表d --》外键*/
                    $("#zib_xg_xsckd_zib_id-" + i).attr("value", xsckd_zib.xsckd_zib_id);/*子表id*/
                    $("#zib_xg_hh-" + i).attr("value", xsckd_zib.hh);
                    $("#zib_xg_spbm-" + i).attr("value", xsckd_zib.spbm);
                    $("#zib_xg_spmc-" + i).attr("value", xsckd_zib.spmc);
                    $("#zib_xg_type-" + i).attr("value", xsckd_zib.type);
                    $("#zib_xg_dw-" + i).attr("value", xsckd_zib.dw);
                    $("#zib_xg_scrq-" + i).attr("value", xsckd_zib.scrqStr);
                    $("#zib_xg_sxrq-" + i).attr("value", xsckd_zib.sxrqStr);
                    $("#zib_xg_yfsl-" + i).attr("value", xsckd_zib.yfsl);
                    $("#zib_xg_sfsl-" + i).attr("value", xsckd_zib.sfsl);
                    $("#zib_xg_dj-" + i).attr("value", xsckd_zib.dj);
                    $("#zib_xg_je-" + i).attr("value", xsckd_zib.je);
                    $("#zib_xg_ckrq-" + i).attr("value", xsckd_zib.ckrqStr);
                    /*zp*/
                    if (xsckd_zib.zp == 1) {
                        $("#zib_xg_zp1_option-" + i).attr("selected", "selected");
                    } else {
                        $("#zib_xg_zp0_option-" + i).attr("selected", "selected");
                    }
                    $("#zib_xg_ytdjh-" + i).attr("value", xsckd_zib.ytdjh);
                    $("#zib_xg_ythh-" + i).attr("value", xsckd_zib.ythh);
                    $("#zib_xg_lydjh-" + i).attr("value", xsckd_zib.lydjh);
                    $("#zib_xg_lyhh-" + i).attr("value", xsckd_zib.lyhh);
                    $("#zib_xg_ljcksl-" + i).attr("value", xsckd_zib.ljcksl);

                    /*设置包括下面select的不可以选择*/
                    //zib_xg_select_sfskgb
                    //$("#zib_xg_select_status-" + i).attr("disabled", "disabled");
                },
                error: function (data) {
                    alert("无响应!");
                }
            });
        }
    }

    //功能： 单击 子表模态框中的 修改按钮，对修改的信息进行修改
    function updateZibById(x) {
        var msg = "是否确定更新?";
        if (confirm(msg) == true){
            //获取点击了该修改按钮所在的行号i
            var i = $(x).attr("i");
            //表单数据
            var params = $("#zib_xg_form-" + i).serialize();
            $.ajax({
                url: "${pageContext.request.contextPath}/xsckd/updateXsckd_zibById",
                type: "post",
                data: params,
                dataType: "text",
                // async: false,
                success: function () {
                    alert("修改成功！");
                    //刷新子表功能
                    $("#zib_refresh_btn").trigger("click");
                    //查询主表功能
                    /*$("#query").trigger("click");*/
                },
                error: function () {
                    alert("修改失败！")
                }
            });
        }
    }

    //功能：单击子表总右边的删除按钮，删除子表 by id
    function delete_zib(x) {
        var msg = "是否确认删除?";
        if (confirm(msg) == true) {
            var zibId = $(x).attr("zibId");
            $.ajax({
                url: "${pageContext.request.contextPath}/xsckd/deleteXsckd_ZibById",
                type: "GET",
                data: {"xsckd_zib_id": zibId},
                dataType: "text",
                async: false,
                success: function (data) {
                    alert("删除成功!")
                    //遍历每一个tr
                    $("#zib_tbody tr").each(function (i) {
                        //获取第一个节点
                        var firstTd = $(this).children('td')[0];
                        var firstInput = $(firstTd).children('input')[0];
                        var id = $(firstInput).attr("value")
                        if (id == zibId) {
                            $(this).remove();
                            var befCount = $("#zib_count").attr("count");
                            var realCount = befCount - 1;
                            $("#zib_count").html("共 " + realCount + " 条记录");
                            $("#zib_count").attr("count", realCount);
                        }
                    });
                },
                error: function () {
                    alert("删除失败!")
                }
            });
        }
    }

    //功能：单机子表下面的删除按钮，删除子表by ids
    function deleteZibByIds(x) {
        var msg = "请确认删除?";
        if(confirm(msg) == true){
            var ids = "";
            var inputs = document.getElementsByName("zib_ids");
            for (var i = 0, j = 0; i < inputs.length; i++) {
                if (inputs[i].checked) {
                    if (j == 0) {
                        ids += inputs[i].value;
                        j++;
                    } else {
                        ids += "," + inputs[i].value;
                    }
                }
            }
            $.ajax({
                url: "${pageContext.request.contextPath}/xsckd/deleteXsckd_ZibByIds",
                type: "GET",
                data: {"ids": ids},
                dataType: "text",
                async: false,
                success: function () {
                    var n = 0;
                    for (var i = inputs.length - 1; i >= 0; i--) {
                        if (inputs[i].checked) {
                            inputs[i].parentElement.parentElement.remove();
                            n++;
                        }
                    }
                    var befCount = $("#zib_count").attr("count");
                    var realCount = befCount - n;
                    $("#zib_count").html("共 " + realCount + " 条记录");
                    $("#zib_count").attr("count", realCount);
                    alert("删除成功!")
                },
                error: function () {
                    alert("删除失败!")
                }
            });
        }
    }

    //功能： 单击 子表下面的刷新按钮触发，对子表进行刷新
    function refresh(x) {
        var zhub_id = $("#zib_form").attr("zhub_id");
        if (zhub_id != -1) {
            $.ajax({
                url: "${pageContext.request.contextPath}/xsckd/findZibsByZhubId",
                type: "GET",
                data: {"xsckd_zhub_id": zhub_id},
                dataType: "json",
                async: false,
                success: function (data) {
                    //先清除$("#zib_tbody")里面的内容
                    $("#zib_tbody").innerHTML = '';
                    //添加内容
                    xsckd_zibs = data;
                    var html = '';
                    for (var i = 0; i < xsckd_zibs.length; i++) {
                        html += '<tr>\n' +
                            '<td><input name="zib_ids" type="checkbox" value="' + xsckd_zibs[i].xsckd_zib_id + '"></td>\n' +
                            '<td>' + xsckd_zibs[i].hh + '</td>\n' +
                            '<td>' + xsckd_zibs[i].spbm + '</td>\n' +
                            '<td>' + xsckd_zibs[i].spmc + '</td>\n' +
                            '<td>' + xsckd_zibs[i].type + '</td>\n' +
                            '<td>' + xsckd_zibs[i].dw + '</td>\n' +
                            '<td>' + xsckd_zibs[i].scrqStr + '</td>\n' +
                            '<td>' + xsckd_zibs[i].sxrqStr + '</td>\n' +
                            '<td>' + xsckd_zibs[i].yfsl + '</td>\n' +
                            '<td>' + xsckd_zibs[i].sfsl + '</td>\n' +
                            '<td>' + xsckd_zibs[i].dj + '</td>\n' +
                            '<td>' + xsckd_zibs[i].je + '</td>\n' +
                            '<td>' + xsckd_zibs[i].ckrqStr + '</td>\n' +
                            '<td>' + xsckd_zibs[i].zpStr + '</td>\n' +
                            '<td>' + xsckd_zibs[i].ytdjh + '</td>\n' +
                            '<td>' + xsckd_zibs[i].ythh + '</td>\n' +
                            '<td>' + xsckd_zibs[i].lydjh + '</td>\n' +
                            '<td>' + xsckd_zibs[i].lyhh + '</td>\n' +
                            '<td>' + xsckd_zibs[i].ljcksl + '</td>\n' +
                            '<td>' + xsckd_zibs[i].statusStr + '</td>\n' +
                            '<td class="text-center">\n' +
                            '<button id="zib_xg_btn-'+i+'" status="'+xsckd_zibs[i].status+'" i="' + i + '" zibId="' + xsckd_zibs[i].xsckd_zib_id + '" onclick="zib_xg_btn(this)" type="button" data-toggle="modal" data-target="#myModal-zib-' + i + '" class="btn bg-olive btn-xs"\n' +
                            '    >\n' +
                            '    修改\n' +
                            '</button>\n' +
                            <%--模拟窗口--%>
                            '\n' +
                            '                        <div id="myModal-zib-' + i + '" class="modal modal-primary" role="dialog">\n' +
                            '                            <div class="modal-dialog modal-lg">\n' +
                            '                                <div class="modal-content">\n' +
                            '                                    <div class="modal-header">\n' +
                            '                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">\n' +
                            '                                            <span aria-hidden="true">&times;</span>\n' +
                            '                                        </button>\n' +
                            '                                        <h4 class="modal-title">修改子表信息</h4>\n' +
                            '                                    </div>\n' +
                            '                                    <div class="modal-body">\n' +
                            '                                        <div class="box-body">\n' +
                            '                                            <div class="form-horizontal">\n' +
                            '                                                <%--主表修改--%>\n' +
                            '                                                <form id="zib_xg_form-' + i + '" method="post">\n' +
                            '                                                    <!-- 正文区域 -->\n' +
                            '                                                    <section class="content"> <!--产品信息-->\n' +
                            '\n' +
                            '                                                        <div class="panel panel-default">\n' +
                            '                                                            <div class="panel-heading">修改子单</div>\n' +
                            '                                                            <div class="row data-type">\n' +
                            '                        <input id="zib_xg_xsckd_zhub_id-' + i + '" type="hidden" name="xsckd_zhub_id" value="">\n' + /*主表id--》外键*/
                            '                        <input id="zib_xg_xsckd_zib_id-' + i + '" type="hidden" name="xsckd_zib_id" value="">\n' + /*子表id*/
                            '                        <div class="col-md-2 title">行号</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <input id="zib_xg_hh-' + i + '" type="text" readonly="readonly"  class="form-control" name="hh"\n' +
                            '                                   placeholder="行号" value="">\n' +
                            '                        </div>\n' +
                            '                        <div class="col-md-2 title">存货编码</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <input id="zib_xg_spbm-' + i + '" type="text" class="form-control" name="spbm"\n' +
                            '                                   placeholder="存货编码" value="">\n' +
                            '                        </div>\n' +
                            '                        <div class="col-md-2 title">存货名称</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <input id="zib_xg_spmc-' + i + '" type="text" class="form-control" name="spmc"\n' +
                            '                                   placeholder="存货名称" value="">\n' +
                            '                        </div>\n' +
                            '                        <div class="col-md-2 title">型号</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <input id="zib_xg_type-' + i + '" type="text" class="form-control" name="type"\n' +
                            '                                   placeholder="型号" value="">\n' +
                            '                        </div>\n' +
                            '                        <div class="col-md-2 title">计量单位</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <input id="zib_xg_dw-' + i + '" type="text" class="form-control" name="dw"\n' +
                            '                                   placeholder="计量单位" value="">\n' +
                            '                        </div>\n' +
                            '                        <div class="col-md-2 title">生产日期</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <div class="input-group date">\n' +
                            '                                <div class="input-group-addon">\n' +
                            '                                            <i class="fa fa-calendar"></i>\n' +
                            '                                </div>\n' +
                            '                                <input id="zib_xg_scrq-' + i + '" type="text"\n' +
                            '                                      class="form-control pull-right dateTimePicker" name="scrq">\n' +
                            '                             </div>\n' +
                            '                         </div>\n' +
                            '                        <div class="col-md-2 title">失效日期</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <div class="input-group date">\n' +
                            '                                <div class="input-group-addon">\n' +
                            '                                            <i class="fa fa-calendar"></i>\n' +
                            '                                </div>\n' +
                            '                                <input id="zib_xg_sxrq-' + i + '" type="text"\n' +
                            '                                      class="form-control pull-right dateTimePicker" name="sxrq">\n' +
                            '                             </div>\n' +
                            '                         </div>\n' +
                            '                        <div class="col-md-2 title">应发数量</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <input id="zib_xg_yfsl-' + i + '" type="text" class="form-control" name="yfsl"\n' +
                            '                                   placeholder="应发数量" value="">\n' +
                            '                        </div>\n' +
                            '                        <div class="col-md-2 title">实发数量</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <input id="zib_xg_sfsl-' + i + '" type="text" class="form-control" name="sfsl"\n' +
                            '                                   placeholder="实发数量" value="">\n' +
                            '                        </div>\n' +
                            '                        <div class="col-md-2 title">单价</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <div class="input-group">\n' +
                            '                                <span class="input-group-addon">¥</span>\n' +
                            '                                <input id="zib_xg_dj-' + i + '" type="text" class="form-control" name="dj">\n' +
                            '                                <span class="input-group-addon">元</span>\n' +
                            '                            </div>\n' +
                            '                        </div>\n' +
                            '                        <div class="col-md-2 title">金额</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <div class="input-group">\n' +
                            '                                <span class="input-group-addon">¥</span>\n' +
                            '                                <input id="zib_xg_je-' + i + '" type="text" class="form-control" name="je">\n' +
                            '                                <span class="input-group-addon">元</span>\n' +
                            '                            </div>\n' +
                            '                        </div>\n' +
                            '                        <div class="col-md-2 title">出库日期</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <div class="input-group date">\n' +
                            '                                <div class="input-group-addon">\n' +
                            '                                            <i class="fa fa-calendar"></i>\n' +
                            '                                </div>\n' +
                            '                                <input id="zib_xg_ckrq-' + i + '" type="text"\n' +
                            '                                      class="form-control pull-right dateTimePicker" name="ckrq">\n' +
                            '                             </div>\n' +
                            '                         </div>\n' +
                            '                         <div class="col-md-2 title">是否为赠品</div>\n' +
                            '                         <div class="col-md-4 data">\n' +
                            '                             <select id="zib_xg_select_zp-' + i + '" class="form-control" name="zp">\n' +
                            '                                    <option id="zib_xg_zp1_option-' + i + '" value="1">是</option>\n' +
                            '                                    <option id="zib_xg_zp0_option-' + i + '" value="0">否</option>\n' +
                            '                             </select>\n' +
                            '                          </div>\n' +
                            '                        <div class="col-md-2 title">源头单据号</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <input id="zib_xg_ytdjh-' + i + '" type="text" class="form-control" name="ytdjh"\n' +
                            '                                   placeholder="源头单据号" value="">\n' +
                            '                        </div>' +
                            '                        <div class="col-md-2 title">源头行号</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <input id="zib_xg_ythh-' + i + '" type="text" class="form-control" name="ythh"\n' +
                            '                                   placeholder="源头行号" value="">\n' +
                            '                        </div>' +
                            '                        <div class="col-md-2 title">来源单据号</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <input id="zib_xg_lydjh-' + i + '" type="text" class="form-control" name="lydjh"\n' +
                            '                                   placeholder="来源单据号" value="">\n' +
                            '                        </div>' +
                            '                        <div class="col-md-2 title">来源行号</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <input id="zib_xg_lyhh-' + i + '" type="text" class="form-control" name="lyhh"\n' +
                            '                                   placeholder="来源行号" value="">\n' +
                            '                        </div>' +
                            '                        <div class="col-md-2 title">累计出库数量</div>\n' +
                            '                        <div class="col-md-4 data">\n' +
                            '                            <input readonly="readonly" id="zib_xg_ljcksl-' + i + '"  type="text" class="form-control" name="ljcksl"\n' +
                            '                                   placeholder="累计出库数量" value="">\n' +
                            '                        </div>' +
                            '                         <div class="col-md-2 title">状态</div>\n' +
                            '                         <div class="col-md-4 data">\n' +
                            '                             <select id="zib_xg_select_status-' + i + '" class="form-control" name="status">\n' +
                            '                                    <option id="zib_xg_status0_option-' + i + '" value="0">未结束</option>\n' +
                            '                             </select>\n' +
                            '                          </div>\n' +

                            '                                                        </div>\n' +
                            '                                                        </div>\n' +
                            '                                                    </section>\n' +
                            '                                                    <!-- 正文区域 /-->\n' +
                            '                                                </form>\n' +
                            '                                            </div>\n' +
                            '                                        </div>\n' +
                            '                                    </div>\n' +
                            '                                    <div class="modal-footer">\n' +
                            '                                        <button zibId="' + xsckd_zibs[i].xsdd_zib_id + '" i="' + i + '" onclick="updateZibById(this)" type="button" class="btn btn-outline" data-dismiss="modal">修改</button>\n' +
                            '                                        <button type="button" class="btn btn-outline" data-dismiss="modal">取消</button>\n' +
                            '                                    </div>\n' +
                            '                                </div>\n' +
                            '                                <!-- /.modal-content -->\n' +
                            '                            </div>\n' +
                            '\n' +
                            '                            <!-- /.modal-dialog -->\n' +
                            '                        </div>' +
                            <%--模拟窗口/--%>
                            '<button zibId="' + xsckd_zibs[i].xsckd_zib_id + '" type="button" class="btn bg-olive btn-xs"\n' +
                            '    onclick="delete_zib(this)">\n' +
                            '    删除\n' +
                            '</button>\n' +
                            '</td>\n' +
                            '</tr>';
                    }
                    $("#zib_tbody").html(html);
                    $("#zib_count").attr("count", xsckd_zibs.length);
                    $("#zib_count").html("共 " + xsckd_zibs.length + " 条记录");
                },
                error: function () {
                    alert("查询失败！")
                }
            });
        }
    }

</script>


</body>

</html>





