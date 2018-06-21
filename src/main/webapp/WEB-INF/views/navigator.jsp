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
<ul class="x-navigation">
    <li class="xn-logo">
        <a href="index.html">Aurora Systems</a>
        <a href="#" class="x-navigation-control"></a>
    </li>
    <%--<li class="xn-profile">--%>
    <%--<a href="#" class="profile-mini">--%>
    <%--<img src="/assets/images/users/avatar.jpg" alt="John Doe"/>--%>
    <%--</a>--%>
    <%--<div class="profile">--%>
    <%--<div class="profile-image">--%>
    <%--<img src="/assets/images/users/love.jpeg" alt="John Doe"/>--%>
    <%--</div>--%>
    <%--<div class="profile-data">--%>
    <%--<div class="profile-data-name">John Doe</div>--%>
    <%--<div class="profile-data-title">Web Developer/Designer</div>--%>
    <%--</div>--%>
    <%--<div class="profile-controls">--%>
    <%--<a href="pages-profile.html" class="profile-control-left"><span class="fa fa-info"></span></a>--%>
    <%--<a href="pages-messages.html" class="profile-control-right"><span class="fa fa-envelope"></span></a>--%>
    <%--</div>--%>
    <%--</div>--%>
    <%--</li>--%>
    <li class="xn-title">NAVIGATION</li>
    <br>
    <br>
    <br>
    <div class="clearfix"></div>
    <li class="active">
        <a href="/admin_dashboard"><span class="fa fa-dashboard"></span> <span class="xn-text">Dashboard</span></a>
    </li>
    <li class="active">
        <a href="/new/student"><span class="fa fa-pencil"></span> <span class="xn-text">Registration</span></a>
    </li>
    <%--<li class="xn-openable">--%>
        <%--<a href="/new/student"><span class="fa fa-sitemap"></span> <span class="xn-text">Registration</span></a>--%>
        <%--<ul>--%>
            <%--<li class="xn-openable">--%>
                <%--<a href="#"><span class="fa fa-group"></span> <span class="xn-text">Students</span></a>--%>
                <%--<ul>--%>
                    <%--<li><a href="/new/student"><span class="fa fa-male"></span>New Profile</a></li>--%>
                    <%--<li><a href="/all/student"><span class="fa fa-users"></span>All Students</a></li>--%>
                    <%--<li><a href="/student/promotion"><span class="fa fa-level-up"></span>Student Promotion</a></li>--%>
                    <%--<li><a href="/student/attendance"><span class="fa fa-list-alt"></span>Attendance</a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>
            <%--<li class="xn-openable">--%>
                <%--<a href="#"><span class="fa fa-group"></span> <span class="xn-text">Parents</span></a>--%>
                <%--<ul>--%>
                    <%--<li><a href="/parents/registration"><span class="fa fa-male"></span>New Profile</a></li>--%>
                    <%--<li><a href="/all/parents"><span class="fa fa-users"></span>All Parents</a></li>--%>
                    <%--<li><a href="/search/students"><span class="fa fa-female"></span>Children</a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>
            <%--<li class="xn-openable">--%>
                <%--<a href="#"><span class="fa fa-group"></span> <span class="xn-text">Teachers</span></a>--%>
                <%--<ul>--%>
                    <%--<li><a href="/new/teacher/profile"><span class="fa fa-male"></span>New Profile</a></li>--%>
                    <%--<li><a href="/all/teachers/accounts"><span class="fa fa-users"></span>All Teachers</a></li>--%>
                    <%--</li>--%>
                <%--</ul>--%>
            <%--</li>--%>
        <%--</ul>--%>
    <%--</li>--%>
    <li class="active">
        <a href="/page/not found"><span class="fa fa-money"></span> <span class="xn-text">Payment Methods</span></a>
    </li>
    <li class="active">
        <a href="/page/not found"><span class="fa fa-certificate"></span> <span class="xn-text">Exam Results</span></a>
    </li>
    <li class="active">
        <a href="/student/exam/schedule"><span class="fa fa-certificate"></span> <span class="xn-text">Exam Schedules</span></a>
    </li>
    <li class="active">
        <a href="/page/not found"><span class="fa fa-calendar"></span> <span class="xn-text">Training Schedule</span></a>
    </li>
    <li class="active">
        <a href="/page/not found"><span class="fa fa-envelope"></span> <span class="xn-text">SMS Service</span></a>
    </li>
    <li class="active">
        <a href="/page/not found"><span class="fa fa-phone"></span> <span class="xn-text">Call Service</span></a>
    </li>
    <li class="active">
        <a href="/page/not found"><span class="fa fa-shield"></span> <span class="xn-text">Staff Members</span></a>
    </li>
    <li class="active">
        <a href="/page/not found"><span class="fa fa-compass"></span> <span class="xn-text">Tech Support</span></a>
    </li>
    <li class="active">
        <a href="/page/not found"><span class="fa fa-sign-out"></span> <span class="xn-text">Log Out</span></a>
    </li>
    <%--<li class="xn-openable">--%>
        <%--<a href="#"><span class="fa fa-shield"></span> <span class="xn-text">Learning</span></a>--%>
        <%--<ul>--%>
            <%--<li class="xn-openable">--%>
                <%--<a href="#"><span class="fa fa-tags"></span> <span class="xn-text">Class</span></a>--%>
                <%--<ul>--%>
                    <%--<li><a href="pages-gallery.html"><span class="fa fa-tag"></span>Add Class</a></li>--%>
                    <%--<li><a href="pages-profile.html"><span class="fa fa-tasks"></span>All Class</a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>
            <%--<li class="xn-openable">--%>
                <%--<a href="#"><span class="fa fa-book"></span> <span class="xn-text">Subjects</span></a>--%>
                <%--<ul>--%>
                    <%--<li><a href="pages-gallery.html"><span class="fa fa-plus"></span>Add Subject</a></li>--%>
                    <%--<li><a href="pages-profile.html"><span class="fa fa-list-ol"></span>All Subjects</a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>
            <%--<li class="xn-openable">--%>
                <%--<a href="#"><span class="fa fa-pencil"></span> <span class="xn-text">Exams</span></a>--%>
                <%--<ul>--%>
                    <%--<li><a href="pages-gallery.html"><span class="fa fa-table"></span>Exam Schedule</a></li>--%>
                    <%--<li><a href="pages-profile.html"><span class="fa fa-th"></span>Exam Grades</a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>
        <%--</ul>--%>
    <%--</li>--%>

    <%--<li class="xn-openable">--%>
        <%--<a href="#"><span class="fa fa-dollar"></span> <span class="xn-text">Payments</span></a>--%>
        <%--<ul>--%>
            <%--<li><a href="pages-gallery.html"><span class="fa fa-folder-open"></span>Fees Collections</a></li>--%>
            <%--<li><a href="pages-profile.html"><span class="fa fa-money"></span>Create Student Payment</a></li>--%>
            <%--<li><a href="pages-profile.html"><span class="fa fa-suitcase"></span>Add Expenses</a></li>--%>
            <%--<li><a href="pages-profile.html"><span class="fa fa-exchange"></span>All Expenses</a></li>--%>
        <%--</ul>--%>
    <%--</li>--%>
    <%--<li class="xn-openable">--%>
        <%--<a href="#"><span class="fa fa-star-half-o"></span> <span class="xn-text">Extra Functions</span></a>--%>
        <%--<ul>--%>
            <%--<li class="xn-openable">--%>
                <%--<a href="#"><span class="fa fa-building-o"></span> <span class="xn-text">Library Management</span></a>--%>
                <%--<ul>--%>
                    <%--<li><a href="pages-gallery.html"><span class="fa fa-plus"></span>Add Book</a></li>--%>
                    <%--<li><a href="pages-profile.html"><span class="fa fa-book"></span>All Books</a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>
            <%--<li class="xn-openable">--%>
                <%--<a href="#"><span class="fa fa-home"></span> <span class="xn-text">Transport And Hostel</span></a>--%>
                <%--<ul>--%>
                    <%--<li><a href="pages-gallery.html"><span class="fa fa-truck"></span>Transport</a></li>--%>
                    <%--<li><a href="pages-gallery.html"><span class="fa fa-group"></span>Hostels</a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>
            <%--<li class="xn-openable">--%>
                <%--<a href="#"><span class="fa fa-gears"></span> <span class="xn-text">System User Services</span></a>--%>
                <%--<ul>--%>
                    <%--<li><a href="pages-gallery.html"><span class="fa fa-pencil-square-o"></span>Notice Management</a>--%>
                    <%--</li>--%>
                    <%--<li><a href="pages-gallery.html"><span class="fa fa-envelope"></span>Message And Email</a></li>--%>
                    <%--<li><a href="pages-gallery.html"><span class="fa fa-wrench"></span>System User Accounts</a>--%>
                    <%--</li>--%>
                <%--</ul>--%>
            <%--</li>--%>
            <%--<li class="xn-openable">--%>
                <%--<a href="#"><span class="glyphicon glyphicon-certificate"></span> <span--%>
                        <%--class="xn-text">Developers</span></a>--%>
                <%--<ul>--%>
                    <%--<li><a href="pages-gallery.html"><span class="fa fa-hand-o-right"></span>About Us</a></li>--%>
                    <%--<li><a href="pages-gallery.html"><span class="fa fa-hand-o-right"></span>Report Bugs</a></li>--%>
                    <%--<li><a href="pages-gallery.html"><span class="fa fa-hand-o-right"></span>System Manual</a></li>--%>
                <%--</ul>--%>
            <%--</li>--%>
        </ul>
    </li>
    <%--<li class="xn-profile">--%>
        <%--<a href="#" class="profile-mini">--%>
            <%--<img src="/assets/images/users/avatar.jpg" alt="John Doe"/>--%>
        <%--</a>--%>
        <%--<div class="profile">--%>
            <%--<div class="profile-image">--%>
                <%--<img src="/assets/images/users/love.jpeg" alt="John Doe"/>--%>
            <%--</div>--%>
            <%--<div class="profile-data">--%>
                <%--<div class="profile-data-name">John Doe</div>--%>
                <%--<div class="profile-data-title">Web Developer/Designer</div>--%>
            <%--</div>--%>
            <%--<div class="profile-controls">--%>
                <%--<a href="pages-profile.html" class="profile-control-left"><span class="fa fa-info"></span></a>--%>
                <%--<a href="pages-messages.html" class="profile-control-right"><span class="fa fa-envelope"></span></a>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</li>--%>
</ul>
<!-- END X-NAVIGATION -->

<!-- END PAGE SIDEBAR -->
