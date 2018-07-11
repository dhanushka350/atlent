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
    <title>Training Schedule</title>
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
<body onload="Exam.allExams(); Exam.allSchedules();">
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
            <li class="active"><a href="#">Training Schedule</a></li>
        </ul>
        <!-- END BREADCRUMB -->

        <!-- PAGE TITLE -->
        <div class="page-title">
            <h2><span class="fa fa-calendar"></span> Training Schedules
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
                            <p>Use student nic to find his/her Training dates
                            </p>
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <div class="col-md-4">
                                        <div class="input-group">
                                            <div class="input-group-addon">
                                                <span class="fa fa-search"></span>
                                            </div>
                                            <input type="text" class="form-control"
                                                   placeholder="you are Serarch for?" id="txt_search_nic"/>
                                            <div class="input-group-btn">
                                                <button class="btn btn-primary" id="btn_search">Search</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <div class="col-md-4">
                                                <input type="text"
                                                       class="validate[required,custom[integer],min[18],max[120]] form-control"
                                                       id="txt_training_date" placeholder="DATE"/>
                                                <span class="help-block">Required, format YYYY-MM-DD</span>
                                            </div>
                                            <div class="col-md-4">
                                                <input type="text"
                                                       class="validate[required,custom[integer],min[18],max[120]] form-control"
                                                       id="txt_training_time" placeholder="TIME"/>
                                                <span class="help-block">Required, format hh-mm am/pm</span>
                                            </div>

                                            <div class="col-md-4">
                                                <button type="button" class="btn btn-success mb-control col-md-6"
                                                        id="btn_save_training" style="margin-left: 50px;">Add Schedule
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
                        <p>training date eka select kalama name ekata pahala tiyena date eka fill wenna ona(combo eka hariyawi ekata data load kalama)</p>
                        <p>nic eka dunnama name eka filter krla danna ona</p>
                        <p>date eka select kalama ee date ekema time deka thunak tiyenna puluwan nisa ehema tiyenawa nm ewa serama time kiyana combo ekata load krnna ona... eken adala time eka select kalama tama ee time eka ara disabled krla tiyena txt ekata yanna ona</p>
                        <p>udama tiyena search ekata nic eka dunnama eyage date tika pahala table ekata load wenna ona.. default ada idan issarahata tiyena schedule tika load wela tiyenna ona table ekata</p>

                        <form id="validate" role="form" class="form-horizontal"
                              action="javascript:alert('Form #validate submited');">
                            <div class="form-group">
                                <label class="col-md-3 control-label">Training Date :</label>
                                <div class="col-md-3">
                                    <select id="select_exam" data-live-search="true">

                                    </select>
                                </div>
                                <label class="col-md-3 control-label">NIC:</label>
                                <div class="col-md-3">
                                    <input type="text"
                                           class="validate[required,custom[integer],min[18],max[120]] form-control"
                                           id="txt_nic" style="color: black;text-align: center;font-weight: bold"/>
                                    <span class="help-block">Required, 9 Numbers with V or X</span>
                                </div>
                            </div>
                        </form>
                        <br>
                        <form role="form" class="form-horizontal">
                            <div class="form-group">
                                <label class="col-md-3 control-label">Time :</label>
                                <div class="col-md-3">
                                    <select class="validate[required] select" id="select_exam_states">
                                        <option value="1"> 10.30 Am</option>
                                        <option value="2"> 12.30 Am</option>
                                    </select>
                                    <span class="help-block"></span>
                                </div>
                                <label class="col-md-3 control-label">Name:</label>
                                <div class="col-md-3">
                                    <input type="text"
                                           class="validate[required,maxSize[8]] form-control" id="txt_name"
                                           disabled="disabled"
                                           style="color: black;text-align: center;font-weight: bold"/>
                                    <span class="help-block" id="nic_states">--</span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-md-3 control-label">Trainer :</label>
                                <div class="col-md-3">
                                    <select class="validate[required] select" id="select_states">
                                        <option value="kasun">kasun</option>
                                        <option value="damith">damith</option>
                                        <option value="amila">amila</option>
                                    </select>
                                    <span class="help-block"></span>
                                </div>
                                <label class="col-md-3 control-label">Date:</label>
                                <div class="col-md-3">
                                    <input type="text"
                                           class="validate[required,custom[integer],min[18],max[120]] form-control"
                                           id="txt_ex_date" disabled="disabled"
                                           style="color: black;text-align: center;font-weight: bold"/>
                                    <span class="help-block">Exam will held on this day </span>
                                </div>

                            </div>
                            <div class="form-group">

                                    <label class="col-md-3 control-label">Vehicle No :</label>
                                    <div class="col-md-3">
                                        <select class="validate[required] select" id="select_vehical">
                                            <option value="1"> NO 1</option>
                                            <option value="2"> NO 2</option>
                                        </select>
                                        <span class="help-block"></span>
                                    </div>

                                <label class="col-md-3 control-label">Time:</label>
                                <div class="col-md-3    ">
                                    <input type="text"
                                           class="validate[required,custom[integer],min[18],max[120]] form-control"
                                           id="txt_time" disabled="disabled"
                                           style="color: black;text-align: center;font-weight: bold"/>
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
                        <h3 class="panel-title">Training Dates</h3>
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
                        <table id="tbl_schedule" class="table datatable">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>Name</th>
                                <th>Nic</th>
                                <th>Training Date</th>
                                <th>Training Time</th>
                                <th>Trainer</th>
                                <th>Vehical</th>
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
<script type="text/javascript" src="/js/app_js/Training.js"></script>
<script type='text/javascript' src='/js/plugins/bootstrap/bootstrap-select.js'></script>
<!-- END TEMPLATE -->
</body>
</html>







