<%@ Page Title="" Language="C#" MasterPageFile="~/SATemplate.Master" AutoEventWireup="true" CodeBehind="UploadStudentPhoto.aspx.cs" Inherits="systemAdmin.UploadStudentPhoto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100" style="width: 88%">
        <tr>
            <td colspan="2" style="height: 32px"><span style="font-weight: normal"><strong>Please insert STUDENT&#39;s Picture,</strong></span></td>
            <td style="height: 32px"></td>
            <td style="height: 32px"></td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td>&nbsp;</td>
            <td rowspan="6" style="width: 819px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="imgUploaded" runat="server" Height="207px" Width="271px" />
            </td>
        </tr>
        <tr>
            <td style="width: 126px; "><span style="font-weight: normal">Name:</td>
            <td style="width: 190px; ">
                <asp:Label ID="lblStudNme" runat="server"></asp:Label>
                </span></td>
            <td></td>
        </tr>
        <tr>
            <td style="width: 126px"><span style="font-weight: normal">Contact:</span></td>
            <td style="width: 190px"><span style="font-weight: normal">
                <asp:Label ID="lblContact" runat="server"></asp:Label>
            </td>
            <td></span></td>
        </tr>
        <tr>
            <td style="width: 126px"><span style="font-weight: normal">eMail:</td>
            <td style="width: 190px"><span style="font-weight: normal">
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
            </td>
            <td></span></td>
        </tr>
        <tr>
            <td style="width: 126px"><span style="font-weight: normal">Course:</td>
            <td style="width: 190px"><span style="font-weight: normal">
                <asp:Label ID="lblCourse" runat="server"></asp:Label>
            </td>
            <td></span></td>
        </tr>
        <tr>
            <td style="width: 126px"><span style="font-weight: normal">Mentor:</td>
            <td style="width: 190px"><span style="font-weight: normal">
                <asp:Label ID="lblMentor" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 126px">&nbsp;</td>
            <td style="width: 190px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 126px">&nbsp;</td>
            <td style="width: 190px">&nbsp;</td>
            <td></span></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:FileUpload ID="fuPicture" runat="server" Width="381px" />
            </td>
        </tr>
        <tr>
            <td style="width: 126px"><span style="font-weight: normal"></td>
            <td style="width: 190px">&nbsp;</td>
            <td></span></td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
