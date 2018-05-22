<%@ Page Title="" Language="C#" MasterPageFile="~/SATemplate.Master" AutoEventWireup="true" CodeBehind="AddMentor.aspx.cs" Inherits="systemAdmin.AddMentor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span style="font-weight: normal"><strong>Welcome System Administrator! </strong></span><br />
    <br />
    <table cellpadding="0" cellspacing="0" class="w-100">
        <tr>
            <td class="auto-style1" style="height: 30px; width: 131px"></td>
            <td style="height: 30px">Add Mentor Record</td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px">Name</td>
            <td>
                <asp:TextBox ID="txtMentorName" runat="server"></asp:TextBox>
                <asp:CustomValidator ID="cvName" runat="server" Display="Dynamic" ErrorMessage="Please enter mentor name" ForeColor="Red" ControlToValidate="txtMentorName">*</asp:CustomValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px">Gender</td>
            <td>
                <asp:RadioButton ID="radMale" runat="server" Checked="True" GroupName="Gender" Text="Male" />
                <asp:RadioButton ID="radFemale" runat="server" GroupName="Gender" Text="Female" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px; height: 39px;">Contact</td>
            <td style="height: 39px">
                <asp:TextBox runat="server" ID="txtContact"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px">Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px">&nbsp;</td>
            <td>
                <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm" />
                <asp:Label ID="lblValues" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
