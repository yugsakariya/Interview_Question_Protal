<%@ Page Title="Manage Companies" Language="C#" MasterPageFile="~/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="ManageCompanies.aspx.cs"
    Inherits="interview_questions.Admin.ManageCompanies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="mb-3">Manage Companies</h3>

    <div class="input-group mb-3" style="max-width:400px;">
        <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control"
            Placeholder="Company name"></asp:TextBox>
        <asp:HiddenField ID="hfCompanyId" runat="server" />
        <asp:Button ID="btnSave" runat="server" Text="Save"
            CssClass="btn btn-primary" OnClick="btnSave_Click" />
        
 <asp:Button ID="btnCancel" runat="server" Text="Cancel"
            CssClass="btn btn-secondary" OnClick="btnCancel_Click" />
    </div>
    <asp:Label ID="lblMsg" runat="server" CssClass="text-success d-block mb-2"></asp:Label>

    <asp:GridView ID="gvCompanies" runat="server" AutoGenerateColumns="False"
        CssClass="table table-hover" DataKeyNames="Company_ID"
        OnRowCommand="gvCompanies_RowCommand">
        <Columns>
            <asp:BoundField DataField="Company_ID" HeaderText="ID" />
            <asp:BoundField DataField="Company_Name" HeaderText="Company" />
             <asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                    <asp:Button ID="btnEdit" runat="server" Text="Edit"
                        CommandName="EditRow" CommandArgument='<%# Eval("Company_ID") %>'
                        CssClass="btn btn-sm btn-warning" 
 />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete"
                        CommandName="DeleteRow" CommandArgument='<%# Eval("Company_ID") %>'
                        CssClass="btn btn-sm btn-danger ms-1" />
                </ItemTemplate>
             </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>