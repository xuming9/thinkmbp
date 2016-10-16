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
                                    <!-- BEGIN SAMPLE FORM PORTLET-->
                                    <div class="portlet light ">
                                        <div class="portlet-title">
                                            <div class="caption font-green-haze">
                                                <span class="caption-subject bold uppercase">
                                                    &nbsp;&nbsp;用户权限&nbsp;
                                                    <i class="fa fa-angle-right"></i>
                                                    &nbsp;添加用户&nbsp;
                                                </span>
                                            </div>
                                        </div>
                                        <div class="portlet-body form">
                                            <div id="div_insert_result"></div>
                                            <form role="form" class="form-horizontal" method="post" id="form_user"
                                                  onsubmit="return false;">
                                                <div class="form-body">
                                                    <div class="form-group form-md-line-input">
                                                        <label class="col-md-2 control-label" for="form_control_1">用户名
                                                            <span class="required"
                                                                  aria-required="true"> * </span></label>

                                                        <div class="col-md-10">
                                                            <input type="text" class="form-control" id="userName"
                                                                   placeholder="请输入登录帐号名">
                                                            <div class="form-control-focus"></div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group form-md-line-input">
                                                        <label class="col-md-2 control-label"
                                                               for="form_control_1">真实姓名</label>
                                                        <div class="col-md-10">
                                                            <input type="text" class="form-control" id="name"
                                                                   placeholder="请输入真实姓名">
                                                            <div class="form-control-focus"></div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group form-md-line-input">
                                                        <label class="col-md-2 control-label"
                                                               for="form_control_1">部门</label>
                                                        <div class="col-md-10">
                                                            <select class="form-control" id="deptId">
                                                                <option value="0"></option>
                                                                <option value="1">IT部</option>
                                                                <option value="2">财务部</option>
                                                                <option value="3">行政部</option>
                                                                <option value="4">销售部</option>
                                                            </select>
                                                            <div class="form-control-focus"></div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group form-md-line-input">
                                                        <label class="col-md-2 control-label"
                                                               for="form_control_1">邮箱</label>
                                                        <div class="col-md-10">
                                                            <input type="text" class="form-control" id="email"
                                                                   placeholder="请输入电子邮箱">
                                                            <div class="form-control-focus"></div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group form-md-line-input">
                                                        <label class="col-md-2 control-label"
                                                               for="form_control_1">电话</label>
                                                        <div class="col-md-10">
                                                            <input type="text" class="form-control" id="phone"
                                                                   placeholder="请输入手机或电话号码">
                                                            <div class="form-control-focus"></div>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="form-actions">
                                                    <div class="row">
                                                        <div class="col-md-offset-2 col-md-10">
                                                            <button id="bt_reset" class="btn befault"
                                                                    onclick="resetForm();">取消
                                                            </button>
                                                            <button id="bt_submit" class="btn blue">确定</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <!-- END SAMPLE FORM PORTLET-->

                                </div>
                            </div>


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

</div>

{include file='./public/static/js.html'}


<script>
    $(function () {
        $("#bt_submit").click(function () {
            var userName = $("#userName").val();
            var name = $("#name").val();
            var deptId = $("#deptId").val();
            var email = $("#email").val();
            var phone = $("#phone").val();
//            alert(userName + "-" + name + "-" + deptId + "-" + email + "-" + phone);
            $.post(
                    "ajax_insertUser",
                    {userName:userName,name:name,deptId:deptId,email:email,phone:phone},
                    function (data) {
                        if (data.msg == "OK") {
                            $('#div_insert_result').empty();
                            var html = "<div class='alert alert-success'>用户创建成功</div>";
                            $('#div_insert_result').html(html);
                            //$("#form_user").resetForm();
                        } else {
                            $('#div_insert_result').empty();
                            var html = "<div class='alert alert-danger'>" + data.msg + "</div>";
                            $('#div_insert_result').html(html);
                        }
                    },
                    'json'
            );
        })
    })

    function resetForm() {
        $('#div_insert_result').empty();
        $("#form_user").resetForm();
    }

</script>

</body>

</html>