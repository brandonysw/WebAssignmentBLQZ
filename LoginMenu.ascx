<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginMenu.ascx.cs" Inherits="eportfolioAssignment.LoginMenu" %>
<!-- A grey navbar that expands horizontally at medium device -->
<nav class="navbar navbar-expand-md bg-light navbar-light">
    <!-- The brand(or icon) of the navbar -->
    <a class="navbar-brand" href="Main.aspx"style="font-size:32px; font-weight:bold; color:#3399FF;">
        ABC Polytechnic e-Portfolio
    </a>
    <!-- Toggle/collapsible Button, also known as hamburger button -->
    <button class="navbar-toggler" type="button" data-toggle="collapse"
        data-target="#staffNavbar">
        <span class="navbar-toggler-icon"></span>

    </button>
    <!-- Links in the navbar, displayed as drop-down list when collapsed -->
    <div class="collapse navbar-collapse" id="staffNavbar">
        <!-- Links that are aligned to the left, mr-auto: right margin auto-adjusted -->
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="AboutUs.aspx">About Us</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="DirectorsMessage.aspx">Director's Message</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ByStudents.aspx">By Students/Mentor</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ByCourse.aspx">By Course Set</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Login.aspx">Log In</a>
            </li>
        </ul>
    </div>
</nav>