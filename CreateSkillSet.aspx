<%@ Page Title="" Language="C#" MasterPageFile="~/SATemplate.Master" AutoEventWireup="true" CodeBehind="CreateSkillSet.aspx.cs" Inherits="systemAdmin.CreateSkillSet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <span style="font-weight: normal"><strong>Welcome System Administrator! </strong> <br />
        Choose a student to create skillset for.

    </span>
    </p>
    <div>

        <table class="w-100">
            <tr>
                <td style="width: 108px">Course&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td>
                    <asp:DropDownList ID="ddlCourse" runat="server" >
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 108px">Class&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</td>
                <td>
                    <asp:DropDownList ID="ddlClass" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 108px">Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </td>
                <td>
                    <asp:DropDownList ID="ddlStudentName" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="height: 32px; width: 108px">Skills Set(s) :</td>
                <td rowspan="5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="151px" Width="580px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 32px; width: 108px"></td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                </td>
            </tr>
            <tr>
                <td style="width: 108px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
