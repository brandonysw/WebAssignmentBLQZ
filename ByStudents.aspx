<%@ Page Title="" Language="C#" MasterPageFile="~/loginTemplate.Master" AutoEventWireup="true" CodeBehind="ByStudents.aspx.cs" Inherits="eportfolioAssignment.ByStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:RadioButtonList ID="listOfMentors" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Mr Tong</asp:ListItem>
            <asp:ListItem>Mrs Tong</asp:ListItem>
            <asp:ListItem>Ms Tong</asp:ListItem>
            <asp:ListItem>Mdm Tong</asp:ListItem>
            <asp:ListItem>Mr Ton</asp:ListItem>
            <asp:ListItem>Mrs Ton</asp:ListItem>
            <asp:ListItem>Ms Ton</asp:ListItem>
            <asp:ListItem>Mdm Ton</asp:ListItem>
            <asp:ListItem>Mr To</asp:ListItem>
            <asp:ListItem Selected="True">Mrs To</asp:ListItem>
            <asp:ListItem>Ms To</asp:ListItem>
            <asp:ListItem>Mdm To</asp:ListItem>
        </asp:RadioButtonList>
    </p>
</asp:Content>
