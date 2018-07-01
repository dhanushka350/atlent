<%--
  Created by IntelliJ IDEA.
  User: Akvasoft
  Date: 17/03/2018
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" class="body-full-height">
<head>
    <!-- META SECTION -->
    <title>Login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <link rel="icon" href="favicon.ico" type="image/x-icon"/>
    <!-- END META SECTION -->

    <!-- CSS INCLUDE -->
    <link rel="stylesheet" type="text/css" id="theme" href="css/theme-default.css"/>
    <!-- EOF CSS INCLUDE -->

    <script src="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet"/>
</head>
<body>

<div class="login-container lightmode">
    <div class="login-box animated fadeInDown">
        <div class="login-logo"></div>
        <div class="login-body">
            <div class="login-title"><strong>WELCOME</strong> Please login Here!</div>
            <form action="/admin" class="form-horizontal" method="get">
                <div class="form-group">
                    <div class="col-md-12">
                        <input type="text" class="form-control" placeholder="Name" id="txt_name"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-12">
                        <input type="password" class="form-control" placeholder="Password" id="txt_password"/>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6">
                        <a href="#" class="btn btn-link btn-block">Forgot your password?</a>
                    </div>
                    <div class="col-md-6">
                        <button class="btn btn-info btn-block" id="loginButton">Log In</button>
                    </div>
                </div>
                <div class="login-or">OR</div>
                <div class="form-group">
                    <div class="col-md-4">
                        <button class="btn btn-info btn-block btn-twitter"><span class="fa fa-twitter"></span> Twitter
                        </button>
                    </div>
                    <div class="col-md-4">
                        <button class="btn btn-info btn-block btn-facebook"><span class="fa fa-facebook"></span>
                            Facebook
                        </button>
                    </div>
                    <div class="col-md-4">
                        <button class="btn btn-info btn-block btn-google"><span class="fa fa-google-plus"></span> Google
                        </button>
                    </div>
                </div>
                <div class="login-subtitle">
                    Do You Need Any Technical Support ? <a href="#">We are here!</a>
                </div>
            </form>
        </div>
        <div class="login-footer">
            <div class="pull-left">
                &copy; 2018 Aurora DevOps.
            </div>
            <div class="pull-right">
                <a href="#">About</a> |
                <a href="#">Privacy</a> |
                <a href="#">Contact Us</a>
            </div>
        </div>
    </div>

</div>
<script src="/js/plugins/jquery/jquery.min.js"></script>
<script src="/js/app_js/Login.js"></script>
<script src="/session/jquery.session.js"></script>
<script type='text/javascript' src='/js/plugins/noty/jquery.noty.js'></script>
<script type='text/javascript' src='/js/plugins/noty/layouts/topCenter.js'></script>
<script type='text/javascript' src='/js/plugins/noty/layouts/topLeft.js'></script>
<script type='text/javascript' src='/js/plugins/noty/layouts/topRight.js'></script>
<script type='text/javascript' src='/js/plugins/noty/themes/default.js'></script>
</body>
</html>






