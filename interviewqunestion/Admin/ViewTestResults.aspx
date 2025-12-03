<%@ Page Title="View Test Results" Language="C#" MasterPageFile="~/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="ViewTestResults.aspx.cs"
    Inherits="interview_questions.Admin.ViewTestResults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="mb-3">All Test Results</h3>

    <asp:GridView ID="gvResults" runat="server" AutoGenerateColumns="False"
        CssClass="table table-striped table-hover">
        <Columns>
            <asp:BoundField DataField="Result_ID" HeaderText="Result ID" />
            <asp:BoundField DataField="Test_Name" HeaderText="Test" />
            <asp:BoundField DataField="UserName" HeaderText="User" />
   
             <asp:BoundField DataField="Result_Score" HeaderText="Score" />
            <asp:BoundField DataField="TotalQuestions" HeaderText="Total Qs" />
            <asp:BoundField DataField="CorrectAnswers" HeaderText="Correct" />
            <asp:BoundField DataField="WrongAnswers" HeaderText="Wrong" />
        </Columns>
    </asp:GridView>
</asp:Content>