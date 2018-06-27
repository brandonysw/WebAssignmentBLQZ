<%@ Page Title="" Language="C#" MasterPageFile="~/loginTemplate.Master" AutoEventWireup="true" CodeBehind="ByCourse.aspx.cs" Inherits="eportfolioAssignment.ByCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
        <asp:ListItem Selected="True">Information Technology</asp:ListItem>
        <asp:ListItem>Information Security and Forensics</asp:ListItem>
        <asp:ListItem>Animation and 3D Arts</asp:ListItem>
        <asp:ListItem>Financial Informatics</asp:ListItem>
        <asp:ListItem>Multimedia and Animation</asp:ListItem>
    </asp:RadioButtonList>
</asp:Content>
