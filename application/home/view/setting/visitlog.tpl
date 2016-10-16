<!DOCTYPE html>
<!--
 Author: 徐铭
 Date:   2016-10-11
-->
<!--[if IE 8]>
<html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]>
<html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8"/>
    <title>后台管理首页</title>
    {include file='./public/static/header.html'}

    {include file='./public/static/css.html'}

    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="__ASSET__/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="__ASSET__/global/plugins/morris/morris.css" rel="stylesheet" type="text/css"/>
    <link href="__ASSET__/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css"/>
    <link href="__ASSET__/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL PLUGINS -->

    <!-- BEGIN THEME LAYOUT STYLES -->
    <link href="__ASSET__/layouts/layout3/css/layout.min.css" rel="stylesheet" type="text/css"/>
    <link href="__ASSET__/layouts/layout3/css/themes/default.min.css" rel="stylesheet" type="text/css"
          id="style_color"/>
    <link href="__ASSET__/layouts/layout3/css/custom.min.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME LAYOUT STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->

<body class="page-container-bg-solid">

<div class="page-wrapper">

    {include file='./public/static/menu.html'}

    <div class="page-wrapper-row full-height">
        <div class="page-wrapper-middle">
            <!-- BEGIN CONTAINER -->
            <div class="page-container">
                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->

                    <!-- BEGIN PAGE CONTENT BODY -->
                    <div class="page-content">
                        <div class="container">


                            <div class="row">
                                <div class="col-md-12">
                                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                    <div class="portlet box light">
                                        <div class="portlet-title">
                                            <div class="caption font-green-haze">
                                                <span  class="caption-subject bold uppercase">
                                                    &nbsp&nbsp用户权限&nbsp
                                                    <i class="fa fa-angle-right"></i>
                                                    &nbsp添加用户
                                                </span>
                                            </div>
                                            <div class="tools"></div>
                                        </div>
                                        <div class="portlet-body">
                                            <table class="table table-striped table-bordered table-hover"
                                                   id="colReorderTable">
                                                <thead>
                                                <tr>
                                                    <th> ID</th>
                                                    <th> IP地址</th>
                                                    <th> 省份</th>
                                                    <th> 城市</th>
                                                    <th> 访问URL</th>
                                                    <th> 访问时间</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                {volist name="visitList" id="vo"}
                                                    <tr>
                                                        <td> {$vo.id}</td>
                                                        <td> {$vo.ip}</td>
                                                        <td> {$vo.province}</td>
                                                        <td> {$vo.city}</td>
                                                        <td> {$vo.url}</td>
                                                        <td> {$vo.createTime}</td>
                                                    </tr>
                                                {/volist}

                                                </tbody>
                                            </table>
                                        </div>


                                    </div>
                                </div>
                            </div>
                            <!-- END EXAMPLE TABLE PORTLET-->

                        </div>
                    </div>
                    <!-- END PAGE CONTENT BODY -->
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->

            </div>
            <!-- END CONTAINER -->
        </div>
    </div>
</div>
<div class="page-wrapper-row">
    <div class="page-wrapper-bottom">

    </div>
</div>
</div>

{include file='./public/static/js.html'}
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="__ASSET__/global/scripts/datatable.js" type="text/javascript"></script>
<script src="__ASSET__/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="__ASSET__/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js"
        type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<script src="__ASSET__/pages/scripts/table-datatables-colreorder.min.js" type="text/javascript"></script>
</body>

</html>