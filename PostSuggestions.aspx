<%@ Page Title="" Language="C#" MasterPageFile="~/MentorTemplate.Master" AutoEventWireup="true" CodeBehind="PostSuggestions.aspx.cs" Inherits="eportfolioAssignment.PostSuggestions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="row"> <div class="col-lg-12"><small><a href="HomePage.aspx">Home</a>&nbsp;>&nbsp;Post Suggestions For Improvements</small></div></div>

  <div class="row"><div class="col-lg-12"><h3 class="text-center">Post Suggestions For Improvements</h3></div></div><br />

   <div class="row">
          <div class="col-lg-3">&nbsp;</div>

          <div class="col-lg-6">
              
               <div class="row"> 

                   <table style="width:100%;">
                     <tr><td style="text-align:right;vertical-align:top;width:30%">
                        <label for="Student">Student</label> <span style="color:red">*</span>
                     </td>
                     <td style="padding-left:10px">
                        <asp:DropDownList ID="ddlStudent" runat="server" Width="340px" AppendDataBoundItems="true" Height="28px" class="form-control">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>   
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" ControlToValidate="ddlStudent" ErrorMessage="Required"></asp:RequiredFieldValidator>
                    </td></tr>
                    <tr><td style="text-align:right;vertical-align:top">
                    <label for="Description">Description</label> <span style="color:red">*</span>
                    </td><td style="padding-left:10px">          
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Height="100px" Width="339px" class="form-control"></asp:TextBox>
                      
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" ControlToValidate="txtDescription" ErrorMessage="Required"></asp:RequiredFieldValidator>
                        <br />
                    </td></tr>
                    <tr><td colspan="2" style="text-align:center">
                        <asp:Button ID="BtPost" runat="server" Text="Post" Width="100px" CssClass="btn btn-primary" OnClick="BtPost_Click" />
                    </td></tr>
                       <tr><td colspan="2" style="text-align:center">
                       <asp:Label ID="lblMessage" runat="server" Visible="false"></asp:Label>
                    </td></tr>
                    </table>  
                    <br /><br />
               </div>
            </div>

          <div class="col-lg-3">&nbsp;</div>
   </div>
</asp:Content>
