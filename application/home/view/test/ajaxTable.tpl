<!DOCTYPE html>
<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.7
Version: 4.7
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
Renew Support: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>

    <title>Metronic | The Ultimate Multi-purpose Bootstrap Admin Dashboard Theme | Theme #1 | Buttons Datatable </title>
    {include file="./public/static/header.html"}

    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <link href="__ASSET__/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
    <link href="__ASSET__/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="__ASSET__/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL PLUGINS -->
    {include file="./public/static/css.html"}

<!-- END HEAD -->

<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white">
<div class="page-wrapper">

    {include file="./public/static/menu.html"}

    <!-- BEGIN HEADER & CONTENT DIVIDER -->
    <div class="clearfix"> </div>
    <!-- END HEADER & CONTENT DIVIDER -->
    <!-- BEGIN CONTAINER -->
    <div class="page-container">

        <!-- BEGIN CONTENT -->
        <div class="page-content-wrapper">
            <!-- BEGIN CONTENT BODY -->
            <div class="page-content">



                <div class="row">
                    <div class="col-md-12">

                        <!-- Begin: life time stats -->
                        <div class="portlet light portlet-fit portlet-datatable bordered">
                            <div class="portlet-title">
                                <div class="caption">
                                    <i class="icon-settings font-dark"></i>
                                    <span class="caption-subject font-dark sbold uppercase">Ajax Datatable</span>
                                </div>
                                <div class="actions">
                                    <div class="btn-group btn-group-devided" data-toggle="buttons">
                                        <label class="btn btn-transparent grey-salsa btn-outline btn-circle btn-sm active">
                                            <input type="radio" name="options" class="toggle" id="option1">Actions</label>
                                        <label class="btn btn-transparent grey-salsa btn-outline btn-circle btn-sm">
                                            <input type="radio" name="options" class="toggle" id="option2">Settings</label>
                                    </div>
                                    <div class="btn-group">
                                        <a class="btn red btn-outline btn-circle" href="javascript:;" data-toggle="dropdown">
                                            <i class="fa fa-share"></i>
                                            <span class="hidden-xs"> Tools </span>
                                            <i class="fa fa-angle-down"></i>
                                        </a>
                                        <ul class="dropdown-menu pull-right" id="datatable_ajax_tools">
                                            <li>
                                                <a href="javascript:;" data-action="0" class="tool-action">
                                                    <i class="icon-printer"></i> Print</a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" data-action="1" class="tool-action">
                                                    <i class="icon-check"></i> Copy</a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" data-action="2" class="tool-action">
                                                    <i class="icon-doc"></i> PDF</a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" data-action="3" class="tool-action">
                                                    <i class="icon-paper-clip"></i> Excel</a>
                                            </li>
                                            <li>
                                                <a href="javascript:;" data-action="4" class="tool-action">
                                                    <i class="icon-cloud-upload"></i> CSV</a>
                                            </li>
                                            <li class="divider"> </li>
                                            <li>
                                                <a href="javascript:;" data-action="5" class="tool-action">
                                                    <i class="icon-refresh"></i> Reload</a>
                                            </li>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="portlet-body">
                                <div class="table-container">
                                    <div class="table-actions-wrapper">
                                        <span> </span>
                                        <select class="table-group-action-input form-control input-inline input-small input-sm">
                                            <option value="">Select...</option>
                                            <option value="Cancel">Cancel</option>
                                            <option value="Cancel">Hold</option>
                                            <option value="Cancel">On Hold</option>
                                            <option value="Close">Close</option>
                                        </select>
                                        <button class="btn btn-sm green table-group-action-submit">
                                            <i class="fa fa-check"></i> Submit</button>
                                    </div>
                                    <table class="table table-striped table-bordered table-hover table-checkable" id="datatable_ajax">
                                        <thead>
                                        <tr role="row" class="heading">
                                            <th width="2%">
                                                <label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">
                                                    <input type="checkbox" class="group-checkable" data-set="#sample_2 .checkboxes" />
                                                    <span></span>
                                                </label>
                                            </th>
                                            <th width="5%"> Record&nbsp;# </th>
                                            <th width="15%"> Date </th>
                                            <th width="200"> Customer </th>
                                            <th width="10%"> Ship&nbsp;To </th>
                                            <th width="10%"> Price </th>
                                            <th width="10%"> Amount </th>
                                            <th width="10%"> Status </th>
                                            <th width="10%"> Actions </th>
                                        </tr>
                                        <tr role="row" class="filter">
                                            <td> </td>
                                            <td>
                                                <input type="text" class="form-control form-filter input-sm" name="order_id"> </td>
                                            <td>
                                                <div class="input-group date date-picker margin-bottom-5" data-date-format="dd/mm/yyyy">
                                                    <input type="text" class="form-control form-filter input-sm" readonly name="order_date_from" placeholder="From">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-sm default" type="button">
                                                                        <i class="fa fa-calendar"></i>
                                                                    </button>
                                                                </span>
                                                </div>
                                                <div class="input-group date date-picker" data-date-format="dd/mm/yyyy">
                                                    <input type="text" class="form-control form-filter input-sm" readonly name="order_date_to" placeholder="To">
                                                                <span class="input-group-btn">
                                                                    <button class="btn btn-sm default" type="button">
                                                                        <i class="fa fa-calendar"></i>
                                                                    </button>
                                                                </span>
                                                </div>
                                            </td>
                                            <td>
                                                <input type="text" class="form-control form-filter input-sm" name="order_customer_name"> </td>
                                            <td>
                                                <input type="text" class="form-control form-filter input-sm" name="order_ship_to"> </td>
                                            <td>
                                                <div class="margin-bottom-5">
                                                    <input type="text" class="form-control form-filter input-sm" name="order_price_from" placeholder="From" /> </div>
                                                <input type="text" class="form-control form-filter input-sm" name="order_price_to" placeholder="To" /> </td>
                                            <td>
                                                <div class="margin-bottom-5">
                                                    <input type="text" class="form-control form-filter input-sm margin-bottom-5 clearfix" name="order_quantity_from" placeholder="From" /> </div>
                                                <input type="text" class="form-control form-filter input-sm" name="order_quantity_to" placeholder="To" /> </td>
                                            <td>
                                                <select name="order_status" class="form-control form-filter input-sm">
                                                    <option value="">Select...</option>
                                                    <option value="pending">Pending</option>
                                                    <option value="closed">Closed</option>
                                                    <option value="hold">On Hold</option>
                                                    <option value="fraud">Fraud</option>
                                                </select>
                                            </td>
                                            <td>
                                                <div class="margin-bottom-5">
                                                    <button class="btn btn-sm green btn-outline filter-submit margin-bottom">
                                                        <i class="fa fa-search"></i> Search</button>
                                                </div>
                                                <button class="btn btn-sm red btn-outline filter-cancel">
                                                    <i class="fa fa-times"></i> Reset</button>
                                            </td>
                                        </tr>
                                        </thead>
                                        <tbody> </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- End: life time stats -->
                    </div>
                </div>
            </div>
            <!-- END CONTENT BODY -->
        </div>
        <!-- END CONTENT -->
        <!-- BEGIN QUICK SIDEBAR -->


    </div>
    <!-- END CONTAINER -->

</div>


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
<script src="__ASSET__/global/scripts/datatable.js" type="text/javascript"></script>
<script src="__ASSET__/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="__ASSET__/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
<script src="__ASSET__/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="__ASSET__/global/scripts/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="__ASSET__/pages/scripts/table-datatables-buttons.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="__ASSET__/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
<script src="__ASSET__/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
<script src="__ASSET__/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<script src="__ASSET__/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
</body>

</html>