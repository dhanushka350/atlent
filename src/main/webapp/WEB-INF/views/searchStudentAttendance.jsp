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
    <title>Joli Admin - Responsive Bootstrap Admin Template</title>
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
    <div class="page-sidebar">
        <jsp:include page="navigator.jsp"/>
    </div>

    <!-- PAGE CONTENT -->
    <div class="page-content">
        <jsp:include page="top_nav.jsp"/>

        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="#">Accounts</a></li>
            <li><a href="#">Students</a></li>
            <li class="active">View Attendances</li>
        </ul>
        <!-- END BREADCRUMB -->

        <!-- PAGE TITLE -->
        <div class="page-title">
            <h2><span class="fa fa-arrow-circle-o-left"></span> Student Attendances</h2>
        </div>
        <!-- END PAGE TITLE -->

        <!-- PAGE CONTENT WRAPPER -->
        <div class="page-content-wrap">

            <div class="row">
                <div class="col-md-12">

                    <!-- START SUCCESS PANEL -->
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <h3 class="panel-title">Filter Options</h3>
                        </div>
                        <div class="panel-body">
                            <form role="form" class="form-horizontal">
                                <div class="form-group col-md-6">
                                    <label class="col-md-3 control-label">Select Class </label>
                                    <div class="col-md-6">
                                        <select class="form-control select" data-live-search="true">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="col-md-3 control-label">Select Section</label>
                                    <div class="col-md-6">
                                        <select class="form-control select" data-live-search="true">
                                            <option>A</option>
                                            <option>B</option>
                                            <option>C</option>
                                            <option>D</option>
                                            <option>E</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="col-md-3 control-label">Select Month</label>
                                    <div class="col-md-6">
                                        <select class="form-control select" data-live-search="true">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-6">
                                    <label class="col-md-3 control-label">Session Year</label>
                                    <div class="col-md-6">
                                        <select class="form-control select" data-live-search="true">
                                            <option>2017</option>
                                            <option>2016</option>
                                            <option>2015</option>
                                            <option>2014</option>
                                            <option>2013</option>
                                        </select>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="panel-footer">
                            <button class="btn btn-default">filter Attendance <i class="fa fa-search"></i></button>
                        </div>
                    </div>
                    <!-- END SUCCESS PANEL -->

                </div>

            </div>
            <div class="row">
                <div class="col-md-12">

                    <!-- START DATATABLE EXPORT -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title">Attendance Sheet</h3>
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
                                    <th>Student <i class="fa fa-arrow-down"></i> Date <i class="fa fa-arrow-right"></i>
                                    </th>
                                    <th>1</th>
                                    <th>2</th>
                                    <th>3</th>
                                    <th>4</th>
                                    <th>5</th>
                                    <th>6</th>
                                    <th>7</th>
                                    <th>8</th>
                                    <th>9</th>
                                    <th>11</th>
                                    <th>12</th>
                                    <th>13</th>
                                    <th>14</th>
                                    <th>15</th>
                                    <th>16</th>
                                    <th>17</th>
                                    <th>18</th>
                                    <th>19</th>
                                    <th>20</th>
                                    <th>21</th>
                                    <th>22</th>
                                    <th>23</th>
                                    <th>24</th>
                                    <th>25</th>
                                    <th>26</th>
                                    <th>27</th>
                                    <th>28</th>
                                    <th>29</th>
                                    <th>30</th>
                                    <th>31</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><i class="fa fa-userDto"></i> Richi</td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-userDto"></i> Richi</td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-userDto"></i> Richi</td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-userDto"></i> Richi</td>

                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-userDto"></i> Richi</td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>

                                </tr>
                                <tr>
                                    <td><i class="fa fa-userDto"></i> Sharuk</td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-userDto"></i> Richi</td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                </tr>
                                <tr>
                                    <td><i class="fa fa-userDto"></i> fuhimer Rahuman</td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-times" style="color: red"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                    <td><i class="fa fa-check" style="color: green"></i></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- END DATATABLE EXPORT -->

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
<script type="text/javascript" src="js/plugins/tagsinput/jquery.tagsinput.min.js"></script>
<script type='text/javascript' src='/js/plugins/jquery-validation/jquery.validate.js'></script>
<script type="text/javascript" src="js/plugins/bootstrap/bootstrap-file-input.js"></script>
<script type='text/javascript' src='/js/plugins/maskedinput/jquery.maskedinput.min.js'></script>

<script type="text/javascript" src="/js/plugins/datatables/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/tableExport.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/jquery.base64.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/html2canvas.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/jspdf/libs/sprintf.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/jspdf/jspdf.js"></script>
<script type="text/javascript" src="/js/plugins/tableexport/jspdf/libs/base64.js"></script>
<!-- END PAGE PLUGINS -->

<!-- START TEMPLATE -->
<script type="text/javascript" src="/js/settings.js"></script>

<script type="text/javascript" src="/js/plugins.js"></script>
<script type="text/javascript" src="/js/actions.js"></script>
<!-- END TEMPLATE -->

<!-- END SCRIPTS -->

</body>
</html>







