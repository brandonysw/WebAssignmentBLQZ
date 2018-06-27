<%@ Page Title="" Language="C#" MasterPageFile="~/StudentTemplate.Master" AutoEventWireup="true" CodeBehind="CreateProject.aspx.cs" Inherits="eportfolioAssignment.CreateProject" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 400px;
        }
        .auto-style3 {
            width: 400px;
            height: 60px;
        }
        .auto-style4 {
            height: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="w-100">
        <tr>
            <td class="auto-style2">Welcome,</td>
            <td>
                <asp:Label ID="createProjectStudentID" runat="server" Text="StudentID"></asp:Label>
                , fill in project details here.</td>
        </tr>
        <tr>
            <td class="auto-style3">Title:</td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox1" runat="server" Width="375px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Description:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Height="175px" Width="375px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Project Poster:</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="375px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Project URL:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="375px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <table cellpadding="0" cellspacing="0" class="w-100">
        <tr>
            <td class="auto-style2">Add Members here,</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">Members:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="375px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>members should be StudentID seperated by a comma<br />
                (e.g. 001, 002, 003, 004)</td>
        </tr>
    </table>
    <asp:Button ID="createProjectCreate" runat="server" Text="Create" />
</asp:Content>
