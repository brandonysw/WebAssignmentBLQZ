<%@ Page Title="" Language="C#" MasterPageFile="~/loginTemplate.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="eportfolioAssignment.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 286px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="w-100">
        <tr>
            <td class="auto-style2">Login Page</td>
            <td>ABC Polytechnic (Group BLQZ)</td>
        </tr>
        <tr>
            <td class="auto-style2">Username:</td>
            <td>
                <asp:TextBox ID="loginUsername" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Password:</td>
            <td>
                <asp:TextBox ID="loginPassword" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Login Status:</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">System Admin</asp:ListItem>
                    <asp:ListItem>Student</asp:ListItem>
                    <asp:ListItem>Mentor</asp:ListItem>
                    <asp:ListItem>Parent</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
    </table>
    <asp:Button ID="loginButton" runat="server" Text="Login" />
</asp:Content>
