<%@ Page Title="" Language="C#" MasterPageFile="~/MentorTemplate.Master" AutoEventWireup="true" CodeBehind="MentorMaster.aspx.cs" Inherits="eportfolioAssignment.MentorMaster" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Beautiful Mentor Master Page (BLQZ)</p>
    <p>
        Welcome,
        <asp:Label ID="mentorMasterMentorID" runat="server" Text="MentorID"></asp:Label>
    </p>
</asp:Content>
