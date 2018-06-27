<%@ Page Title="" Language="C#" MasterPageFile="~/MentorTemplate.Master" AutoEventWireup="true" CodeBehind="SearchStudentSkill.aspx.cs" Inherits="eportfolioAssignment.SearchStudentSkill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <div class="row"> <div class="col-lg-12"><small><a href="HomePage.aspx">Home</a>&nbsp;>&nbsp;Search Students with Skill Set</small></div></div>
  
   <div class="row"><div class="col-lg-12"><h3 class="text-center">Search Students with Skill Set</h3></div></div><br />

   <div class="row">
        <div class="col-lg-3">&nbsp;</div>
        <div class="col-lg-6">
           <div class="row"> 
                  <table style="width:100%;">
                 <tr><td style="vertical-align:top;text-align:right;width:30%">
                    <label for="SkillSet">Skill Set</label> <span style="color:red">*</span>
                 </td>
                 <td style="padding-left:10px">
                    <asp:DropDownList ID="ddlSkillSet" runat="server" Width="248px" Height="28px" class="form-control" AppendDataBoundItems="true">
                         <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>    
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" SetFocusOnError="true" ForeColor="Red" Display="Dynamic" ControlToValidate="ddlSkillSet" ErrorMessage="Required"></asp:RequiredFieldValidator>
                <br />
                    <asp:Button ID="BtSearch" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="BtSearch_Click" />
                     <br />
                   
                 </td></tr>
           
                   <tr><td colspan="2" style="text-align:center">
                   <asp:Label ID="lblMessage" runat="server" Visible="false"></asp:Label>
                </td></tr>
                </table>  
                <br /><br />

           
                  <asp:GridView ID="GridView1" Visible="false" CellPadding="2" ForeColor="#333333" GridLines="Both" runat="server" EmptyDataText="No record" class="table table-striped" AutoGenerateColumns="false" AllowSorting="true" OnSorting="GridView1_Sorting"  DataKeyNames="StudentID" OnPageIndexChanging="GridView1_PageIndexChanging">
                <Columns>
                        <asp:TemplateField HeaderText="Name" SortExpression="Name" ItemStyle-Width="30%">
                            <ItemTemplate>
                            <asp:Label ID="lbName" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Email Address" SortExpression="EmailAddr" ItemStyle-Width="70%">
                            <ItemTemplate>
                            <asp:Label ID="lbEmailAddr" runat="server" Text='<%# Eval("EmailAddr") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Course" SortExpression="Course" ItemStyle-Width="70%">
                            <ItemTemplate>
                            <asp:Label ID="lbCourse" runat="server" Text='<%# Eval("Course") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
               
                </Columns>
                </asp:gridview>
        
       
           </div>
        </div>

        <div class="col-lg-3">&nbsp;</div>

   </div>
</asp:Content>
