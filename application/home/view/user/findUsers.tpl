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
                                    <div class="portlet box light">
                                        <div class="portlet-title">

                                            <div class="tools"></div>
                                        </div>
                                        <div class="portlet-body">
                                            <table class="table table-striped table-bordered table-hover"
                                                   id="colReorderTable">
                                                <thead>
                                                <tr>
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
                                                    <tr>
                                                        <td> {$vo.id}</td>
                                                        <td> {$vo.userName}</td>
                                                        <td> {$vo.name}</td>
                                                        <td> {$vo.email}</td>
                                                        <td> {$vo.phone}</td>
                                                        <td> {$vo.status}</td>
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