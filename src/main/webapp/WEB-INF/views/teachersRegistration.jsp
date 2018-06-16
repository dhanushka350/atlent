<%--
  Created by IntelliJ IDEA.
  User: Akvasoft
  Date: 18/03/2018
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <!-- META SECTION -->
    <title>Teachers Registration</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="icon" href="favicon.ico" type="image/x-icon"/>
    <!-- END META SECTION -->

    <!-- CSS INCLUDE -->
    <link rel="stylesheet" type="text/css" id="theme" href="/css/theme-default.css"/>
    <!-- EOF CSS INCLUDE -->
    <style>
        body {
            max-height: 1000px;
        }
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
        <!-- END X-NAVIGATION VERTICAL -->

        <!-- START BREADCRUMB -->
        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="#">Accounts</a></li>
            <li><a href="#">Teachers</a></li>
            <li class="active">New Profile</li>
        </ul>
        <!-- END BREADCRUMB -->

        <!-- PAGE TITLE -->
        <div class="page-title">
            <h2><span class="fa fa-arrow-circle-o-left"></span>Profile</h2>
        </div>
        <!-- END PAGE TITLE -->

        <!-- PAGE CONTENT WRAPPER -->
        <div class="page-content-wrap">

            <div class="row">
                <div class="col-md-12">

                    <!-- START SUCCESS PANEL -->
                    <div class="panel panel-success">
                        <div class="panel-body">
                            <form id="validateParent" role="form" class="form-horizontal"
                                  action="javascript:alert('Form #validate submited');">
                                <div class="form-group">
                                    <label class="col-md-3 control-label">NIC:</label>
                                    <div class="col-md-6    ">
                                        <input type="text"
                                               class="validate[required,custom[integer],min[18],max[120]] form-control"/>
                                        <span class="help-block">Required, 9 Numbers with V or X</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Select Class </label>
                                    <div class="col-md-2">
                                        <select multiple class="form-control select" data-live-search="true">
                                            <option>Option 1</option>
                                            <option>Option 2</option>
                                            <option>Option 3</option>
                                            <option>Option 4</option>
                                            <option>Option 5</option>
                                        </select>
                                    </div>
                                    <label class="col-md-2 control-label">Select Subject</label>
                                    <div class="col-md-2">
                                        <select multiple class="form-control select" data-live-search="true">
                                            <option>Option 1</option>
                                            <option>Option 2</option>
                                            <option>Option 3</option>
                                            <option>Option 4</option>
                                            <option>Option 5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Name:</label>
                                    <div class="col-md-6">
                                        <input type="text"
                                               class="validate[required,maxSize[8]] form-control"/>
                                        <span class="help-block">Required, max size = 250</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Occupation:</label>
                                    <div class="col-md-6">
                                        <input type="text"
                                               class="validate[required,maxSize[500]] form-control"/>
                                        <span class="help-block">Required, max size = 500</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Gender:</label>
                                    <div class="col-md-6">
                                        <select class="validate[required] select" id="formGender">
                                            <option value="">Choose option</option>
                                            <option value="1">Male</option>
                                            <option value="2">Female</option>
                                            <option value="3">Other</option>
                                        </select>
                                        <span class="help-block">Required</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Mobile NO:</label>
                                    <div class="col-md-6">
                                        <input type="text"
                                               class="validate[required,creditCard] form-control"/>
                                        <span class="help-block">Required</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Email:</label>
                                    <div class="col-md-6">
                                        <input type="text"
                                               class="validate[required,maxSize[8]] form-control"/>
                                        <span class="help-block">Required, max size = 250</span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-md-3 control-label">Address:</label>
                                    <div class="col-md-6">
                                        <textarea class="form-control" rows="5"></textarea>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-3 col-sm-offset-6 col-md-offset-6 col-lg-offset-6">
                                        <button class="btn btn-primary btn-block">Submit</button>
                                    </div>
                                </div>
                                <%--<div class="form-group">--%>
                                <%--<div class="col-md-12">--%>
                                <%--<label class="checkbox">--%>
                                <%--<label>--%>
                                <%--<input type="checkbox" class="validate[required]"--%>
                                <%--name="terms" value="1"/> Yes, I accept your terms and--%>
                                <%--conditions.--%>
                                <%--</label>--%>
                                <%--</label>--%>
                                <%--</div>--%>
                                <%--</div>--%>
                                <%--<div class="btn-group pull-right">--%>
                                <%--<button class="btn btn-primary" type="button"--%>
                                <%--onClick="$('#validate').validationEngine('hide');">Hide prompts--%>
                                <%--</button>--%>
                                <%--<button class="btn btn-primary" type="submit">Submit</button>--%>
                                <%--</div>--%>
                            </form>
                        </div>
                    </div>
                    <!-- END SUCCESS PANEL -->

                </div>
            </div>
        </div>
        <!-- END PAGE CONTENT WRAPPER -->
    </div>
    <!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->

<!-- MESSAGE BOX-->
<div class="message-box animated fadeIn" data-sound="alert" id="mb-remove-row">
    <div class="mb-container">
        <div class="mb-middle">
            <div class="mb-title"><span class="fa fa-times"></span> Remove <strong>Data</strong> ?</div>
            <div class="mb-content">
                <p>Are you sure you want to remove this row?</p>
                <p>Press Yes if you sure.</p>
            </div>
            <div class="mb-footer">
                <div class="pull-right">
                    <button class="btn btn-success btn-lg mb-control-yes">Yes</button>
                    <button class="btn btn-default btn-lg mb-control-close">No</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END MESSAGE BOX-->

<!-- MESSAGE BOX-->
<div class="message-box animated fadeIn" data-sound="alert" id="mb-signout">
    <div class="mb-container">
        <div class="mb-middle">
            <div class="mb-title"><span class="fa fa-sign-out"></span> Log <strong>Out</strong> ?</div>
            <div class="mb-content">
                <p>Are you sure you want to log out?</p>
                <p>Press No if youwant to continue work. Press Yes to logout current user.</p>
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

<!-- START THIS PAGE PLUGINS-->
<script type='text/javascript' src='/js/plugins/icheck/icheck.min.js'></script>
<script type="text/javascript" src="/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>

<script type="text/javascript" src="/js/plugins/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/tableExport.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/jquery.base64.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/html2canvas.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/jspdf/libs/sprintf.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/jspdf/jspdf.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/jspdf/libs/base64.js"></script>
<script type="text/javascript" src="/js/plugins/bootstrap/bootstrap-select.js"></script>
<!-- END THIS PAGE PLUGINS-->

<!-- START TEMPLATE -->
<script type="text/javascript" src="/js/settings.js"></script>

<script type="text/javascript" src="/js/plugins.js"></script>
<script type="text/javascript" src="/js/actions.js"></script>
<%--<script type="text/javascript" src="/js/test.js"></script>--%>
<!-- END TEMPLATE -->
<!-- END SCRIPTS -->
</body>
</html>
