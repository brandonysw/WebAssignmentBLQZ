<%@ Page Title="" Language="C#" MasterPageFile="~/SysAdminTemplate.Master" AutoEventWireup="true" CodeBehind="CreateMentor.aspx.cs" Inherits="eportfolioAssignment.CreateMentor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div"> 
            
            
            <span">Create Mentor</span>
            <table class="w-100">
                <tr>
                    <td>Mentor Name</td>
                    <td>
                        <asp:TextBox ID="txtMentorName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMentorName" runat="server" ControlToValidate="txtMentorName" Display="Dynamic" ErrorMessage="Please enter a mentor name!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email Address</td>
                    <td>
                        <asp:TextBox ID="txtMentorEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvMentorEmail" runat="server" ControlToValidate="txtMentorEmail" Display="Dynamic" ErrorMessage="Please enter an email address!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revMentorEmail" runat="server" ControlToValidate="txtMentorEmail" Display="Dynamic" ErrorMessage="Please enter a valid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:CustomValidator ID="cuvEmail" runat="server" Display="Dynamic" ErrorMessage="Email has already been used." ForeColor="Red" OnServerValidate="cuvEmail_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnCreateMentor" runat="server" Height="31px" Text="Create" OnClick="btnCreateMentor_Click" />
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>
