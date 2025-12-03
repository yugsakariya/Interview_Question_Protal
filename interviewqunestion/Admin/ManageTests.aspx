<%@ Page Title="Manage Tests" Language="C#" MasterPageFile="~/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="ManageTests.aspx.cs"
    Inherits="interview_questions.Admin.ManageTests" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="mb-3">Manage Tests</h3>

    <div class="card mb-4">
        <div class="card-body row g-3">
            <div class="col-md-6">
                <label class="form-label">Test Name</label>
                <asp:TextBox ID="txtTestName" runat="server" CssClass="form-control" />
        
             </div>
            <div class="col-md-6">
                <label class="form-label">Category</label>
                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select"></asp:DropDownList>
            </div>
            <div class="col-md-4">
                <label class="form-label">Total Marks</label>
    
                 <asp:TextBox ID="txtTotalMarks" runat="server" CssClass="form-control" TextMode="Number" />
            </div>
            <div class="col-md-4">
                <label class="form-label">Duration (Minutes)</label>
                <asp:TextBox ID="txtDuration" runat="server" CssClass="form-control" TextMode="Number" />
            </div>
       
             <div class="col-md-4">
                <label class="form-label">Created By</label>
                <asp:TextBox ID="txtCreatedBy" runat="server" CssClass="form-control" />
            </div>
            <div class="col-12">
                <asp:HiddenField ID="hfTestId" runat="server" />
            
                 <asp:Button ID="btnSave" runat="server" Text="Save Test"
                    CssClass="btn btn-primary" OnClick="btnSave_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Clear"
                    CssClass="btn btn-secondary ms-2" OnClick="btnClear_Click" />
                <asp:Label ID="lblMsg" runat="server" CssClass="ms-3 text-success"></asp:Label>
             </div>
        </div>
    </div>

    <asp:GridView ID="gvTests" runat="server" AutoGenerateColumns="False"
        CssClass="table table-hover" DataKeyNames="Test_ID"
        OnRowCommand="gvTests_RowCommand">
        <Columns>
            <asp:BoundField DataField="Test_ID" HeaderText="ID" />
            <asp:BoundField DataField="Test_Name" HeaderText="Test" />
            <asp:BoundField DataField="Category_Name" HeaderText="Category" />
    
             <asp:BoundField DataField="TotalMarks" HeaderText="Marks" />
            <asp:BoundField DataField="DurationMinutes" HeaderText="Duration" />
            <asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                    <asp:Button ID="btnEdit" runat="server" Text="Edit"
                      
                   CommandName="EditT" CommandArgument='<%# Eval("Test_ID") %>'
                        CssClass="btn btn-sm btn-warning" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete"
                        CommandName="DeleteT" CommandArgument='<%# Eval("Test_ID") %>'
                  
                       CssClass="btn btn-sm btn-danger ms-1" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>