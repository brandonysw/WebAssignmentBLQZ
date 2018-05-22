<%@ Page Title="" Language="C#" MasterPageFile="~/SATemplate.Master" AutoEventWireup="true" CodeBehind="ApprovedReview.aspx.cs" Inherits="systemAdmin.ApprovedReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span style="font-weight: normal"><strong>Welcome System Administrator! </strong> <br />
        Here are the requested pending to view requests.
        </span>
    </p>
    <p>
        <asp:GridView ID="gvApprovedReviews" runat="server" Width="1246px"></asp:GridView>
    </p>
</asp:Content>
