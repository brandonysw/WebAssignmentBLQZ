<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ParentMenu.ascx.cs" Inherits="eportfolioAssignment.ParentMenu" %>
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
                <a class="nav-link" href="CreateParent.aspx">Create Parent Account</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="SubmitViewing.aspx">Submit Viewing Request</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ViewChild.aspx">View Child Portfolio</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="PostMessage.aspx">Post Message To Mentor</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="ViewRepliesParent.aspx">View Replies</a>
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