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
                    <!-- BEGIN PAGE HEAD-->
                    <div class="page-head">
                        <div class="container">
                            <!-- BEGIN PAGE TITLE -->

                            <!-- END PAGE TITLE -->

                        </div>
                    </div>
                    <!-- END PAGE HEAD-->
                    <!-- BEGIN PAGE CONTENT BODY -->
                    <div class="page-content">
                        <div class="container">



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

</body>

</html>