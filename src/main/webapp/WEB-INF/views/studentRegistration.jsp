<%--
  Created by IntelliJ IDEA.
  User: Akvasoft
  Date: 18/03/2018
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <!-- META SECTION -->
    <title>Student Profile</title>
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
            max-height: 1300px;
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
            <li class="active">Student Profile</li>
        </ul>
        <!-- END BREADCRUMB -->

        <!-- PAGE TITLE -->
        <div class="page-title">
            <h2><span class="fa fa-arrow-circle-o-left"></span> Create New Profile</h2>
        </div>
        <!-- END PAGE TITLE -->

        <!-- PAGE CONTENT WRAPPER -->
        <div class="page-content-wrap">

            <div class="row">
                <div class="col-md-12">

                    <!-- START DEFAULT WIZARD -->
                    <div class="block">
                        <h4>Information Wizard</h4>
                        <div class="wizard">

                            <ul>
                                <li>
                                    <a href="#step-1">
                                        <span class="stepNumber">1</span>
                                        <span class="stepDesc">Student<br/><small>Student Personal Information</small></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#step-2">
                                        <span class="stepNumber">2</span>
                                        <span class="stepDesc">Package<br/><small>Package Information</small></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#step-3">
                                        <span class="stepNumber">3</span>
                                        <span class="stepDesc">Payment<br/><small>Choose and Continue Payment</small></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#step-4">
                                        <span class="stepNumber">4</span>
                                        <span class="stepDesc">Medical Information<br/><small>Is Student Have Any Medical Issue?</small></span>
                                    </a>
                                </li>
                            </ul>
                            <div id="step-1">
                                <h4>Student Personal Information</h4>
                                <p>Please fill out all the fields as you can.
                                you can edit or update this information later.</p>
                                <a href="/all/student"> <span class="fa fa-tasks"> </span> <span class="xn-text"></span> All Students</a>
                                <!-- START SUCCESS PANEL -->
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Profile Information</h3>
                                    </div>
                                    <div class="panel-body">
                                        <form id="validate" role="form" class="form-horizontal"
                                              action="javascript:alert('Form #validate submited');">
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Name:</label>
                                                <div class="col-md-6">
                                                    <input type="text"
                                                           class="validate[required,maxSize[8]] form-control" id="txt_name"/>
                                                    <span class="help-block">Required, max size = 8</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">NIC:</label>
                                                <div class="col-md-6    ">
                                                    <input type="text"
                                                           class="validate[required,custom[integer],min[18],max[120]] form-control" id="txt_nic"/>
                                                    <span class="help-block">Required, 9 Numbers with V or X</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Password:</label>
                                                <div class="col-md-6">
                                                    <input type="password"
                                                           class="validate[required,minSize[5],maxSize[10]] form-control"
                                                           id="password" value="1234qwerty"
                                                           disabled="disabled"/>
                                                    <span class="help-block">This Will Automatically Generate and Sent To Student. The Student Can Change It Later.</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Confirm:</label>
                                                <div class="col-md-6">
                                                    <input type="password"
                                                           class="validate[required,equals[password]] form-control"
                                                           value="1234qwerty" disabled="disabled"/>
                                                    <span class="help-block">Automatically Matched By The System</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Gender:</label>
                                                <div class="col-md-6">
                                                    <select class="validate[required] select" id="formGender">
                                                        <option value="">Choose option</option>
                                                        <option value="Male">Male</option>
                                                        <option value="Female">Female</option>
                                                        <option value="Other">Other</option>
                                                    </select>
                                                    <span class="help-block">Required</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Date of birth:</label>
                                                <div class="col-md-6">
                                                    <input type="text"
                                                           class="validate[required,custom[date]] form-control" id="txt_dob"/>
                                                    <span class="help-block">Required, date YYYY-MM-DD</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Age:</label>
                                                <div class="col-md-6    ">
                                                    <input type="text"
                                                           class="validate[required,custom[integer],min[18],max[120]] form-control" id="txt_age" disabled="disabled"/>
                                                    <span class="help-block">Required, integer, min value = 18, max = 120</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Mobile NO:</label>
                                                <div class="col-md-6">
                                                    <input type="text"
                                                           class="validate[required,creditCard] form-control" id="txt_mobile"/>
                                                    <span class="help-block">Required, Student Password will sent to this number.</span>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Address:</label>
                                                <div class="col-md-6">
                                                    <textarea class="form-control" rows="5" id="txt_address"></textarea>
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
                                    <%--<div class="panel-footer">--%>
                                    <%--<button class="btn btn-default">Back</button>--%>
                                    <%--<button class="btn btn-primary pull-right">Submit</button>--%>
                                    <%--</div>--%>
                                </div>
                                <!-- END SUCCESS PANEL -->

                            </div>
                            <div id="step-2">
                                <h4>Package Information</h4>
                                <p>Licence for what kind of vehicles ?</p>
                                <!-- START SUCCESS PANEL -->
                                <div class="panel panel-success">
                                    <div class="panel-heading">
                                        <h3 class="panel-title"></h3>
                                    </div>
                                    <div class="panel-body">
                                        <form role="form" class="form-horizontal">
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Select Vehicle Classes</label>
                                                <div class="col-md-6">
                                                    <select multiple class="form-control select" id="select_license_packages">
                                                        <option>A1</option>
                                                        <option>A</option>
                                                        <option>B1</option>
                                                        <option>B</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="panel panel-default form-group">
                                                <div class="panel-heading">
                                                    <h3 class="panel-title">Class of Vehicles can be driven</h3>
                                                </div>
                                                <div class="panel-body">
                                                    <p> >> <code>License Category Information</code> << </p>
                                                    <table class="table table-hover" id="tbl_license_packages">
                                                        <thead>
                                                        <tr>
                                                            <th>#</th>
                                                            <th>Vehicle Class</th>
                                                            <th>Description</th>
                                                            <th>Other_Classes</th>
                                                            <th>Old Class</th>
                                                            <th>price</th>
                                                            <th>Pictograph</th>
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
                                <%--<div class="panel-footer">--%>
                                <%--<button class="btn btn-default">Back</button>--%>
                                <%--<button class="btn btn-primary pull-right">Submit</button>--%>
                                <%--</div>--%>
                            </div>
                            <div id="step-3">
                                <h4>Choose Subjects and a Class</h4>
                                <p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et
                                    magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh
                                    ultricies vehicula.</p>
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
                                        <label class="col-md-3 control-label">Name:</label>
                                        <div class="col-md-6">
                                            <input type="text"
                                                   class="validate[required,maxSize[8]] form-control"/>
                                            <span class="help-block">Required, max size = 8</span>
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
                                        <label class="col-md-3 control-label">Mobile NO:</label>
                                        <div class="col-md-6">
                                            <input type="text"
                                                   class="validate[required,creditCard] form-control"/>
                                            <span class="help-block">Required</span>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Address:</label>
                                        <div class="col-md-6">
                                            <textarea class="form-control" rows="5"></textarea>
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
                            <div id="step-4">
                                <h4>Is Student Have Any Medical Issue?</h4>
                                <h4> Write it here!</h4>
                                <p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et
                                    magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh
                                    ultricies vehicula.</p>
                                <form id="validateMedic" role="form" class="form-horizontal"
                                      action="javascript:alert('Form #validate submited');">
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Note:</label>
                                        <div class="col-md-6">
                                            <textarea class="form-control" rows="5"></textarea>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-3 col-sm-offset-6 col-md-offset-6 col-lg-offset-6">
                                            <button class="btn btn-primary btn-block" id="btn_submit">Submit All</button>
                                        </div>
                                    </div>
                                </form>
                            </div>

                        </div>
                    </div>
                    <!-- END DEFAULT WIZARD -->

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
                <p>Press No if you want to continue work. Press Yes to logout current userDto.</p>
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
<script type="text/javascript" src="js/plugins/tagsinput/jquery.tagsinput.min.js"></script>
<script type='text/javascript' src='/js/plugins/jquery-validation/jquery.validate.js'></script>
<script type="text/javascript" src="js/plugins/bootstrap/bootstrap-file-input.js"></script>
<script type='text/javascript' src='/js/plugins/maskedinput/jquery.maskedinput.min.js'></script>
<!-- END PAGE PLUGINS -->

<!-- START TEMPLATE -->
<script type="text/javascript" src="/js/settings.js"></script>

<script type="text/javascript" src="/js/plugins.js"></script>
<script type="text/javascript" src="/js/actions.js"></script>
<script type="text/javascript" src="/js/app_js/Student.js"></script>
<!-- END TEMPLATE -->
<script type="text/javascript">
    var jvalidate = $("#jvalidate").validate({
        ignore: [],
        rules: {
            login: {
                required: true,
                minlength: 2,
                maxlength: 8
            },
            password: {
                required: true,
                minlength: 5,
                maxlength: 10
            },
            're-password': {
                required: true,
                minlength: 5,
                maxlength: 10,
                equalTo: "#password2"
            },
            age: {
                required: true,
                min: 18,
                max: 100
            },
            email: {
                required: true,
                email: true
            },
            date: {
                required: true,
                date: true
            },
            credit: {
                required: true,
                creditcard: true
            },
            site: {
                required: true,
                url: true
            }
        }
    });

</script>
<!-- END SCRIPTS -->

</body>
</html>






