<%@ Page Title="" Language="C#" MasterPageFile="~/SysAdminTemplate.Master" AutoEventWireup="true" CodeBehind="CreateStudent.aspx.cs" Inherits="eportfolioAssignment.CreateStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        Create Mentor</td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvStudentName" runat="server" ControlToValidate="txtStudentName" Display="Dynamic" ErrorMessage="Please enter a student name!" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Course</td>
                    <td>
                        <asp:DropDownList ID="ddlCourse" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvCourse" runat="server" ControlToValidate="ddlCourse" Display="Dynamic" ErrorMessage="Please enter a student Course!" ForeColor="Red" InitialValue="--SELECT--"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email Address</td>
                    <td>
                        <asp:TextBox ID="txtStudentEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtStudentEmail" Display="Dynamic" ErrorMessage="Please enter an email!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtStudentEmail" Display="Dynamic" ErrorMessage="Please enter a valid email address!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:CustomValidator ID="cuvEmail" runat="server" Display="Dynamic" ErrorMessage="Email has been used!" ForeColor="Red" OnServerValidate="cuvEmail_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>Mentor&#39;s Name</td>
                    <td>
                        <asp:DropDownList ID="ddlMentors" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfvMentor" runat="server" ControlToValidate="ddlMentors" Display="Dynamic" ErrorMessage="Please enter a Mentor" ForeColor="Red" InitialValue="--SELECT--"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnCreateStudent" runat="server" Height="31px" Text="Create" OnClick="btnCreateStudent_Click" />
                        <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
</asp:Content>
