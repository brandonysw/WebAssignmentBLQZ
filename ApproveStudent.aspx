<%@ Page Title="" Language="C#" MasterPageFile="~/MentorTemplate.Master" AutoEventWireup="true" CodeBehind="ApproveStudent.aspx.cs" Inherits="eportfolioAssignment.ApproveStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  <div class="row"><div class="col-lg-12"><small><a href="HomePage.aspx">Home</a>&nbsp;>&nbsp;Approve Student's Portfolio</small></div></div>
 
      <div class="row"><div class="col-lg-12"><h3 class="text-center">Approve Student's Portfolio</h3></div></div><br />

      <div class="row">
        <div class="col-lg-10"> 
          <div class="card" id="divStudentList" runat="server">
                <div class="card-header"><center>Student List</center></div>
                <center>
                    <asp:Literal ID="ltMessage" runat="server"></asp:Literal>
                </center>

                    <div id="divPanel" class="panel-body" runat="server" style="overflow-y: scroll; height: 700px">
                        <div class="mid-width wrapItems" style="height:800px">

                        <asp:DataList ID="dlStudentList" runat="server"  Width="100%" RepeatDirection="Horizontal" RepeatColumns="3" OnItemCommand="dlStudentList_ItemCommand" DataKeyField="StudentID">
	                    <ItemTemplate>  
                                <div class="card-body" style="width:100%;">
                              
                                    <div class="card">
                                        <div class="card-header"><center> <%# Eval("Name") %></center></div>
                                            <div class="card-body" style="width:100%;text-align:center">
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# ConfigurationManager.AppSettings["StudentPhoto"].ToString() + Eval("Photo") %>' Width="150" Height="150"  />
                                            </div>
                                  
                                            <div class="card-footer" style="text-align:center">
                                                <asp:LinkButton ID="lkView" CssClass="btn btn-info" CausesValidation="false" PostBackUrl="#" runat="server">View</asp:LinkButton>
                                                <asp:LinkButton ID="lkApprove" runat="server" CausesValidation="false" CssClass="btn btn-primary" CommandName="Approve">Approve</asp:LinkButton>
                                          </div>
                                       </div>
                                    </div>
                                </div>
	                    </ItemTemplate>
                    </asp:DataList> 
                        </div>
                    </div>
           </div>
        </div>

        <div class="col-lg-1">
            Sort by <br />
                <asp:DropDownList ID="ddlSortBy" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ddlSortBy_SelectedIndexChanged">
                    <asp:ListItem Value="1">Latest First</asp:ListItem>
                    <asp:ListItem Value="2">Oldest First</asp:ListItem>
                    <asp:ListItem Value="3">Alphabetical</asp:ListItem>
                </asp:DropDownList>
        </div>
         <div class="col-lg-1">
            &nbsp;
        </div>
        </div>

</asp:Content>
