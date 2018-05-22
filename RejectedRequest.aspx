<%@ Page Title="" Language="C#" MasterPageFile="~/SATemplate.Master" AutoEventWireup="true" CodeBehind="RejectedRequest.aspx.cs" Inherits="systemAdmin.RejectedRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span style="font-weight: normal">You've <strong>REJECTED</strong> the request.
    </span>
    </p>
    <table class="w-100" style="width: 1261px">
        <tr>
            <td style="width: 550px">&nbsp;</td>
            <td style="width: 420px">
                <asp:Button ID="Button2" runat="server" Text="Return to request pages" />
            </td>
            <td style="width: 421px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
