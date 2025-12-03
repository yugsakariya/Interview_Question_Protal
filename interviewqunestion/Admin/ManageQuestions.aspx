<%@ Page Title="Manage Questions" Language="C#" MasterPageFile="~/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="ManageQuestions.aspx.cs"
    Inherits="interview_questions.Admin.ManageQuestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="mb-3">Manage Questions</h3>

    <div class="card mb-4">
        <div class="card-header bg-light">
            <strong>Add / Edit Question</strong>
        </div>
        <div class="card-body row g-3">
            <div class="col-md-6">
                 <label class="form-label">Category</label>
                <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select"></asp:DropDownList>
            </div>
            <div class="col-md-6">
                <label class="form-label">Company</label>
                <asp:DropDownList ID="ddlCompany" runat="server" CssClass="form-select"></asp:DropDownList>
            </div>
    
             <div class="col-12">
                <label class="form-label">Question Text</label>
                <asp:TextBox ID="txtQuestion" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="2" />
            </div>
            <div class="col-md-6">
                <label class="form-label">Option A</label>
        
                 <asp:TextBox ID="txtA" runat="server" CssClass="form-control" />
            </div>
            <div class="col-md-6">
                <label class="form-label">Option B</label>
                <asp:TextBox ID="txtB" runat="server" CssClass="form-control" />
            </div>
            <div 
 class="col-md-6">
                <label class="form-label">Option C</label>
                <asp:TextBox ID="txtC" runat="server" CssClass="form-control" />
            </div>
            <div class="col-md-6">
                <label class="form-label">Option D</label>
                <asp:TextBox ID="txtD" runat="server" 
 CssClass="form-control" />
            </div>
            <div class="col-md-4">
                <label class="form-label">Correct Option</label>
                <asp:DropDownList ID="ddlCorrectOption" runat="server" CssClass="form-select">
                    <asp:ListItem Text="A" Value="A" />
                       <asp:ListItem Text="B" Value="B" />
                    <asp:ListItem Text="C" Value="C" />
                    <asp:ListItem Text="D" Value="D" />
                </asp:DropDownList>
            </div>
            <div class="col-12 mt-2">
   
                 <asp:HiddenField ID="hfQuestionId" runat="server" />
                <asp:Button ID="btnSave" runat="server" Text="Save Question"
                    CssClass="btn btn-primary" OnClick="btnSave_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Clear"
                    CssClass="btn btn-secondary 
 ms-2" OnClick="btnClear_Click" />
                <asp:Label ID="lblMsg" runat="server" CssClass="ms-3 text-success"></asp:Label>
            </div>
        </div>
    </div>

    <asp:GridView ID="gvQuestions" runat="server" AutoGenerateColumns="False"
        CssClass="table table-hover" DataKeyNames="Question_ID"
        OnRowCommand="gvQuestions_RowCommand">
        <Columns>
            <asp:BoundField DataField="Question_ID" HeaderText="ID" />
             <asp:BoundField DataField="Question_Text" HeaderText="Question" />
            <asp:BoundField DataField="Category_Name" HeaderText="Category" />
            <asp:BoundField DataField="Company_Name" HeaderText="Company" />
            <asp:BoundField DataField="CorrectOption" HeaderText="Answer" />
            <asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                 
                     <asp:Button ID="btnEdit" runat="server" Text="Edit"
                        CssClass="btn btn-sm btn-warning"
                        CommandName="EditQ" CommandArgument='<%# Eval("Question_ID") %>' />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete"
                 
                         CssClass="btn btn-sm btn-danger ms-1"
                        CommandName="DeleteQ" CommandArgument='<%# Eval("Question_ID") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>