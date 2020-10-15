<%--
  Created by IntelliJ IDEA.
  User: Kxin
  Date: 2020/2/17
  Time: 21:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>商品档案列表</title>
    <meta name="description" content="AdminLTE2">
    <meta name="keywords" content="AdminLTE2">
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no" name="viewport">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/iCheck/square/blue.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/morris/morris.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/datepicker/datepicker3.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.theme.default.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/select2/select2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/adminLTE/css/AdminLTE.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/adminLTE/css/skins/_all-skins.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.skinNice.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/plugins/bootstrap-slider/slider.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">
</head>

<body class="hold-transition skin-purple sidebar-mini">

<div class="wrapper">

    <!-- 页面头部 -->
    <jsp:include page="../../header.jsp"></jsp:include>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <jsp:include page="../../aside.jsp"></jsp:include>

    <!-- 内容区域 -->
    <!-- @@master = admin-layout.html-->
    <!-- @@block = content -->

    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                数据管理
            </h1>
            <ol class="breadcrumb">
                <li><a href="${pageContext.request.contextPath}/index.jsp"><i class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="#">基础数据</a></li>
                <li class="active">商品档案</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content">

            <!-- .box-body -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">商品档案列表</h3>
                </div>


                <div class="box-body">
                    <!-- 数据表格 -->
                    <div class="table-box">
                        <!--工具栏-->
                        <%--<div class="box-tools pull-right">
                            <div class="has-feedback">
                                <input type="text" class="form-control input-sm" placeholder="部门名称 搜索">
                                <span class="glyphicon glyphicon-search form-control-feedback"></span>
                            </div>
                        </div>--%>
                        <form method="post" action="${pageContext.request.contextPath}/product/findByPnumAndPage">
                            <div class="box-tools pull-right">
                                <div class="has-feedback form-group form-inline">
                                    <input type="text" name="pnum" class="form-control input-sm" placeholder="商品编码">
                                    <button type="submit" class="btn btn-group-sm">搜索</button>
                                </div>
                            </div>
                        </form>
                        <!--工具栏/-->

                        <form action="${pageContext.request.contextPath}/product/deleteByPnums" method="post">
                            <!--数据列表-->
                            <table style="font-size: small" id="dataList" class="table table-bordered table-striped table-hover dataTable">
                                <thead>
                                <tr>
                                    <th class="" style="padding-right:0px;">
                                        <input id="selall" type="checkbox" class="icheckbox_square-blue">
                                    </th>
                                    <%--<th class="sorting_asc" hidden="hidden">商品ID</th>--%>
                                    <th class="text-center sorting">编码</th>
                                    <th class="text-center sorting">名称</th>
                                    <th class="text-center sorting">型号</th>
                                    <th class="text-center sorting">单位</th>
                                    <th class="text-center sorting">单价</th>
                                    <th class="text-center sorting">税率</th>
                                    <th class="text-center sorting">生产日期</th>
                                    <th class="text-center sorting">失效日期</th>
                                    <th class="text-center sorting">描述</th>
                                    <th class="text-center">操作</th>
                                </tr>
                                </thead>

                                <%--内容--%>
                                <tbody style="">
                                <c:forEach items="${pageInfo.list}" var="product">
                                    <tr>
                                        <td style="width: 2%"><input name="pnums" type="checkbox" value="${product.pnum}"></td>
                                        <td style="width: 8%">${product.pnum}</td>
                                        <td style="width:10% ">${product.pname}</td>
                                        <td style="width: 8%">${product.type}</td>
                                        <td style="width: 5%">${product.unit}</td>
                                        <td style="width: 8%">${product.price}</td>
                                        <td style="width: 5%">${product.rate}</td>
                                        <td style="width: 9%">${product.mfdStr}</td>
                                        <td style="width: 9%">${product.expStr}</td>
                                        <td style="width: 25%"><textarea style="width: 100%;height: 100%" readonly="readonly"  rows="1">${product.pdesc}</textarea></td>
                                        <td style="width: 10%" class="text-center">
                                        <button type="button" class="btn bg-olive btn-xs"
                                                onclick="location.href='${pageContext.request.contextPath}/product/findProductByPnumToUI?pnum=${product.pnum}'">
                                            修改
                                        </button>
                                        <button type="button" class="btn bg-olive btn-xs"
                                                onclick="location.href='${pageContext.request.contextPath}/product/deleteByPnum?pnum=${product.pnum}'">
                                            删除
                                        </button>
                                        <button type="button" class="btn bg-olive btn-xs"
                                                onclick="location.href='${pageContext.request.contextPath}/product/findStockNumberByPnum?pNum=${product.pnum}'">
                                            存货详情
                                        </button>
                                    </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <%--工具栏--%>
                            <div class="pull-left">
                                <div class="form-group form-inline">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default" title="新建"
                                                onclick="location.href='${pageContext.request.contextPath}/product/getPnumByPid'">
                                            <i
                                                    class="fa fa-file-o"></i> 新建
                                        </button>
                                        <button type="submit" class="btn btn-default" title="删除">
                                            <i
                                                    class="fa fa-trash-o"></i> 删除
                                        </button>
                                        <button type="button" class="btn btn-default" title="刷新"
                                                onclick="location.href='${pageContext.request.contextPath}/product/findAll'">
                                            <i
                                                    class="fa fa-refresh"></i> 刷新
                                        </button>
                                    </div>
                                </div>
                            </div>
                            <%--工具栏/--%>
                        </form>
                    </div>
                </div>
                <!-- /.box-body -->

                <c:if test="${not empty pageInfo.list}">
                    <!-- .box-footer-->
                    <div class="box-footer">
                        <div class="pull-left">
                            <div class="form-group form-inline">
                                总共 ${pageInfo.pages} 页，共 ${pageInfo.total} 条数据。
                            </div>
                        </div>

                        <div class="box-tools pull-right">
                            <ul class="pagination">
                                <li><a href="${pageContext.request.contextPath}/product/findAll?pageNum=1&pageSize=6"
                                       aria-label="Previous">首页</a></li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/product/findAll?pageNum=${pageInfo.pageNum-1}&pageSize=6">上一页</a>
                                </li>

                                <c:if test="${pageInfo.pages <= 5}">
                                    <c:forEach begin="1" end="${pageInfo.pages}" var="index">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/product/findAll?pageNum=${index}&pageSize=6">${index}</a>
                                        </li>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${pageInfo.pages > 5 && pageInfo.pageNum+4 <= pageInfo.pages}">
                                    <c:forEach begin="${pageInfo.pageNum}" end="${pageInfo.pageNum+4}" var="index">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/product/findAll?pageNum=${index}&pageSize=6">${index}</a>
                                        </li>
                                    </c:forEach>
                                </c:if>
                                <c:if test="${pageInfo.pages > 5 && pageInfo.pageNum+4 > pageInfo.pages}">
                                    <c:forEach begin="${pageInfo.pages-4}" end="${pageInfo.pages}" var="index">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/product/findAll?pageNum=${index}&pageSize=6">${index}</a>
                                        </li>
                                    </c:forEach>
                                </c:if>

                                <li>
                                    <a href="${pageContext.request.contextPath}/product/findAll?pageNum=${pageInfo.pageNum+1}&pageSize=6">下一页</a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/product/findAll?pageNum=${pageInfo.pages}&pageSize=6"
                                       aria-label="Next">尾页</a></li>
                            </ul>
                        </div>

                    </div>
                </c:if>
                <!-- /.box-footer-->
            </div>

        </section>
        <!-- 正文区域 /-->

    </div>
    <!-- @@close -->
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <jsp:include page="../../footer.jsp"/>

</div>


<script src="${pageContext.request.contextPath}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/raphael/raphael-min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/morris/morris.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="${pageContext.request.contextPath}/plugins/knob/jquery.knob.js"></script>
<script src="${pageContext.request.contextPath}/plugins/daterangepicker/moment.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.js"></script>
<script src="${pageContext.request.contextPath}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/fastclick/fastclick.js"></script>
<script src="${pageContext.request.contextPath}/plugins/iCheck/icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/adminLTE/js/app.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/treeTable/jquery.treetable.js"></script>
<script src="${pageContext.request.contextPath}/plugins/select2/select2.full.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="${pageContext.request.contextPath}/plugins/ckeditor/ckeditor.js"></script>
<script src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.js"></script>
<script src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="${pageContext.request.contextPath}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/chartjs/Chart.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/flot/jquery.flot.categories.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script src="${pageContext.request.contextPath}/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script>
    $(document).ready(function () {

// 选择框
        $(".select2").select2();

// WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
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

// 激活导航位置
        setSidebarActive("admin-datalist");

// 列表按钮
        $("#dataList td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
// 全选操作
        $("#selall").click(function () {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });
    });
</script>
</body>

</html>

