<%@ Page Title="" Language="C#" MasterPageFile="~/ParentTemplate.Master" AutoEventWireup="true" CodeBehind="ParentMaster.aspx.cs" Inherits="eportfolioAssignment.ParentMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Beautiful Parent Master Page (BLQZ)</p>
    <p>
        Welcome,
        <asp:Label ID="parentMasterParentID" runat="server" Text="ParentID"></asp:Label>
    </p>
</asp:Content>
