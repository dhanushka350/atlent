<%--
  Created by IntelliJ IDEA.
  User: Akvasoft
  Date: 19/03/2018
  Time: 12:35
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- META SECTION -->
    <title>Staff Members</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="icon" href="favicon.ico" type="image/x-icon"/>
    <!-- END META SECTION -->

    <!-- CSS INCLUDE -->
    <link rel="stylesheet" type="text/css" id="theme" href="/css/theme-default.css"/>
    <!-- EOF CSS INCLUDE -->

</head>
<body onload="Staff.allBranches();Staff.getAllMembers();">
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
            <li><a href="#">Staff Members</a></li>
            <li class="active">Management</li>
        </ul>
        <!-- END BREADCRUMB -->

        <!-- PAGE TITLE -->
        <div class="page-title">
            <h2><span class="fa fa-users"></span> Staff Member's Information
                <small>Profiles</small>
            </h2>
        </div>
        <!-- END PAGE TITLE -->

        <!-- PAGE CONTENT WRAPPER -->
        <div class="page-content-wrap">

            <div class="row">
                <div class="col-md-12">

                    <div class="panel panel-default">
                        <div class="panel-body">
                            <p>Use search to find member. You can search by: member nic </p>
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <div class="col-md-8">
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <span class="fa fa-search"></span>
                                            </div>
                                            <input type="text" class="form-control"
                                                   placeholder="Who are you looking for?"/>
                                            <div class="input-group-btn">
                                                <button class="btn btn-primary">Search</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <button class="btn btn-success btn-block" disabled="disabled"
                                                href="/new/student"><span class="fa fa-plus"></span> Add new member
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>

            <div class="row">
                <form id="validateParent" role="form" class="form-horizontal">
                    <div class="form-group">
                        <label class="col-md-3 control-label">NIC:</label>
                        <div class="col-md-6">
                            <input type="text" id="txt_nic"
                                   class="form-control"/>
                            <span class="help-block">Required, 9 Numbers with V or X</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Branch</label>
                        <div class="col-md-6">
                            <select class="form-control select" id="select_branch">

                            </select>
                            <span class="help-block">Select Working branch</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Name:</label>
                        <div class="col-md-6">
                            <input type="text" id="txt_name"
                                   class="validate[required,maxSize[8]] form-control"/>
                            <span class="help-block">Required, max size = 500</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Password:</label>
                        <div class="col-md-6">
                            <input type="password"
                                   class="validate[required,minSize[5],maxSize[10]] form-control"
                                   id="password"/>
                            <span class="help-block">Be a minimum of eight (8) characters in length.</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Confirm:</label>
                        <div class="col-md-6">
                            <input type="password"
                                   class="validate[required,equals[password]] form-control" id="confirm_pass"/>
                            <span class="help-block">Automatically Matched By The System</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Mobile NO:</label>
                        <div class="col-md-6">
                            <input type="text"
                                   class="validate[required] form-control"
                                   id="txt_mobile"/>
                            <span class="help-block">Required</span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Address:</label>
                        <div class="col-md-6">
                            <textarea class="form-control" rows="5" id="txt_address"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-3 col-sm-offset-6 col-md-offset-6 col-lg-offset-6">
                            <button class="btn btn-primary btn-block" id="btn_staff">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="row">
                <!-- START DATATABLE EXPORT -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Staff Members</h3>
                        <div class="btn-group pull-right">
                            <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i
                                    class="fa fa-bars"></i> Export Data
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="#"
                                       onClick="$('#tbl_members').tableExport({type:'json',escape:'false'});"><img
                                        src='/img/icons/json.png' width="24"/> JSON</a></li>
                                <li><a href="#"
                                       onClick="$('#tbl_members').tableExport({type:'json',escape:'false',ignoreColumn:'[2,3]'});"><img
                                        src='/img/icons/json.png' width="24"/> JSON (ignoreColumn)</a></li>
                                <li><a href="#"
                                       onClick="$('#tbl_members').tableExport({type:'json',escape:'true'});"><img
                                        src='/img/icons/json.png' width="24"/> JSON (with Escape)</a></li>
                                <li class="divider"></li>
                                <li><a href="#"
                                       onClick="$('#tbl_members').tableExport({type:'xml',escape:'false'});"><img
                                        src='/img/icons/xml.png' width="24"/> XML</a></li>
                                <li><a href="#" onClick="$('#tbl_members').tableExport({type:'sql'});"><img
                                        src='/img/icons/sql.png' width="24"/> SQL</a></li>
                                <li class="divider"></li>
                                <li><a href="#"
                                       onClick="$('#tbl_members').tableExport({type:'csv',escape:'false'});"><img
                                        src='/img/icons/csv.png' width="24"/> CSV</a></li>
                                <li><a href="#"
                                       onClick="$('#tbl_members').tableExport({type:'txt',escape:'false'});"><img
                                        src='/img/icons/txt.png' width="24"/> TXT</a></li>
                                <li class="divider"></li>
                                <li><a href="#"
                                       onClick="$('#tbl_members').tableExport({type:'excel',escape:'false'});"><img
                                        src='/img/icons/xls.png' width="24"/> XLS</a></li>
                                <li><a href="#"
                                       onClick="$('#tbl_members').tableExport({type:'doc',escape:'false'});"><img
                                        src='/img/icons/word.png' width="24"/> Word</a></li>
                                <li><a href="#"
                                       onClick="$('#tbl_members').tableExport({type:'powerpoint',escape:'false'});"><img
                                        src='/img/icons/ppt.png' width="24"/> PowerPoint</a></li>
                                <li class="divider"></li>
                                <li><a href="#"
                                       onClick="$('#tbl_members').tableExport({type:'png',escape:'false'});"><img
                                        src='/img/icons/png.png' width="24"/> PNG</a></li>
                                <li><a href="#"
                                       onClick="$('#tbl_members').tableExport({type:'pdf',escape:'false'});"><img
                                        src='/img/icons/pdf.png' width="24"/> PDF</a></li>
                            </ul>
                        </div>

                    </div>
                    <div class="panel-body">
                        <table id="tbl_members" class="table datatable">
                            <thead>
                            <tr>
                                <th style="color: black;font-weight: bold">#</th>
                                <th style="color: black;font-weight: bold">Name</th>
                                <th style="color: black;font-weight: bold">Nic</th>
                                <th style="color: black;font-weight: bold">Branch</th>
                                <th style="color: black;font-weight: bold">Mobile</th>
                            </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>

                    </div>
                </div>
                <!-- END DATATABLE EXPORT -->
            </div>
        </div>
        <!-- END PAGE CONTENT WRAPPER -->
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
<script type='text/javascript' src='/js/plugins/icheck/icheck.min.js'></script>
<script type="text/javascript" src="/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
<script type="text/javascript" src="/js/plugins/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/tableExport.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/jquery.base64.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/html2canvas.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/jspdf/libs/sprintf.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/jspdf/jspdf.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/jspdf/libs/base64.js"></script>
<script type='text/javascript' src='/js/plugins/bootstrap/bootstrap-select.js'></script>
<!-- START THIS PAGE PLUGINS-->
<script type='text/javascript' src='/js/plugins/icheck/icheck.min.js'></script>
<script type="text/javascript" src="/js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
<!-- END THIS PAGE PLUGINS-->

<!-- START TEMPLATE -->
<script type="text/javascript" src="/js/settings.js"></script>

<script type="text/javascript" src="/js/plugins.js"></script>
<script type="text/javascript" src="/js/actions.js"></script>
<script type="text/javascript" src="/js/app_js/SraffMember.js"></script>
<!-- END TEMPLATE -->

<!-- END SCRIPTS -->
</body>
</html>






