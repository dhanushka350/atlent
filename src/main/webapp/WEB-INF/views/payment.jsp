<%--
  Created by IntelliJ IDEA.
  User: Akvasoft
  Date: 18/03/2018
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <!-- META SECTION -->
    <title>Continue Payments</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="icon" href="favicon.ico" type="image/x-icon"/>
    <!-- END META SECTION -->

    <!-- CSS INCLUDE -->
    <link rel="stylesheet" type="text/css" id="theme" href="/css/theme-default.css"/>
    <!-- EOF CSS INCLUDE -->
    <style>

    </style>
</head>
<body>
<!-- START PAGE CONTAINER -->
<div class="page-container">

    <!-- START PAGE SIDEBAR -->
    <div class="page-sidebar">
        <jsp:include page="navigator.jsp"/>
    </div>
    <!-- END PAGE SIDEBAR -->


    <!-- PAGE CONTENT -->
    <div class="page-content">

        <!-- START X-NAVIGATION VERTICAL -->
        <jsp:include page="top_nav.jsp"/>
        <!-- END X-NAVIGATION VERTICAL --> <!-- START BREADCRUMB -->

        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="#">Accounts</a></li>
            <li><a href="#">Students</a></li>
            <li class="active">Payments</li>
        </ul>
        <!-- END BREADCRUMB -->

        <!-- PAGE TITLE -->
        <div class="page-title">
            <h2><span class="fa fa-arrow-circle-o-left"></span> Payments</h2>
        </div>
        <!-- END PAGE TITLE -->

        <!-- PAGE CONTENT WRAPPER -->
        <div class="page-content-wrap">

            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title"></h3>
                        </div>
                        <div class="panel-body">
                            <form role="form" class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-md-3 control-label">NIC :</label>
                                    <div class="col-md-6    ">
                                        <input type="text"
                                               class="validate[required,min[10],max[10]] form-control"
                                               id="txt_nic"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Name :</label>
                                    <div class="col-md-6">
                                        <input type="text"
                                               class="validate[required,custom[double]] form-control"
                                               id="txt_student_name" disabled="disabled"
                                               style="color: black"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Registration Fee :</label>
                                    <div class="col-md-6">
                                        <input type="text"
                                               class="validate[required,custom[double]] form-control"
                                               id="txt_regi_fee" disabled="disabled"
                                               style="color: black"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Registered Packages : </label>
                                    <div class="col-md-6">
                                        <select class="form-control select" data-live-search="true"
                                                id="select_license_packages">

                                        </select>
                                    </div>
                                </div>
                                <div class="panel panel-default form-group">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Payment Information</h3>
                                    </div>
                                    <div class="panel-body">
                                        <p> >> <code>All Payments</code> << </p>
                                        <table class="table table-hover" id="tbl_payment_history">
                                            <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Date</th>
                                                <th>Full_Payment(with reg fee)</th>
                                                <th>Paid_Amount</th>
                                                <th>Balance_Payment</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- START SUCCESS PANEL -->
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">Continue Payment</h3>
                        </div>
                        <div class="panel-body">
                            <form role="form" class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-md-3 control-label">License Type Price :</label>
                                    <div class="col-md-6">
                                        <input type="text"
                                               class="form-control" style="color: black" id="txt_license_type_price"
                                               disabled="disabled"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Full Payment :</label>
                                    <div class="col-md-6">
                                        <input type="text"
                                               class="form-control" style="color: black" id="txt_full_payment"
                                               disabled="disabled"/>
                                        <span class="help-block">with registration fee</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Paid Amount :</label>
                                    <div class="col-md-6">
                                        <input type="text"
                                               class="form-control" id="txt_paid_amount"disabled="disabled"style="color: black"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Amount To Pay :</label>
                                    <div class="col-md-6">
                                        <input type="text"
                                               class="form-control" id="txt_to_pay"disabled="disabled"style="color: black"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Amount :</label>
                                    <div class="col-md-6">
                                        <input type="text"
                                               class="form-control" id="txt_total"style="color: black"/>
                                        <span class="help-block" id="balance_for_customer">Required</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Balance Payment :</label>
                                    <div class="col-md-6">
                                        <input type="text"
                                               class="form-control" disabled="disabled" style="color: black"
                                               id="txt_balance_payment"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="panel-footer">
                            <button class="btn btn-primary pull-right" id="btn_add_payment">Add Payment</button>
                        </div>
                    </div>

                    <!-- END SUCCESS PANEL -->

                </div>

            </div>

        </div>
        <!-- PAGE CONTENT WRAPPER -->
    </div>
    <!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->

