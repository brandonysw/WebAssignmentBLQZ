<%@ Page Title="" Language="C#" MasterPageFile="~/SATemplate.Master" AutoEventWireup="true" CodeBehind="ApprovedRequest.aspx.cs" Inherits="systemAdmin.ApprovedRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span style="font-weight: normal">You've <strong>APPROVED</strong> the request.
    </span>
    </p>
    <table class="w-100" style="width: 1261px">
        <tr>
            <td style="width: 550px">&nbsp;</td>
            <td style="width: 420px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Return to requests page" />
            </td>
            <td style="width: 421px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
