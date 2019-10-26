<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
     <title>进货报表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
   <link href="../../../bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../../bootstrap-3.3.7-dist/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../../bootstrap-3.3.7-dist/dataTables/css/dataTables.bootstrap.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="../../../dist/css/jquery-ui.min.css" rel="stylesheet" type="text/css"/>
    <link href="../../../css/custom-global.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../../../css/custom-styles.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../../../css/animate.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../../../fonts/custom-fonts.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="../../../js/morris/morris-0.4.3.min.css" rel="stylesheet" type="text/css" charset="UTF-8"/>
    <link href="http://www.jq22.com/jquery/font-awesome.4.6.0.css" rel="stylesheet" media="screen">
    <style>
        #morris-donut-chart {
            font-size: 13px !important;
            color: #fff !important;
            font-family: "苹方", "微软雅黑", "Open Sans", sans-serif !important;
        }
    </style>
  </head>
  
  <body>
<!--进货报表-->
<div class="container-fluid animated fadeIn">
    <div class="col-xs-12 my-content">
        <div class="page-header">
            <h2>
                <i class="icon-table2 s24" style="color: #9d9d9d;"></i>&nbsp;进货报表
            </h2>
        </div>
        <div class="table-container">
            <div class="table-control mb20 clearfix p30">
                <form action="#" method="post" id="Form">

                    <div class="form-inline mb15">
                        <div class="form-group mr40">
                            <label class="table-label">报表类别：</label>
                            <div class="table-label form-control">
                                <label class="radio-inline">
                                    <input type="radio" name="chartsType">
                                    <span class="s14">商品名称</span>
                                </label>
                            </div>
                        </div>
                        <!--订单类别-->
                        <div class="form-group mr40">
                            <label class="table-label">订单类别：</label>
                            <select name="supplier" class="form-control" style="width: 200px">
                                <option value="-1" selected>请选择</option>
                                <option value="1">未审核</option>
                                <option value="2">正在派单</option>
                                <option value="3">正在采购</option>
                                <option value="4">正在入库</option>
                            </select>
                        </div>
                        <!--开始日期-->
                        <div class="form-group">
                            <label class="table-label">开始日期：</label>
                            <input type="date" class="form-control" style="width: 200px">
                        </div>
                        <!--查询按钮-->
                        <div class="form-group pull-right">
                            <a href="javascript:void(0)" class="btn btn-info" style="width: 100px">查询</a>
                        </div>
                    </div>

                    <div class="form-inline">
                        <div class="form-group mr40">
                            <label class="table-label"></label>
                            <div class="table-label form-control">
                                <label class="radio-inline">
                                    <input type="radio" name="chartsType">
                                    <span class="s14">销售人员</span>
                                </label>
                            </div>
                        </div>
                        <!--厂商名称-->
                        <div class="form-group mr40">
                            <label class="table-label">厂商名称： </label>
                            <select name="supplier" class="form-control" style="width: 200px">
                                <option value="-1" selected>请选择</option>
                                <option value="1">送货</option>
                                <option value="2">自提</option>
                            </select>
                        </div>
                        <!--结束日期-->
                        <div class="form-group">
                            <label class="table-label">结束日期： </label>
                            <input type="date" class="form-control" style="width: 200px">
                        </div>
                        <!--导出表格数据为Excel文件-->
                        <div class="form-group pull-right">
                            <a href="javascript:void(0)" class="btn btn-default" style="width: 100px">下载</a>
                        </div>
                    </div>

                </form>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <table cellpadding="0" cellspacing="0" class="table my-table table-bordered"
                           id="goods-table">
                        <thead>
                        <tr>
                            <th class="thead-val" width="33%"><b class="s15">商品名称</b></th>
                            <th class="thead-val" width="33%"><b class="s15">总数量</b></th>
                            <th class="thead-val" width="33%"><b class="s15">详情</b></th>
                        </tr>
                        </thead>
                        <tbody>

                        <tr>
                            <td align="center">
                                <div class="table-val">狼皮背心</div>
                            </td>
                            <td align="center">
                                <div class="table-val">300</div>
                            </td>
                            <td align="center">
                                <button class="btn btn-sm btn-success showThisDetails" type="button">查看详情</button>
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <div class="table-val">狼皮背心</div>
                            </td>
                            <td align="center">
                                <div class="table-val">300</div>
                            </td>
                            <td align="center">
                                <button class="btn btn-sm btn-success showThisDetails" type="button">查看详情</button>
                            </td>
                        </tr>
                        </tbody>

                        <tfoot class="tfoot-hide">
                        <tr>
                            <th colspan="3" class="opacity0">11</th>
                        </tr>
                        </tfoot>
                    </table>
                </div>
                <div class="col-xs-4 pl5">
                    <div class="table-control p15 brn">
                        <h5 class="m0" style="color: #f1f1f1">数据统计图</h5>
                        <hr style="border-color: rgba(255,255,255,0.15);margin-top: 13px"/>
                        <div class="p10">
                            <div id="morris-donut-chart"></div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

    </div>
    <div class="col-xs-12 clearfix my-content">
        <br>
        <hr style="border-color: rgba(255,255,255,0.35)"/>
    </div>


