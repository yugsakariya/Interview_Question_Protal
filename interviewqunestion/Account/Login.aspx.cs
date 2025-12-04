using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DataLayer;

namespace interviewqunestion.Account
{
    public partial class Login : System.Web.UI.Page
    {
        SqlDataAdapter da = new SqlDataAdapter();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string role = ddlRole.SelectedValue;
            string username = txtEmail.Text;
            string password = txtPassword.Text;
            DataLayer.DBHelper db = new DataLayer.DBHelper();
            Dictionary<string, dynamic> parametres = new Dictionary<string, dynamic>();
            parametres["@p_Email"] = username;
            parametres["@p_Password"] = password;
            if (role == "User") {
                da = db.ExeSP("sp_UserLogin",parametres);
            }
            if (role == "Admin") {
                da = db.ExeSP("sp_AdminLogin", parametres);
            }
            if (da != null)
            {
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["UserID"] = dt.Rows[0]["UserID"].ToString();
                    Session["Email"] = dt.Rows[0]["Email"].ToString();
                    Session["Role"] = role;
                    Response.Redirect("~/Dashboard.aspx");
                }
                else
                {
                    lblMsg.Text = "Invalid username or password.";
                }
            }
        }
    }
}