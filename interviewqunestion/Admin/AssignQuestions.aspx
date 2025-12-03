<%@ Page Title="Assign Questions" Language="C#" MasterPageFile="~/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="AssignQuestions.aspx.cs"
    Inherits="interview_questions.Admin.AssignQuestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="mb-3">Assign Questions to Tests</h3>

    <div class="row mb-3">
        <div class="col-md-6">
            <label class="form-label">Select Test</label>
            <asp:DropDownList ID="ddlTest" runat="server" CssClass="form-select"
                AutoPostBack="true" OnSelectedIndexChanged="ddlTest_SelectedIndexChanged"></asp:DropDownList>
        </div>
    </div>

 
     <asp:Label ID="lblMsg" runat="server" CssClass="text-success d-block mb-2"></asp:Label>

    <h5>All Questions</h5>
    <asp:GridView ID="gvAllQuestions" runat="server" AutoGenerateColumns="False"
        CssClass="table table-sm table-hover" DataKeyNames="Question_ID"
        OnRowCommand="gvAllQuestions_RowCommand">
        <Columns>
            <asp:BoundField DataField="Question_ID" HeaderText="ID" />
            <asp:BoundField DataField="Question_Text" HeaderText="Question" />
            <asp:TemplateField HeaderText="Assign">
          
           <ItemTemplate>
                    <asp:Button ID="btnAssign" runat="server" Text="Assign"
                        CommandName="Assign" CommandArgument='<%# Eval("Question_ID") %>'
                        CssClass="btn btn-sm btn-primary" />
                </ItemTemplate>
 
             </asp:TemplateField>
        </Columns>
    </asp:GridView>

    <h5 class="mt-4">Assigned Questions</h5>
    <asp:GridView ID="gvAssigned" runat="server" AutoGenerateColumns="False"
        CssClass="table table-sm table-hover" DataKeyNames="TQ_ID"
        OnRowCommand="gvAssigned_RowCommand">
        <Columns>
            <asp:BoundField DataField="TQ_ID" HeaderText="TQ_ID" />
            <asp:BoundField DataField="Question_ID" HeaderText="Question ID" />
      
             <asp:BoundField DataField="Question_Text" HeaderText="Question" />
            <asp:TemplateField HeaderText="Remove">
                <ItemTemplate>
                    <asp:Button ID="btnRemove" runat="server" Text="Remove"
                        CommandName="Remove" CommandArgument='<%# Eval("TQ_ID") %>'
            
                     CssClass="btn btn-sm btn-danger" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>