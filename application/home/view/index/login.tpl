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
    <title>登录页面</title>
    {include file='./public/static/header.html'}
    {include file='./public/static/css.html'}
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="__ASSET__/pages/css/login-2.min.css" rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL STYLES -->

</head>
<!-- END HEAD -->

<body class=" login">

<!-- BEGIN LOGO -->
<div class="logo">
    <a href="login.html">
        <img src="assets/pages/img/logo-big-white.png" style="height: 17px;" alt=""/> </a>
</div>
<!-- END LOGO -->
<!-- BEGIN LOGIN -->
<div class="content">
    <!-- BEGIN LOGIN FORM -->
    <form class="login-form" action="admin" method="post">
        <div class="form-title">
            <span class="form-title"> </span>
            <span class="form-subtitle"> </span>
        </div>
        {neq name="error" value="ok"}
        <div class="alert alert-danger display-show">
            <button class="close" data-close="alert"></button>
            <span> {$error} </span>
        </div>

        {/neq}

        <div class="form-group">
            <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
            <label class="control-label visible-ie8 visible-ie9">帐号</label>
            <input class="form-control form-control-solid placeholder-no-fix" type="text" autocomplete="off"
                   placeholder="请输入帐号" name="username" /></div>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">密码</label>
            <input class="form-control form-control-solid placeholder-no-fix" type="password" autocomplete="off"
                   placeholder="请输入密码" name="password"/></div>
        <div class="form-actions">
            <button type="submit" class="btn red btn-block uppercase" name="submit">登 录</button>
        </div>
        <div class="form-actions">
            <div class="pull-left">
                <label class="rememberme mt-checkbox mt-checkbox-outline">
                    <input type="checkbox" name="remember" value="1"/> 记住我
                    <span></span>
                </label>
            </div>
        </div>
    </form>
    <!-- END LOGIN FORM -->


</div>
<div class="copyright"> Copyright ©2016 北京商友软件有限公司. All rights reserved.</div>


<!-- END LOGIN -->
<!--[if lt IE 9]>
<script src="__ASSET__/global/plugins/respond.min.js"></script>
<script src="__ASSET__/global/plugins/excanvas.min.js"></script>
<script src="__ASSET__/global/plugins/ie8.fix.min.js"></script>
<![endif]-->
<!-- BEGIN CORE PLUGINS -->
<script src="__ASSET__/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="__ASSET__/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="__ASSET__/global/plugins/js.cookie.min.js" type="text/javascript"></script>
<script src="__ASSET__/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="__ASSET__/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="__ASSET__/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="__ASSET__/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="__ASSET__/global/plugins/jquery-validation/js/additional-methods.min.js" type="text/javascript"></script>
<script src="__ASSET__/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="__ASSET__/global/scripts/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="__ASSET__/pages/scripts/login.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<!-- END THEME LAYOUT SCRIPTS -->
</body>

</html>