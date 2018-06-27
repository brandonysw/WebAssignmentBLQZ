<%@ Page Title="" Language="C#" MasterPageFile="~/StudentTemplate.Master" AutoEventWireup="true" CodeBehind="AcknowledgeSuggestion.aspx.cs" Inherits="eportfolioAssignment.AcknowledgeSuggestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 400px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table cellpadding="0" cellspacing="0" class="w-100">
        <tr>
            <td class="auto-style2">Welcome,</td>
            <td>
                <asp:Label ID="AcknowledgeSuggestionStudentID" runat="server" Text="StudentID"></asp:Label>
                , view and reply to suggestions down below.</td>
        </tr>
        <tr>
            <td class="auto-style2">Select Suggestion:</td>
            <td>
                <asp:DropDownList ID="acknowledgeSuggestionList" runat="server" Width="375px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Suggestion:</td>
            <td>
                <asp:Label ID="acknowledgeSuggestionSuggestion" runat="server" Text="Suggestion Text"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Date of Suggestion:</td>
            <td>
                <asp:Label ID="acknowledgeSuggestionDate" runat="server" Text="Date"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Status of Suggestion:</td>
            <td>
                <asp:Label ID="acknowledgeSuggestionStatus" runat="server" Text="Y/N"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Reply Suggestion:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="175px" Width="375px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <asp:Button ID="acknowledgeSuggestionReply" runat="server" Text="Reply" />
</asp:Content>
