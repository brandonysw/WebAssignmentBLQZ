<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="StudentMenu.ascx.cs" Inherits="eportfolioAssignment.StudentMenu" %>
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
                <a class="nav-link" href="UpdateProfile.aspx">Update Personal Profile</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="CreateProject.aspx">Create Project Portfolio</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="AcknowledgeSuggestion.aspx">Acknowledge Suggestions</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="UpdateProject.aspx">Update Project</a>
            </li>
        </ul>
        <!-- Links that are aligned to the right, ml-auto: left margin auto-adjusted -->
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <!-- A Web Form Control button for logging out user -->
                <asp:Button ID="btnLogOut" runat="server" Text="Log Out" CssClass="btn btn-link nav-link" CausesValidation="False" OnClick="btnLogOut_Click" />
            </li>
        </ul>
    </div>
</nav>