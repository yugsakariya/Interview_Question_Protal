<%@ Page Title="Manage Categories" Language="C#" MasterPageFile="~/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="ManageCategories.aspx.cs"
    Inherits="interview_questions.Admin.ManageCategories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="mb-3">Manage Categories</h3>

    <div class="input-group mb-3" style="max-width:400px;">
        <asp:TextBox ID="txtCategoryName" runat="server" CssClass="form-control"
            Placeholder="Category name"></asp:TextBox>
        <asp:HiddenField ID="hfCategoryId" runat="server" />
        <asp:Button ID="btnSave" runat="server" Text="Save"
            CssClass="btn btn-primary" OnClick="btnSave_Click" />
        
 <asp:Button ID="btnCancel" runat="server" Text="Cancel"
            CssClass="btn btn-secondary" OnClick="btnCancel_Click" />
    </div>
    <asp:Label ID="lblMsg" runat="server" CssClass="text-success d-block mb-2"></asp:Label>

    <asp:GridView ID="gvCategories" runat="server" AutoGenerateColumns="False"
        CssClass="table table-hover" DataKeyNames="Category_ID"
        OnRowCommand="gvCategories_RowCommand">
        <Columns>
            <asp:BoundField DataField="Category_ID" HeaderText="ID" />
            <asp:BoundField DataField="Category_Name" HeaderText="Category" />
             <asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                    <asp:Button ID="btnEdit" runat="server" Text="Edit"
                        CommandName="EditRow" CommandArgument='<%# Eval("Category_ID") %>'
                        CssClass="btn btn-sm btn-warning" 
 />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete"
                        CommandName="DeleteRow" CommandArgument='<%# Eval("Category_ID") %>'
                        CssClass="btn btn-sm btn-danger ms-1" />
                </ItemTemplate>
             </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>