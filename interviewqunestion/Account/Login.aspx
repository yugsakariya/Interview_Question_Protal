<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="interviewqunestion.Account.Login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login - IQ Portal</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />

   
    <link href="~/Styles/Login.css" rel="stylesheet" runat="server" />
</head>
<body class="auth-body">
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
                    <h2>Welcome back</h2>
                    <p>Please enter your details to sign in</p>
                </div>

                <!-- Role Tabs -->
                <div class="role-tabs">
                    <button type="button" class="role-tab active" onclick="selectRole(this, 'User')">
                        <i class="fas fa-user"></i>User
                    </button>
                    <button type="button" class="role-tab" onclick="selectRole(this, 'Admin')">
                        <i class="fas fa-user-shield"></i>Admin
                    </button>
                </div>

                <!-- Hidden Dropdown -->
                <asp:DropDownList ID="ddlRole" runat="server" CssClass="hidden">
                    <asp:ListItem Text="User" Value="User" Selected="True" />
                    <asp:ListItem Text="Admin" Value="Admin" />
                </asp:DropDownList>

                <!-- Error Message -->
                <asp:Panel ID="pnlError" runat="server" Visible="false" CssClass="error-alert">
                    <asp:Label ID="lblMsg" runat="server" />
                </asp:Panel>

                <!-- Validation Summary -->
                <asp:ValidationSummary runat="server" CssClass="validation-summary"
                    HeaderText="Please fix the following:" />

                <!-- Email -->
                <div class="form-group">
                    <label class="form-label">Email</label>
                    <div class="input-wrapper">
                        <i class="fas fa-envelope input-icon"></i>
                        <asp:TextBox ID="txtEmail" runat="server"
                            CssClass="form-control full-input"
                            placeholder="you@example.com" />
                    </div>
                    <asp:RequiredFieldValidator runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Email is required"
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
                            CssClass="form-control full-input"
                            placeholder="••••••" />
                    </div>
                    <asp:RequiredFieldValidator runat="server"
                        ControlToValidate="txtPassword"
                        ErrorMessage="Password is required"
                        Display="Dynamic"
                        CssClass="error-message " />
                </div>

                <!-- Submit Button -->
                <asp:Button ID="btnLogin" runat="server"
                    Text="Sign in"
                    CssClass="btn-primary"
                    OnClick="btnLogin_Click" />

                <!-- Footer -->
                <div class="auth-footer">
                    <p>
                        Don't have an account? 
                        <asp:HyperLink ID="lnkSignup" runat="server" NavigateUrl="Register.aspx" Text="Register" />
                    </p>
                </div>

            </div>

        </div>

        <script>
            function selectRole(button, role) {
                // Remove active class from all tabs
                document.querySelectorAll('.role-tab').forEach(btn => {
                    btn.classList.remove('active');
                });

                // Add active class to clicked tab
                button.classList.add('active');

                // Update hidden dropdown
                var dropdown = document.getElementById('<%= ddlRole.ClientID %>');
                dropdown.value = role;
            }
        </script>
    </form>
</body>
</html>