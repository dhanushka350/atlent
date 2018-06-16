<%--
  Created by IntelliJ IDEA.
  User: Akvasoft
  Date: 17/03/2018
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <!-- META SECTION -->
    <title>Admin Dashboard</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="icon" href="favicon.ico" type="image/x-icon"/>
    <!-- END META SECTION -->

    <!-- CSS INCLUDE -->
    <link rel="stylesheet" type="text/css" id="theme" href="css/theme-default.css"/>
    <!-- EOF CSS INCLUDE -->
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
            <li class="active">Dashboard</li>
        </ul>
        <!-- END BREADCRUMB -->

        <!-- PAGE CONTENT WRAPPER -->
        <div class="page-content-wrap">

            <!-- START WIDGETS -->
            <div class="row">
                <div class="col-md-3">

                    <!-- START WIDGET SLIDER -->
                    <div class="widget widget-default widget-carousel">
                        <div class="owl-carousel" id="owl-example">
                            <div>
                                <div class="widget-title">Today Attendance Count</div>
                                <div class="widget-subtitle">27/08/2014 15:23</div>
                                <div class="widget-int">3,548</div>
                            </div>
                            <div>
                                <div class="widget-title">Teachers Attendance</div>
                                <div class="widget-subtitle">Today</div>
                                <div class="widget-int">1,695</div>
                            </div>
                            <div>
                                <div class="widget-title">New</div>
                                <div class="widget-subtitle">Visitors</div>
                                <div class="widget-int">1,977</div>
                            </div>
                        </div>
                        <div class="widget-controls">
                            <a href="#" class="widget-control-right widget-remove" data-toggle="tooltip"
                               data-placement="top" title="Remove Widget"><span class="fa fa-times"></span></a>
                        </div>
                    </div>
                    <!-- END WIDGET SLIDER -->

                </div>
                <div class="col-md-3">

                    <!-- START WIDGET MESSAGES -->
                    <div class="widget widget-default widget-item-icon" onclick="location.href='pages-messages.html';">
                        <div class="widget-item-left">
                            <span class="fa fa-envelope"></span>
                        </div>
                        <div class="widget-data">
                            <div class="widget-int num-count">48</div>
                            <div class="widget-title">New messages</div>
                            <div class="widget-subtitle">In your mailbox</div>
                        </div>
                        <div class="widget-controls">
                            <a href="#" class="widget-control-right widget-remove" data-toggle="tooltip"
                               data-placement="top" title="Remove Widget"><span class="fa fa-times"></span></a>
                        </div>
                    </div>
                    <!-- END WIDGET MESSAGES -->

                </div>
                <div class="col-md-3">

                    <!-- START WIDGET REGISTRED -->
                    <div class="widget widget-default widget-item-icon"
                         onclick="location.href='pages-address-book.html';">
                        <div class="widget-item-left">
                            <span class="fa fa-user"></span>
                        </div>
                        <div class="widget-data">
                            <div class="widget-int num-count">375</div>
                            <div class="widget-title">Total Students</div>
                            <div class="widget-subtitle">Registered On System</div>
                        </div>
                        <div class="widget-controls">
                            <a href="#" class="widget-control-right widget-remove" data-toggle="tooltip"
                               data-placement="top" title="Remove Widget"><span class="fa fa-times"></span></a>
                        </div>
                    </div>
                    <!-- END WIDGET REGISTRED -->

                </div>
                <div class="col-md-3">

                    <!-- START WIDGET CLOCK -->
                    <div class="widget widget-info widget-padding-sm">
                        <div class="widget-big-int plugin-clock">00:00</div>
                        <div class="widget-subtitle plugin-date">Loading...</div>
                        <div class="widget-controls">
                            <a href="#" class="widget-control-right widget-remove" data-toggle="tooltip"
                               data-placement="left" title="Remove Widget"><span class="fa fa-times"></span></a>
                        </div>
                        <div class="widget-buttons widget-c3">
                            <div class="col">
                                <a href="#"><span class="fa fa-clock-o"></span></a>
                            </div>
                            <div class="col">
                                <a href="#"><span class="fa fa-bell"></span></a>
                            </div>
                            <div class="col">
                                <a href="#"><span class="fa fa-calendar"></span></a>
                            </div>
                        </div>
                    </div>
                    <!-- END WIDGET CLOCK -->

                </div>
            </div>
            <!-- END WIDGETS -->

            <div class="row">
                <div class="col-md-4">

                    <!-- START USERS ACTIVITY BLOCK -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title-box">
                                <h3>Parents Activity</h3>
                                <span>Perants vs returning</span>
                            </div>
                            <ul class="panel-controls" style="margin-top: 2px;">
                                <li><a href="#" class="panel-fullscreen"><span class="fa fa-expand"></span></a></li>
                                <li><a href="#" class="panel-refresh"><span class="fa fa-refresh"></span></a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                                            class="fa fa-cog"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span>
                                            Collapse</a></li>
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span>
                                            Remove</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="panel-body padding-0">
                            <div class="chart-holder" id="dashboard-bar-1" style="height: 200px;"></div>
                        </div>
                    </div>
                    <!-- END USERS ACTIVITY BLOCK -->

                </div>
                <div class="col-md-4">

                    <!-- START VISITORS BLOCK -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title-box">
                                <h3>Visitors</h3>
                                <span>Visitors (last month)</span>
                            </div>
                            <ul class="panel-controls" style="margin-top: 2px;">
                                <li><a href="#" class="panel-fullscreen"><span class="fa fa-expand"></span></a></li>
                                <li><a href="#" class="panel-refresh"><span class="fa fa-refresh"></span></a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                                            class="fa fa-cog"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span>
                                            Collapse</a></li>
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span>
                                            Remove</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="panel-body padding-0">
                            <div class="chart-holder" id="dashboard-donut-1" style="height: 200px;"></div>
                        </div>
                    </div>
                    <!-- END VISITORS BLOCK -->

                </div>

                <div class="col-md-4">

                    <!-- START PROJECTS BLOCK -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title-box">
                                <h3>Exams</h3>
                                <span>This Month</span>
                            </div>
                            <ul class="panel-controls" style="margin-top: 2px;">
                                <li><a href="#" class="panel-fullscreen"><span class="fa fa-expand"></span></a></li>
                                <li><a href="#" class="panel-refresh"><span class="fa fa-refresh"></span></a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                                            class="fa fa-cog"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span>
                                            Collapse</a></li>
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span>
                                            Remove</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="panel-body panel-body-table">

                            <div class="table-responsive">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th width="50%">Exam</th>
                                        <th width="20%">Status</th>
                                        <th width="30%">Progress</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td><strong>CNT</strong></td>
                                        <td><span class="label label-danger">Pending</span></td>
                                        <td>
                                            <div class="progress progress-small progress-striped active">
                                                <div class="progress-bar progress-bar-danger" role="progressbar"
                                                     aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
                                                     style="width: 85%;">85%
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>SD</strong></td>
                                        <td><span class="label label-warning">Finished</span></td>
                                        <td>
                                            <div class="progress progress-small progress-striped active">
                                                <div class="progress-bar progress-bar-warning" role="progressbar"
                                                     aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
                                                     style="width: 40%;">40%
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>IS</strong></td>
                                        <td><span class="label label-warning">Finished</span></td>
                                        <td>
                                            <div class="progress progress-small progress-striped active">
                                                <div class="progress-bar progress-bar-warning" role="progressbar"
                                                     aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
                                                     style="width: 72%;">72%
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>OOP</strong></td>
                                        <td><span class="label label-success">Ongoing</span></td>
                                        <td>
                                            <div class="progress progress-small progress-striped active">
                                                <div class="progress-bar progress-bar-success" role="progressbar"
                                                     aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
                                                     style="width: 100%;">100%
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><strong>OOP2</strong></td>
                                        <td><span class="label label-success">Ongoing</span></td>
                                        <td>
                                            <div class="progress progress-small progress-striped active">
                                                <div class="progress-bar progress-bar-success" role="progressbar"
                                                     aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
                                                     style="width: 100%;">100%
                                                </div>
                                            </div>
                                        </td>
                                    </tr>

                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>
                    <!-- END PROJECTS BLOCK -->

                </div>
            </div>

            <div class="row">
                <div class="col-md-8">

                    <!-- START SALES BLOCK -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title-box">
                                <h3>Sales</h3>
                                <span>Sales activity by period you selected</span>
                            </div>
                            <ul class="panel-controls panel-controls-title">
                                <li>
                                    <div id="reportrange" class="dtrange">
                                        <span></span><b class="caret"></b>
                                    </div>
                                </li>
                                <li><a href="#" class="panel-fullscreen rounded"><span class="fa fa-expand"></span></a>
                                </li>
                            </ul>

                        </div>
                        <div class="panel-body">
                            <div class="row stacked">
                                <div class="col-md-4">
                                    <div class="progress-list">
                                        <div class="pull-left"><strong>In Queue</strong></div>
                                        <div class="pull-right">75%</div>
                                        <div class="progress progress-small progress-striped active">
                                            <div class="progress-bar progress-bar-primary" role="progressbar"
                                                 aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
                                                 style="width: 75%;">75%
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress-list">
                                        <div class="pull-left"><strong>Shipped Products</strong></div>
                                        <div class="pull-right">450/500</div>
                                        <div class="progress progress-small progress-striped active">
                                            <div class="progress-bar progress-bar-primary" role="progressbar"
                                                 aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
                                                 style="width: 90%;">90%
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress-list">
                                        <div class="pull-left"><strong class="text-danger">Returned Products</strong>
                                        </div>
                                        <div class="pull-right">25/500</div>
                                        <div class="progress progress-small progress-striped active">
                                            <div class="progress-bar progress-bar-danger" role="progressbar"
                                                 aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
                                                 style="width: 5%;">5%
                                            </div>
                                        </div>
                                    </div>
                                    <div class="progress-list">
                                        <div class="pull-left"><strong class="text-warning">Progress Today</strong>
                                        </div>
                                        <div class="pull-right">75/150</div>
                                        <div class="progress progress-small progress-striped active">
                                            <div class="progress-bar progress-bar-warning" role="progressbar"
                                                 aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
                                                 style="width: 50%;">50%
                                            </div>
                                        </div>
                                    </div>
                                    <p><span class="fa fa-warning"></span> Data update in end of each hour. You can
                                        update it manual by pressign update button</p>
                                </div>
                                <div class="col-md-8">
                                    <div id="dashboard-map-seles" style="width: 100%; height: 200px"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END SALES BLOCK -->

                </div>
                <div class="common-modal modal fade" id="common-Modal1" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-content">
                        <ul class="list-inline item-details">
                            <li>
                                <a href="http://themifycloud.com/downloads/janux-premium-responsive-bootstrap-admin-dashboard-template/">Admin
                                    templates</a></li>
                            <li><a href="http://themescloud.org">Bootstrap themes</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-4">

                    <!-- START SALES & EVENTS BLOCK -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-title-box">
                                <h3>Attendance Progress</h3>
                                <span>Student Attendance (weekly)</span>
                            </div>
                            <ul class="panel-controls" style="margin-top: 2px;">
                                <li><a href="#" class="panel-fullscreen"><span class="fa fa-expand"></span></a></li>
                                <li><a href="#" class="panel-refresh"><span class="fa fa-refresh"></span></a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span
                                            class="fa fa-cog"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span>
                                            Collapse</a></li>
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span>
                                            Remove</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="panel-body padding-0">
                            <div class="chart-holder" id="dashboard-line-1" style="height: 200px;"></div>
                        </div>
                    </div>
                    <!-- END SALES & EVENTS BLOCK -->

                </div>
            </div>

            <!-- START DASHBOARD CHART -->
            <div class="chart-holder" id="dashboard-area-1" style="height: 200px;"></div>
            <div class="block-full-width">

            </div>
            <!-- END DASHBOARD CHART -->

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
<audio id="audio-alert" src="audio/alert.mp3" preload="auto"></audio>
<audio id="audio-fail" src="audio/fail.mp3" preload="auto"></audio>
<!-- END PRELOADS -->

