<%--
  Created by IntelliJ IDEA.
  User: Akvasoft
  Date: 19/03/2018
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- START PAGE SIDEBAR -->

<!-- START X-NAVIGATION -->
<script src="js/app_js/Navigator.js"></script>
<ul class="x-navigation">
    <li class="xn-logo">
        <a href="/dashboard">Aurora</a>
        <a href="#" class="x-navigation-control"></a>
    </li>

    <li class="xn-title" style="color:#008803; font-weight: bold;">NAVIGATION</li>
    <br>
    <br>
    <br>
    <div class="clearfix"></div>
    <li  id="dash" onclick="setActiveClass(this.id)">
        <a href="/dashboard"><span class="fa fa-dashboard"></span> <span class="xn-text">Dashboard</span></a>
    </li>
    <li  id="registration" onclick="setActiveClass(this.id)">
        <a href="/new/student"><span class="fa fa-pencil"></span> <span class="xn-text">Registration</span></a>
    </li>
    <li  id="payment" onclick="setActiveClass(this.id)">
        <a href="/student/payments"><span class="fa fa-money"></span> <span class="xn-text">Payments</span></a>
    </li>
    <li  id="result" onclick="setActiveClass(this.id)">
        <a href="/student/exam/results"><span class="fa fa-certificate"></span> <span class="xn-text">Exam Results</span></a>
    </li>
    <li  id="schedule" onclick="setActiveClass(this.id)">
        <a href="/student/exam/schedule"><span class="fa fa-paper-plane"></span> <span
                class="xn-text">Exam Schedules</span></a>
    </li>
    <li  id="training" onclick="setActiveClass(this.id)">
        <a href="/page/not found"><span class="fa fa-calendar"></span> <span
                class="xn-text">Training Schedule</span></a>
    </li>
    <li  id="sms" onclick="setActiveClass(this.id)">
        <a href="/page/not found"><span class="fa fa-envelope"></span> <span class="xn-text">SMS Service</span></a>
    </li>
    <li  id="call" onclick="setActiveClass(this.id)">
        <a href="/page/not found"><span class="fa fa-phone"></span> <span class="xn-text">Call Service</span></a>
    </li>
    <li  id="logout" onclick="setActiveClass(this.id)">
        <a href="/page/not found"><span class="fa fa-users"></span> <span class="xn-text">E mail Service</span></a>
    </li>
    <li  id="staff" onclick="setActiveClass(this.id)">
        <a href="/staff/members"><span class="fa fa-shield"></span> <span class="xn-text">Staff Members</span></a>
    </li>
    <li  id="tech" onclick="setActiveClass(this.id)">
        <a href="/tech/support"><span class="fa fa-compass"></span> <span class="xn-text">Tech Support</span></a>
    </li>

</ul>
</li>

</ul>
<!-- END X-NAVIGATION -->

<!-- END PAGE SIDEBAR -->
