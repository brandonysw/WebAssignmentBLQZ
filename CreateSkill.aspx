<%@ Page Title="" Language="C#" MasterPageFile="~/SysAdminTemplate.Master" AutoEventWireup="true" CodeBehind="CreateSkill.aspx.cs" Inherits="eportfolioAssignment.CreateSkill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="w-100">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>

            <tr>
                <td>Skill Set Name: </td>
                <td>
                    <asp:TextBox ID="txtSkillName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvSkillSet" runat="server" ControlToValidate="txtSkillName" Display="Dynamic" ErrorMessage="Please enter a skill set name!" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cuvSkillSet" runat="server" Display="Dynamic" ErrorMessage="Skillset is already in the database!" ForeColor="Red" OnServerValidate="cuvSkillSet_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnConfirm" runat="server" Height="32px" Text="Confirm" OnClick="btnConfirm_Click" />
                </td>
            </tr>
        </table>
</asp:Content>