<!-- MESSAGE BOX-->
<div class="message-box animated fadeIn" data-sound="alert" id="mb-signout">
    <div class="mb-container">
        <div class="mb-middle">
            <div class="mb-title"><span class="fa fa-sign-out"></span> Log <strong>Out</strong> ?</div>
            <div class="mb-content">
                <p>Are you sure you want to log out?</p>
                <p>Press No if youwant to continue work. Press Yes to logout current userDto.</p>
            </div>
            <div class="mb-footer">
                <div class="pull-right">
                    <a href="pages-login.html" class="btn btn-success btn-lg">Yes</a>
                    <button class="btn btn-default btn-lg mb-control-close">No</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END MESSAGE BOX-->

<!-- START PRELOADS -->
<audio id="audio-alert" src="/audio/alert.mp3" preload="auto"></audio>
<audio id="audio-fail" src="/audio/fail.mp3" preload="auto"></audio>
<!-- END PRELOADS -->

<!-- START SCRIPTS -->
<!-- START PLUGINS -->
<script type="text/javascript" src="/js/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="/js/plugins/jquery/jquery-ui.min.js"></script>
<script type="text/javascript" src="/js/plugins/bootstrap/bootstrap.min.js"></script>
<!-- END PLUGINS -->

<!-- THIS PAGE PLUGINS -->
<script type='text/javascript' src='/js/plugins/icheck/icheck.min.js'></script>
<script type="text/javascript" src="/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>

<script type="text/javascript" src="/js/plugins/smartwizard/jquery.smartWizard-2.0.min.js"></script>
<script type="text/javascript" src="/js/plugins/jquery-validation/jquery.validate.js"></script>
<script type='text/javascript' src='/js/plugins/icheck/icheck.min.js'></script>
<script type="text/javascript" src="/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>

<script type='text/javascript' src='/js/plugins/bootstrap/bootstrap-datepicker.js'></script>
<script type='text/javascript' src='/js/plugins/bootstrap/bootstrap-select.js'></script>

<script type='text/javascript' src='/js/plugins/validationengine/languages/jquery.validationEngine-en.js'></script>
<script type='text/javascript' src='/js/plugins/validationengine/jquery.validationEngine.js'></script>
<script type="text/javascript" src="/js/plugins/tagsinput/jquery.tagsinput.min.js"></script>
<script type='text/javascript' src='/js/plugins/jquery-validation/jquery.validate.js'></script>
<script type="text/javascript" src="/js/plugins/bootstrap/bootstrap-file-input.js"></script>
<script type='text/javascript' src='/js/plugins/maskedinput/jquery.maskedinput.min.js'></script>
<!-- END PAGE PLUGINS -->
<script type='text/javascript' src='/js/plugins/noty/jquery.noty.js'></script>
<script type='text/javascript' src='/js/plugins/noty/layouts/topCenter.js'></script>
<script type='text/javascript' src='/js/plugins/noty/layouts/topLeft.js'></script>
<script type='text/javascript' src='/js/plugins/noty/layouts/topRight.js'></script>
<script type='text/javascript' src='/js/plugins/noty/themes/default.js'></script>
<!-- START TEMPLATE -->
<script type="text/javascript" src="/js/settings.js"></script>

<script type="text/javascript" src="/js/plugins.js"></script>
<script type="text/javascript" src="/js/actions.js"></script>
<script type="text/javascript" src="/js/app_js/Payment.js"></script>
<!-- END TEMPLATE -->

<!-- END SCRIPTS -->

</body>
</html>