</div>

<script src="../../../js/jquery-2.1.1.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../../bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../../dist/js/jquery-ui.js" type="text/javascript"></script>
<script src="../../../js/morris/raphael-2.1.0.min.js" type="text/javascript"></script>
<script src="../../../js/morris/morris.js" type="text/javascript"></script>


<script type="text/javascript">

    $(function () {
        initCharts();

        var newDom = "";
        // 点击表格中的数据展开详情
        $(".showThisDetails").on("click", function () {
            var thisRow = $(this).parents('tr');
            if ($(this).hasClass('showDetails')) {
                // 隐藏并删除展开的元素
                thisRow.next('.dyc-data').children('td').fadeOut('fast', function () {
                    thisRow.next('.dyc-data').animate({
                        height: 'toggle',
                        opacity: 'toggle'
                    });
                    setTimeout(function () {
                        thisRow.next('.dyc-data').remove();
                    }, 200);
                });
                $(this).toggleClass('btn-danger btn-success').removeClass('showDetails active').html("查看详情");
            } else {
                // 生产需要展开的显示的元素,添加到页面上
                $("#goods-table tr").each(function () {
                    if ($(this).hasClass('dyc-data')) {
                        $(this).prev().find('.showThisDetails').toggleClass('btn-danger btn-success').removeClass('showDetails active').html("查看详情");
                        $(this).remove();
                    }
                });
                newDom = showTableDetails();
                thisRow.after(newDom);
                $(this).toggleClass('btn-danger btn-success').addClass('showDetails active').html("隐藏详情");
            }
        });

    });


    // 生成显示详情的二级表格
    function showTableDetails() {
        return "<tr class=\"dyc-data animated fadeIn\">\n" +
            "        <td colspan=\"3\" style=\"padding: 0px !important;\">\n" +
            "            <table cellpadding=\"0\" cellspacing=\"0\"\n" +
            "                   class=\"table my-table table-condensed table-bordered my-hover mb0 transparent-bg\"\n" +
            "                   style=\"border: 2px solid rgba(17,17,17,0.66);border-radius: 5px !important;\">\n" +
            "                <thead>\n" +
            "                <tr>\n" +
            "                    <th class=\"thead-val\" width=\"20%\"><b class=\"s15\">订单号</b></th>\n" +
            "                    <th class=\"thead-val\" width=\"20%\"><b class=\"s15\">订单时间</b></th>\n" +
            "                    <th class=\"thead-val\" width=\"10%\"><b class=\"s15\">数量</b></th>\n" +
            "                    <th class=\"thead-val\" width=\"25%\"><b class=\"s15\">单价</b></th>\n" +
            "                    <th class=\"thead-val\" width=\"25%\"><b class=\"s15\">合计</b></th>\n" +
            "                </tr>\n" +
            "                </thead>\n" +
            "                <tbody>\n" +
            "                <tr>\n" +
            "                    <td align=\"center\">\n" +
            "                        <div class=\"table-val\">14343242订单号</div>\n" +
            "                    </td>\n" +
            "                    <td align=\"center\">\n" +
            "                        <div class=\"table-val\">2017-11-01订单时间</div>\n" +
            "                    </td>\n" +
            "                    <td align=\"center\">\n" +
            "                        <div class=\"table-val\">10数量</div>\n" +
            "                    </td>\n" +
            "                    <td align=\"center\">\n" +
            "                        <div class=\"table-val text-right pr10\">单价100.00元</div>\n" +
            "                    </td>\n" +
            "                    <td align=\"center\">\n" +
            "                        <div class=\"table-val text-right pr10\">合计100.00元</div>\n" +
            "                    </td>\n" +
            "                </tr>\n" +
            "                </tbody>\n" +
            "                <tfoot>\n" +
            "                <tr>\n" +
            "                    <th colspan=\"4\" class=\"thead-val text-right\">总计：</th>\n" +
            "                    <th class=\"thead-val text-right pr15\">100.00元</th>\n" +
            "                </tr>\n" +
            "                </tfoot>\n" +
            "            </table>\n" +
            "        </td>\n" +
            "   </tr>";
    }

    // 初始化图表
    function initCharts() {
        Morris.Donut({
            element: 'morris-donut-chart',
            resize: true,
            labelColor: '#f5f5f5',
            colors: ["#3c8dbc", "#f56954", "#00a65a"],
            data: [{
                label: "Download Sales",
                value: 58
            }, {
                label: "In-Store Sales",
                value: 30
            }, {
                label: "Mail-Order Sales",
                value: 20
            }],
            hideHover: 'true'
        });
    }


</script>
<script src="../../../js/custom-scripts.js" type="text/javascript"></script>

</body>
</html>
