<%@ Page Title="" Language="C#" MasterPageFile="~/SATemplate.Master" AutoEventWireup="true" CodeBehind="ViewingRequest.aspx.cs" Inherits="systemAdmin.ViewingRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span style="font-weight: normal"><strong>Welcome System Administrator! </strong>
        

    </span>
    </p>
    <table class="w-100">
        <tr>
            <td style="width: 558px" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnPending" runat="server" BorderStyle="None" Text="View Pending Review(s)" OnClick="btnPending_Click" />
            </td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnApproved" runat="server" BorderStyle="None" Text="View Approved Review(s)" OnClick="btnApproved_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 558px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
