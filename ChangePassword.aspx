<%@ Page Title="" Language="C#" MasterPageFile="~/MentorTemplate.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="eportfolioAssignment.ChangePassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="row"> <div class="col-lg-12"><small><a href="HomePage.aspx">Home</a>&nbsp;>&nbsp;Change Password</small></div></div>
   <div class="row"><div class="col-lg-12"><h3 class="text-center">Change Password</h3></div></div><br />

   <div class="row">

        <div class="col-lg-4">&nbsp;</div>
        <div class="col-lg-4">
            <div id="updateForm" runat="server">
                <small><label>Tips: New password should contain at least 8 characters and at least one of them is a digit (0 to 9).</label></small>
                <br /> <br />
                <label for="password">New Password</label> <span style="color:red">*</span>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>  
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" ControlToValidate="txtPassword" ErrorMessage="Required"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="BtChangePassword" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="BtChangePassword_Click" />
                <br />
                </div>
            <br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text="" Visible="false"></asp:Label>
       </div>

        <div class="col-lg-4">&nbsp;</div>

  </div>

</asp:Content>
