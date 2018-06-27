<%@ Page Title="" Language="C#" MasterPageFile="~/StudentTemplate.Master" AutoEventWireup="true" CodeBehind="StudentMaster.aspx.cs" Inherits="eportfolioAssignment.StudentMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Beautiful Student Master Page (BLQZ)</p>
    <p>
        Welcome,
        <asp:Label ID="studentMasterStudentID" runat="server" Text="StudentID"></asp:Label>
    </p>
</asp:Content>
