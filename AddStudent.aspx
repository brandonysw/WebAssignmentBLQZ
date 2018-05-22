﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SATemplate.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="systemAdmin.AddStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span style="font-weight: normal"><strong>Welcome System Administrator! 
    <br />
    </strong><table cellpadding="0" cellspacing="0" class="w-100">
        <tr>
            <td class="auto-style1" style="height: 30px; width: 131px"></td>
            <td style="height: 30px">Add Student Record</td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px">Name</span></td>
            <td>
                <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px; height: 30px;">Gender</td>
            <td style="height: 30px">
                <asp:RadioButton ID="radMale" runat="server" Checked="True" GroupName="Gender" Text="Male" />
                <asp:RadioButton ID="radFemale" runat="server" GroupName="Gender" Text="Female" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px; height: 39px;">Contact</span></td>
            <td style="height: 39px">
                <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px; font-weight: normal;">Email</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px; font-weight: normal;">Course</td>
            <td>
                <asp:TextBox ID="txtCourse" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px; font-weight: normal;">Mentor</td>
            <td>
                
                <asp:DropDownList ID="ddlMentor" runat="server">
                </asp:DropDownList>
                
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px; font-weight: normal;">&nbsp;</td>
            <td>
                <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm" />
            </td>
        </tr>
        <tr>
            <td class="auto-style1" style="width: 131px">&nbsp;</td>
            <td></span></td>
        </tr>
    </table>
    </span>
</asp:Content>
