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
    <title>后台管理首页</title>
    {include file='./public/static/header.html'}
    {include file='./public/static/css.html'}
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="__ASSET__/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css"/>
    <link href="__ASSET__/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet"
          type="text/css"/>
    <!-- END PAGE LEVEL PLUGINS -->
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
                            <div class="page-title ">
                                <span>用户权限&nbsp</span>
                                <i class="fa fa-angle-right"></i>
                                <span>&nbsp用户查询</span>

                            </div>
                            <!-- END PAGE TITLE -->

                        </div>
                    </div>
                    <!-- END PAGE HEAD-->
                    <!-- BEGIN PAGE CONTENT BODY -->
                    <div class="page-content">
                        <div class="container">


                            <div class="row">
                                <div class="col-md-12">
                                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                                    <div class="portlet light ">

                                        <div class="portlet-body">
                                            <div class="table-toolbar">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="btn-group">
                                                            <button id="bt_addUser" class="btn sbold green"
                                                                    onclick="window.location.href='addUser';"> 新增用户
                                                                <i class="fa fa-user-plus"></i>
                                                            </button>
                                                            <button id="bt_delUser" class="btn sbold red"
                                                                    style="margin-left: 8px">
                                                                删除用户
                                                                <i class="fa fa-user-times"></i>
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <table class="table table-striped table-bordered table-hover table-checkable order-column"
                                               id="sample_1">
                                            <thead>
                                            <tr>
                                                <th>
                                                    <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                        <input type="checkbox" class="group-checkable"
                                                               data-set="#sample_1 .checkboxes"/>
                                                        <span></span>
                                                    </label>
                                                </th>
                                                <th> ID</th>
                                                <th> 用户登录名</th>
                                                <th> 真实姓名</th>
                                                <th> 邮箱</th>
                                                <th> 电话</th>
                                                <th> 状态</th>
                                                <th> 创建时间</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            {volist name="userList" id="vo"}
                                                <tr class="odd gradeX">
                                                    <td>
                                                        <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                            <input type="checkbox" class="checkboxes" value="1"
                                                                   userId="{$vo.id}" name="cb_userId"/>
                                                            <span></span>
                                                        </label>
                                                    </td>
                                                    <td style="font-family: Consolas;font-size:1em"> {$vo.id}</td>
                                                    <td style="font-family: Consolas;font-size:1em"> {$vo.userName}</td>
                                                    <td> {$vo.name}</td>
                                                    <td style="font-family: Consolas;font-size:1em"> {$vo.email}</td>
                                                    <td style="font-family: Consolas;font-size:1em"> {$vo.phone}</td>
                                                    <td>
                                                        {eq name="$vo.status" value="E"}
                                                            <span class="label label-sm label-info"> 有效 </span>
                                                        {else/}
                                                            <span class="label label-sm label-default "> 失效 </span>
                                                        {/eq}
                                                    </td>
                                                    <td style="font-family: Consolas;font-size:1em"> {$vo.createTime}</td>
                                                </tr>
                                            {/volist}

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- END EXAMPLE TABLE PORTLET-->
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
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="__ASSET__/pages/scripts/table-datatables-managed.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->

<script>

    /**
     * 失效用户
     */
    $(function () {
        $("#bt_delUser").click(function () {
            var obj = document.getElementsByName('cb_userId');
            var userIdList = new Array();
            for (var i = 0; i < obj.length; i++) {
                if (obj[i].checked) {
//                    alert(i + ":" + obj[i].getAttribute("userId").valueOf());
                    userIdList.push(obj[i].getAttribute("userId").valueOf());
                }
            }
            $.ajax({
                url: "ajax_deleteUser",
                type: "post",
                data:{userIdList:userIdList},
                success: function (data) {
                    alert(data.msg);
                    location.reload();
                },

            });
        })
    })

</script>

</body>

</html>