<!-- START SCRIPTS -->
<!-- START PLUGINS -->
<script type="text/javascript" src="js/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="js/plugins/jquery/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/plugins/bootstrap/bootstrap.min.js"></script>
<!-- END PLUGINS -->

<!-- START THIS PAGE PLUGINS-->
<script type='text/javascript' src='js/plugins/icheck/icheck.min.js'></script>
<script type="text/javascript" src="js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js"></script>
<script type="text/javascript" src="js/plugins/scrolltotop/scrolltopcontrol.js"></script>

<script type="text/javascript" src="js/plugins/morris/raphael-min.js"></script>
<script type="text/javascript" src="js/plugins/morris/morris.min.js"></script>
<script type="text/javascript" src="js/plugins/rickshaw/d3.v3.js"></script>
<script type="text/javascript" src="js/plugins/rickshaw/rickshaw.min.js"></script>
<script type='text/javascript' src='js/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js'></script>
<script type='text/javascript' src='js/plugins/jvectormap/jquery-jvectormap-world-mill-en.js'></script>
<script type='text/javascript' src='js/plugins/bootstrap/bootstrap-datepicker.js'></script>
<script type="text/javascript" src="js/plugins/owl/owl.carousel.min.js"></script>

<script type="text/javascript" src="js/plugins/moment.min.js"></script>
<script type="text/javascript" src="js/plugins/daterangepicker/daterangepicker.js"></script>
<!-- END THIS PAGE PLUGINS-->

<!-- START TEMPLATE -->
<script type="text/javascript" src="js/settings.js"></script>

<script type="text/javascript" src="js/plugins.js"></script>
<script type="text/javascript" src="js/actions.js"></script>

<script type="text/javascript" src="js/demo_dashboard.js"></script>
<!-- END TEMPLATE -->
<!-- END SCRIPTS -->
</body>
</html>
