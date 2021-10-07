using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapstoneGroup6WebPage
{
    public partial class StartPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            if (txtLoginID.Text == "admin" && txtPassword.Text == "password")
            {
                Response.Redirect("~/AdminPage.aspx");
            }
            else if(txtLoginID.Text == "user" && txtPassword.Text == "password")
            {
                Response.Redirect("~/UserPage.aspx");
            }
            else
            {
                txtLoginID.Text = "";
                txtPassword.Text = "";
            }    
        }

        protected void btnjNewEntry_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/EntryForm.aspx");
        }
    }
}