<%--
  Created by IntelliJ IDEA.
  User: Akvasoft
  Date: 18/03/2018
  Time: 09:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <!-- META SECTION -->
    <title>All Students</title>
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
            <li><a href="#">Students</a></li>
            <li class="active">All Students</li>
        </ul>
        <!-- END BREADCRUMB -->

        <!-- PAGE TITLE -->
        <div class="page-title">
            <h2><span class="fa fa-arrow-circle-o-left"></span> All Students</h2>
        </div>
        <!-- END PAGE TITLE -->

        <!-- PAGE CONTENT WRAPPER -->
        <div class="page-content-wrap">


            <div class="row">
                <div class="col-md-12">

                    <!-- START DATATABLE EXPORT -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">All Registered</h3>
                            <div class="btn-group pull-right">
                                <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i
                                        class="fa fa-bars"></i> Export Data
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a href="#"
                                           onClick="$('#txt_student').tableExport({type:'json',escape:'false'});"><img
                                            src='/img/icons/json.png' width="24"/> JSON</a></li>
                                    <li><a href="#"
                                           onClick="$('#txt_student').tableExport({type:'json',escape:'false',ignoreColumn:'[2,3]'});"><img
                                            src='/img/icons/json.png' width="24"/> JSON (ignoreColumn)</a></li>
                                    <li><a href="#"
                                           onClick="$('#txt_student').tableExport({type:'json',escape:'true'});"><img
                                            src='/img/icons/json.png' width="24"/> JSON (with Escape)</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#"
                                           onClick="$('#txt_student').tableExport({type:'xml',escape:'false'});"><img
                                            src='/img/icons/xml.png' width="24"/> XML</a></li>
                                    <li><a href="#" onClick="$('#txt_student').tableExport({type:'sql'});"><img
                                            src='/img/icons/sql.png' width="24"/> SQL</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#"
                                           onClick="$('#txt_student').tableExport({type:'csv',escape:'false'});"><img
                                            src='/img/icons/csv.png' width="24"/> CSV</a></li>
                                    <li><a href="#"
                                           onClick="$('#txt_student').tableExport({type:'txt',escape:'false'});"><img
                                            src='/img/icons/txt.png' width="24"/> TXT</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#"
                                           onClick="$('#txt_student').tableExport({type:'excel',escape:'false'});"><img
                                            src='/img/icons/xls.png' width="24"/> XLS</a></li>
                                    <li><a href="#"
                                           onClick="$('#txt_student').tableExport({type:'doc',escape:'false'});"><img
                                            src='/img/icons/word.png' width="24"/> Word</a></li>
                                    <li><a href="#"
                                           onClick="$('#txt_student').tableExport({type:'powerpoint',escape:'false'});"><img
                                            src='/img/icons/ppt.png' width="24"/> PowerPoint</a></li>
                                    <li class="divider"></li>
                                    <li><a href="#"
                                           onClick="$('#txt_student').tableExport({type:'png',escape:'false'});"><img
                                            src='/img/icons/png.png' width="24"/> PNG</a></li>
                                    <li><a href="#"
                                           onClick="$('#txt_student').tableExport({type:'pdf',escape:'false'});"><img
                                            src='/img/icons/pdf.png' width="24"/> PDF</a></li>
                                </ul>
                            </div>

                        </div>
                        <div class="panel-body">
                            <table id="txt_student" class="table datatable">
                                <thead>
                                <tr>
                                    <th style="width: 10px;">#</th>
                                    <th style="width: 300px;">Name</th>
                                    <th style="width: 70px;">Nic</th>
                                    <th style="width: 100px;">Branch</th>
                                    <th style="width: 200px;">Address</th>
                                    <th style="width: 50px;">Mobile No</th>
                                    <th style="width: 20px;">Action</th>
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
                    <button class="btn btn-success btn-lg mb-control-yes" onclick="logout();">Yes</button>
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
                    <a href="/logout" class="btn btn-success btn-lg">Yes</a>
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
<!-- END THIS PAGE PLUGINS-->

<!-- START TEMPLATE -->
<script type="text/javascript" src="/js/settings.js"></script>

<script type="text/javascript" src="/js/plugins.js"></script>
<script type="text/javascript" src="/js/actions.js"></script>
<script type="text/javascript" src="/js/app_js/Student.js"></script>

<!-- END TEMPLATE -->
<!-- END SCRIPTS -->
</body>
</html>






