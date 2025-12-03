<%@ Page Title="Register" Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs"
    Inherits="interviewqunestion.Account.Register" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Register - IQ Portal</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    
     <link href="~/Styles/Register.css" rel="stylesheet" type="text/css" />
    </head>
<body>
    <form id="form1" runat="server">
        <div class="auth-container">
            
            <!-- Brand -->
            <div class="brand">
                <i class="fas fa-graduation-cap"></i>
                <h1>IQ Portal</h1>
                <p>Interview Questions Portal</p>
            </div>

            <!-- Card -->
            <div class="auth-card">
                
                <!-- Header -->
                <div class="auth-header">
                    <h2>Create your account</h2>
                    <p>Get started with your free account</p>
                </div>

                <!-- Success Message -->
                <asp:Panel ID="pnlSuccess" runat="server" Visible="false" CssClass="success-alert">
                    <asp:Label ID="lblMsg" runat="server" />
                </asp:Panel>

                <!-- Validation Summary -->
                <asp:ValidationSummary runat="server" CssClass="validation-summary" 
                    HeaderText="Please fix the following:" />

                <!-- Name Row -->
                <div class="name-row">
                    <!-- First Name -->
                    <div class="form-group">
                        <label class="form-label">First Name</label>
                        <div class="input-wrapper">
                            <i class="fas fa-user input-icon"></i>
                            <asp:TextBox ID="txtFirstName" runat="server" 
                                CssClass="form-control"
                                placeholder="John" />
                        </div>
                        <asp:RequiredFieldValidator runat="server"
                            ControlToValidate="txtFirstName"
                            ErrorMessage="First name is required"
                            Display="Dynamic"
                            CssClass="error-message" />
                    </div>

                    <!-- Last Name -->
                    <div class="form-group">
                        <label class="form-label">Last Name</label>
                        <div class="input-wrapper">
                            <i class="fas fa-user input-icon"></i>
                            <asp:TextBox ID="txtLastName" runat="server" 
                                CssClass="form-control"
                                placeholder="Doe" />
                        </div>
                        <asp:RequiredFieldValidator runat="server"
                            ControlToValidate="txtLastName"
                            ErrorMessage="Last name is required"
                            Display="Dynamic"
                            CssClass="error-message" />
                    </div>
                </div>

                <!-- Email -->
                <div class="form-group">
                    <label class="form-label">Email</label>
                    <div class="input-wrapper">
                        <i class="fas fa-envelope input-icon"></i>
                        <asp:TextBox ID="txtEmail" runat="server" 
                            TextMode="Email"
                            CssClass="form-control"
                            placeholder="you@example.com" />
                    </div>
                    <asp:RequiredFieldValidator runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Email is required"
                        Display="Dynamic"
                        CssClass="error-message" />
                    <asp:RegularExpressionValidator runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Invalid email format"
                        ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"
                        Display="Dynamic"
                        CssClass="error-message" />
                </div>

                <!-- Password -->
                <div class="form-group">
                    <label class="form-label">Password</label>
                    <div class="input-wrapper">
                        <i class="fas fa-lock input-icon"></i>
                        <asp:TextBox ID="txtPassword" runat="server" 
                            TextMode="Password"
                            CssClass="form-control"
                            placeholder="••••••" />
                    </div>
                    <asp:RequiredFieldValidator runat="server"
                        ControlToValidate="txtPassword"
                        ErrorMessage="Password is required"
                        Display="Dynamic"
                        CssClass="error-message" />
                </div>
                <!-- Conform Password -->
                <div class="form-group">
                    <label class="form-label">Conform Password</label>
                    <div class="input-wrapper">
                        <i class="fas fa-lock input-icon"></i>
                        <asp:TextBox ID="txtCPassword" runat="server" 
                            TextMode="Password"
                            CssClass="form-control"
                            placeholder="••••••" />
                    </div>
                    <asp:RequiredFieldValidator runat="server"
                        ControlToValidate="txtCPassword"
                        ErrorMessage="Password is required"
                        Display="Dynamic"
                        CssClass="error-message" />
                    <asp:CompareValidator runat="server"
                        ControlToCompare="txtPassword"
                        ControlToValidate="txtCPassword"
                        ErrorMessage="Password Does Not Match" 
                        Display="Dynamic" 
                        CssClass="error-message">

                    </asp:CompareValidator>
                </div>
                <!-- Submit Button -->
                <asp:Button ID="btnRegister" runat="server" 
                    Text="Create Account"
                    CssClass="btn-primary"
                    OnClick="btnRegister_Click" />

                <!-- Footer -->
                <div class="auth-footer">
                    <p>
                        Already have an account? 
                        <asp:HyperLink runat="server" NavigateUrl="~/Account/Login.aspx" Text="Login" />
                    </p>
                </div>

            </div>

        </div>
    </form>
</body>
</html>