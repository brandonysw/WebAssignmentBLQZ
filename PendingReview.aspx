<%@ Page Title="" Language="C#" MasterPageFile="~/SATemplate.Master" AutoEventWireup="true" CodeBehind="PendingReview.aspx.cs" Inherits="systemAdmin.PendingReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span style="font-weight: normal"><strong>Welcome System Administrator! </strong> <br />
        Here are the requested pending to view requests.
        </span>
    </p>
    <table class="w-100">
        <tr>
            <td style="width: 150px">RequestID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 10px">:</td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px">ParentID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 10px">:</td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 150px">Parent&#39;s Name&nbsp;&nbsp;&nbsp; </td>
            <td style="height: 31px; width: 10px">:</td>
            <td style="height: 31px" colspan="3"></td>
        </tr>
        <tr>
            <td style="width: 150px">StudentID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 10px">:</td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px">Student&#39;s Name </td>
            <td style="width: 10px">:</td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 420px">&nbsp;</td>
            <td style="width: 180px">
                <asp:Button ID="Button1" runat="server" BorderColor="Black" BorderStyle="Solid" Text="Approve" OnClick="Button1_Click" />
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" BorderColor="Black" BorderStyle="Solid" Text="Reject" />
            </td>
        </tr>
    </table>
    <p>

    </p>
     <table class="w-100" border="0">
        <tr>
            <td style="width: 150px">RequestID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 10px">:</td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px">ParentID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 10px">:</td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 31px; width: 150px">Parent&#39;s Name&nbsp;&nbsp;&nbsp; </td>
            <td style="height: 31px; width: 10px">:</td>
            <td style="height: 31px" colspan="3"></td>
        </tr>
        <tr>
            <td style="width: 150px">StudentID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 10px">:</td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px">Student&#39;s Name </td>
            <td style="width: 10px">:</td>
            <td colspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 150px">&nbsp;</td>
            <td style="width: 10px">&nbsp;</td>
            <td style="width: 420px">&nbsp;</td>
            <td style="width: 180px">
                <asp:Button ID="Button2" runat="server" BorderColor="Black" BorderStyle="Solid" Text="Approve" />
            </td>
            <td>
                <asp:Button ID="Button4" runat="server" BorderColor="Black" BorderStyle="Solid" Text="Reject" />
            </td>
        </tr>
    </table>
</asp:Content>
