<%@ Page Title="Admin Home" Language="C#" MasterPageFile="~/Admin/Admin.Master"
    AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs"
    Inherits="interview_questions.Admin.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="mb-4">Admin Dashboard</h3>

    <div class="row g-3">
        <div class="col-md-3">
            <div class="card text-bg-primary">
                <div class="card-body">
                    <h5>Total Users</h5>
                     <h3><asp:Label ID="lblUsers" runat="server" /></h3>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-bg-success">
                <div class="card-body">
                     <h5>Total Questions</h5>
                    <h3><asp:Label ID="lblQuestions" runat="server" /></h3>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card text-bg-warning">
                 <div class="card-body">
                    <h5>Total Tests</h5>
                    <h3><asp:Label ID="lblTests" runat="server" /></h3>
                </div>
            </div>
        </div>
        <div class="col-md-3">
             <div class="card text-bg-danger">
                <div class="card-body">
                    <h5>Total Attempts</h5>
                    <h3><asp:Label ID="lblAttempts" runat="server" /></h3>
                </div>
             </div>
        </div>
    </div>
</asp:Content>