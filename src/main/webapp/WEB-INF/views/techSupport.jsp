<!DOCTYPE html>
<html lang="en">
<head>
    <!-- META SECTION -->
    <title>Developers</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="icon" href="favicon.ico" type="image/x-icon"/>
    <!-- END META SECTION -->

    <!-- CSS INCLUDE -->
    <link rel="stylesheet" type="text/css" id="theme" href="/css/theme-default.css"/>
    <!-- EOF CSS INCLUDE -->
</head>
<body>
<!-- START PAGE CONTAINER -->
<div class="page-container">

    <!-- START PAGE SIDEBAR -->
    <div class="page-sidebar">
        <!-- START X-NAVIGATION -->
        <jsp:include page="navigator.jsp"/>
        <!-- END X-NAVIGATION -->
    </div>
    <!-- END PAGE SIDEBAR -->

    <!-- PAGE CONTENT -->
    <div class="page-content">

        <jsp:include page="top_nav.jsp"/>
        <!-- END X-NAVIGATION VERTICAL -->

        <!-- START BREADCRUMB -->
        <ul class="breadcrumb push-down-0">
            <li><a href="/admin_dashboard">Home</a></li>
            <li><a href="/admin_dashboard">Pages</a></li>
            <li class="active">Developers</li>
        </ul>
        <!-- END BREADCRUMB -->

        <!-- PAGE CONTENT WRAPPER -->
        <div class="page-content-wrap">

            <div class="row">
                <div class="col-md-12">

                    <div class="col-md-3">
                        <!-- CONTACT ITEM -->
                        <div class="panel panel-default">
                            <div class="panel-body profile">
                                <div class="profile-image">
                                    <img src="/assets/images/users/dhanu.jpg" alt="Nadia Ali"/>
                                </div>
                                <div class="profile-data">
                                    <div class="profile-data-name">Dhanushka Sandaruwan</div>
                                    <div class="profile-data-title">Web Developer / UI/UX Designer / Software Engineer
                                    </div>
                                </div>
                                <div class="profile-controls">
                                    <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                    <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="contact-info">
                                    <p>
                                        <small>Mobile</small>
                                        <br/>(94) 711-215-863
                                    </p>
                                    <p>
                                        <small>Email</small>
                                        <br/>dhanushka@akvasoft.com
                                    </p>
                                    <p>
                                        <small>Address</small>
                                        <br/>23 mile post,mangalagama,ampara
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- END CONTACT ITEM -->
                    </div>
                    <div class="col-md-3">
                        <!-- CONTACT ITEM -->
                        <div class="panel panel-default">
                            <div class="panel-body profile">
                                <div class="profile-image">
                                    <img src="/assets/images/users/user7.jpg" alt="Dmitry Ivaniuk"/>
                                </div>
                                <div class="profile-data">
                                    <div class="profile-data-name">Sanju Chandimal</div>
                                    <div class="profile-data-title">Web Developer / UI/UX Designer / Software Engineer
                                    </div>
                                </div>
                                <div class="profile-controls">
                                    <a href="#" class="profile-control-left"><span class="fa fa-info"></span></a>
                                    <a href="#" class="profile-control-right"><span class="fa fa-phone"></span></a>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="contact-info">
                                    <p>
                                        <small>Mobile</small>
                                        <br/>(333) 333-33-22
                                    </p>
                                    <p>
                                        <small>Email</small>
                                        <br/>dmitry@domain.com
                                    </p>
                                    <p>
                                        <small>Address</small>
                                        <br/>123 45 Street San Francisco, CA, USA
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- END CONTACT ITEM -->
                    </div>
                    <div class="col-md-6">
                        <!-- CONTACT ITEM -->
                        <br><br><br>
                        <div class="form-group">
                            <label class="col-md-2 control-label">Subject :</label>
                            <div class="col-md-9">
                                <input type="text"
                                       class="validate[required,creditCard] form-control" id="txt_subject"/>
                                <span class="help-block">Required</span>
                            </div>
                        </div>
                        <br><br>
                        <div class="form-group">
                            <label class="col-md-2 control-label">Message :</label>
                            <div class="col-md-9">
                                <textarea class="form-control" rows="5" id="txt_message"></textarea>
                            </div>
                        </div>
                        <br><br><br>
                        <div class="form-group" style="margin-top: 10px;">
                            <div class="col-md-3 col-sm-offset-8 col-md-offset-8 col-lg-offset-8">
                                <button class="btn btn-primary btn-block" onclick="sentMail(this);">Sent</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
                <p>Press No if youwant to continue work. Press Yes to logout current user.</p>
            </div>
            <div class="mb-footer">
                <div class="pull-right">
                    <a href="/" class="btn btn-success btn-lg">Yes</a>
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
<!-- END THIS PAGE PLUGINS-->

<!-- START TEMPLATE -->
<script type="text/javascript" src="/js/settings.js"></script>

<script type="text/javascript" src="/js/plugins.js"></script>
<script type="text/javascript" src="/js/actions.js"></script>
<script type="text/javascript" src="/js/app_js/TechSupport.js"></script>
<!-- END TEMPLATE -->
<script type='text/javascript' src='/js/plugins/noty/jquery.noty.js'></script>
<script type='text/javascript' src='/js/plugins/noty/layouts/topCenter.js'></script>
<script type='text/javascript' src='/js/plugins/noty/layouts/topLeft.js'></script>
<script type='text/javascript' src='/js/plugins/noty/layouts/topRight.js'></script>
<script type='text/javascript' src='/js/plugins/noty/themes/default.js'></script>
<!-- END SCRIPTS -->
</body>
</html>






