<%--
  Created by IntelliJ IDEA.
  User: Akvasoft
  Date: 21/06/2018
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- META SECTION -->
    <title>Exam Schedule</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="icon" href="favicon.ico" type="image/x-icon"/>
    <!-- END META SECTION -->

    <!-- CSS INCLUDE -->
    <link rel="stylesheet" type="text/css" id="theme" href="/css/theme-default.css"/>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet"/>
    <!-- EOF CSS INCLUDE -->
</head>
<body onload="Exam.allExams();">
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
            <li><a href="#">Schedules</a></li>
            <li class="active"><a href="#">Exam Schedule</a></li>
        </ul>
        <!-- END BREADCRUMB -->

        <!-- PAGE TITLE -->
        <div class="page-title">
            <h2><span class="fa fa-calendar"></span> Schedules Information
                <small>(All)</small>
            </h2>
        </div>
        <!-- END PAGE TITLE -->

        <!-- PAGE CONTENT WRAPPER -->
        <div class="page-content-wrap">

            <div class="row">
                <div class="col-md-12">

                    <div class="panel panel-default">
                        <div class="panel-body">
                            <p>Use search to find schedules. You can search by: student nic or date
                            </p>
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <div class="col-md-5">
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <span class="fa fa-search"></span>
                                            </div>
                                            <input type="text" class="form-control"
                                                   placeholder="you are looking for?"/>
                                            <div class="input-group-btn">
                                                <button class="btn btn-primary">Search</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-7">
                                        <div class="form-group">
                                            <div class="col-md-4">
                                                <input type="text"
                                                       class="validate[required,custom[integer],min[18],max[120]] form-control"
                                                       id="txt_new_exam" placeholder="DATE"/>
                                                <span class="help-block">Required, format YYYY-MM-DD</span>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="text"
                                                       class="validate[required,custom[integer],min[18],max[120]] form-control"
                                                       id="txt_new_time" placeholder="TIME"/>
                                                <span class="help-block">Required, format hh-mm am/pm</span>
                                            </div>
                                            <div class="col-md-4">
                                                <button type="button" class="btn btn-success mb-control col-md-6"
                                                        id="btn_save_exam">Add Exam
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <!-- schedule table -->
                    <div class="panel-body">
                        <form id="validate" role="form" class="form-horizontal"
                              action="javascript:alert('Form #validate submited');">
                            <div class="form-group">
                                <label class="col-md-3 control-label">Exam Date :</label>
                                <div class="col-md-3">
                                    <select id="select_exam">

                                    </select>
                                </div>
                                <label class="col-md-3 control-label">NIC:</label>
                                <div class="col-md-3">
                                    <input type="text"
                                           class="validate[required,custom[integer],min[18],max[120]] form-control"
                                           id="txt_nic"/>
                                    <span class="help-block">Required, 9 Numbers with V or X</span>
                                </div>
                            </div>
                        </form>
                        <br>
                        <form role="form" class="form-horizontal">
                            <div class="form-group">
                                <label class="col-md-3 control-label">Exam Type :</label>
                                <div class="col-md-3">
                                    <select class="validate[required] select" id="select_exam_states">
                                        <option value="Pending">Pending</option>
                                        <option value="Ongoing">Ongoing</option>
                                        <option value="Finished">Finished</option>
                                    </select>
                                    <span class="help-block"></span>
                                </div>
                                <label class="col-md-3 control-label">Name:</label>
                                <div class="col-md-3">
                                    <input type="text"
                                           class="validate[required,maxSize[8]] form-control" id="txt_name"
                                           disabled="disabled"/>
                                    <span class="help-block">No records for this nic</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">States :</label>
                                <div class="col-md-3">
                                    <select class="validate[required] select" id="select_states">
                                        <option value="Pending">Pass</option>
                                        <option value="Ongoing">Failed</option>
                                        <option value="Finished">Result Pending</option>
                                    </select>
                                    <span class="help-block"></span>
                                </div>
                                <label class="col-md-3 control-label">Date:</label>
                                <div class="col-md-3">
                                    <input type="text"
                                           class="validate[required,custom[integer],min[18],max[120]] form-control"
                                           id="txt_age" disabled="disabled"/>
                                    <span class="help-block">Exam will held on this day </span>
                                </div>

                            </div>
                            <div class="form-group">
                                <div class="col-md-6"></div>
                                <label class="col-md-3 control-label">Time:</label>
                                <div class="col-md-3    ">
                                    <input type="text"
                                           class="validate[required,custom[integer],min[18],max[120]] form-control"
                                           id="txt_time" disabled="disabled"/>
                                    <span class="help-block">Format HH-MM-MM</span>
                                    <button type="button" class="btn btn-success mb-control col-md-6 col-md-offset-6"
                                            id="btn_save_exam_schedule">Add Schedule
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- END schedule table -->
                </div>

            </div>
            <!-- END PAGE CONTENT WRAPPER -->
            <div class="row">
                <!-- START DATATABLE EXPORT -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Exam Dates</h3>
                        <div class="btn-group pull-right">
                            <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i
                                    class="fa fa-bars"></i> Export Data
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="#"
                                       onClick="$('#customers2').tableExport({type:'json',escape:'false'});"><img
                                        src='/img/icons/json.png' width="24"/> JSON</a></li>
                                <li><a href="#"
                                       onClick="$('#customers2').tableExport({type:'json',escape:'false',ignoreColumn:'[2,3]'});"><img
                                        src='/img/icons/json.png' width="24"/> JSON (ignoreColumn)</a></li>
                                <li><a href="#"
                                       onClick="$('#customers2').tableExport({type:'json',escape:'true'});"><img
                                        src='/img/icons/json.png' width="24"/> JSON (with Escape)</a></li>
                                <li class="divider"></li>
                                <li><a href="#"
                                       onClick="$('#customers2').tableExport({type:'xml',escape:'false'});"><img
                                        src='/img/icons/xml.png' width="24"/> XML</a></li>
                                <li><a href="#" onClick="$('#customers2').tableExport({type:'sql'});"><img
                                        src='/img/icons/sql.png' width="24"/> SQL</a></li>
                                <li class="divider"></li>
                                <li><a href="#"
                                       onClick="$('#customers2').tableExport({type:'csv',escape:'false'});"><img
                                        src='/img/icons/csv.png' width="24"/> CSV</a></li>
                                <li><a href="#"
                                       onClick="$('#customers2').tableExport({type:'txt',escape:'false'});"><img
                                        src='/img/icons/txt.png' width="24"/> TXT</a></li>
                                <li class="divider"></li>
                                <li><a href="#"
                                       onClick="$('#customers2').tableExport({type:'excel',escape:'false'});"><img
                                        src='/img/icons/xls.png' width="24"/> XLS</a></li>
                                <li><a href="#"
                                       onClick="$('#customers2').tableExport({type:'doc',escape:'false'});"><img
                                        src='/img/icons/word.png' width="24"/> Word</a></li>
                                <li><a href="#"
                                       onClick="$('#customers2').tableExport({type:'powerpoint',escape:'false'});"><img
                                        src='/img/icons/ppt.png' width="24"/> PowerPoint</a></li>
                                <li class="divider"></li>
                                <li><a href="#"
                                       onClick="$('#customers2').tableExport({type:'png',escape:'false'});"><img
                                        src='/img/icons/png.png' width="24"/> PNG</a></li>
                                <li><a href="#"
                                       onClick="$('#customers2').tableExport({type:'pdf',escape:'false'});"><img
                                        src='/img/icons/pdf.png' width="24"/> PDF</a></li>
                            </ul>
                        </div>

                    </div>
                    <div class="panel-body">
                        <table id="customers2" class="table datatable">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Nic</th>
                                <th>Exam Date</th>
                                <th>Exam Type</th>
                                <th>Exam States</th>
                                <th>Result</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Tiger Nixon</td>
                                <td>961758623v</td>
                                <td>2015-10-23</td>
                                <td>bikes only</td>
                                <td>finished</td>
                                <td>pass</td>
                            </tr>
                            <tr>
                                <td>Garrett Winters</td>
                                <td>586475321v</td>
                                <td>2018-08-10</td>
                                <td>sahallu</td>
                                <td>pending</td>
                                <td>pending</td>
                            </tr>
                            <tr>
                                <td>Ashton Cox</td>
                                <td>698745632v</td>
                                <td>2018-06-22</td>
                                <td>bara</td>
                                <td>finished</td>
                                <td>failed</td>
                            </tr>
                            <tr>
                                <td>Tiger Nixon</td>
                                <td>961758623v</td>
                                <td>2015-10-23</td>
                                <td>bikes only</td>
                                <td>finished</td>
                                <td>pass</td>
                            </tr>
                            <tr>
                                <td>Garrett Winters</td>
                                <td>586475321v</td>
                                <td>2018-08-10</td>
                                <td>sahallu</td>
                                <td>pending</td>
                                <td>pending</td>
                            </tr>
                            <tr>
                                <td>Ashton Cox</td>
                                <td>698745632v</td>
                                <td>2018-06-22</td>
                                <td>bara</td>
                                <td>finished</td>
                                <td>failed</td>
                            </tr>
                            <tr>
                                <td>Tiger Nixon</td>
                                <td>961758623v</td>
                                <td>2015-10-23</td>
                                <td>bikes only</td>
                                <td>finished</td>
                                <td>pass</td>
                            </tr>
                            <tr>
                                <td>Garrett Winters</td>
                                <td>586475321v</td>
                                <td>2018-08-10</td>
                                <td>sahallu</td>
                                <td>pending</td>
                                <td>pending</td>
                            </tr>
                            <tr>
                                <td>Ashton Cox</td>
                                <td>698745632v</td>
                                <td>2018-06-22</td>
                                <td>bara</td>
                                <td>finished</td>
                                <td>failed</td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
                <!-- END DATATABLE EXPORT -->
            </div>

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
<script type="text/javascript" src="/js/settings.js"></script>
<script type='text/javascript' src='/js/plugins/noty/jquery.noty.js'></script>
<script type='text/javascript' src='/js/plugins/noty/layouts/topCenter.js'></script>
<script type='text/javascript' src='/js/plugins/noty/layouts/topLeft.js'></script>
<script type='text/javascript' src='/js/plugins/noty/layouts/topRight.js'></script>
<script type='text/javascript' src='/js/plugins/noty/themes/default.js'></script>
<script type="text/javascript">
    function notyConfirm() {
        noty({
            text: 'Do you want to continue?',
            layout: 'topRight',
            buttons: [
                {
                    addClass: 'btn btn-success btn-clean', text: 'Ok', onClick: function ($noty) {
                        $noty.close();
                        noty({text: 'You clicked "Ok" button', layout: 'topRight', type: 'success'});
                    }
                },
                {
                    addClass: 'btn btn-danger btn-clean', text: 'Cancel', onClick: function ($noty) {
                        $noty.close();
                        noty({text: 'You clicked "Cancel" button', layout: 'topRight', type: 'error'});
                    }
                }
            ]
        })
    }

</script>
<script type="text/javascript" src="/js/plugins.js"></script>
<script type="text/javascript" src="/js/actions.js"></script>
<script type="text/javascript" src="/js/app_js/Exam.js"></script>
<script type='text/javascript' src='/js/plugins/bootstrap/bootstrap-select.js'></script>
<!-- END TEMPLATE -->
</body>
</html>







