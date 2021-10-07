using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapstoneGroup6WebPage
{
    public partial class EntryForm : System.Web.UI.Page
    {
        
        public void Page_Load(object sender, EventArgs e)
        {
            txtjEntryForm.Focus();
        }
        //clear button code to clear entry form and remove submit accecpted announcement
        protected void clear_Click(object sender, EventArgs e)
        {
            Accepted.Text = " ";
            txtjEntryForm.Text = "";

        }

        //Submit button code to enter data in the database
        protected void submit_Click(object sender, EventArgs e)
        {
            Accepted.Text = "Thank You. Your entry has been accepted.";
            dateTimeStamp.Text = DateTime.Now.ToString();
            string todaysDate = dateTimeStamp.Text;

            if (IsValid)
            {
                var parameters = SqlDataSource1.InsertParameters;
                parameters["Report"].DefaultValue = txtjEntryForm.Text;
                parameters["Created_Date"].DefaultValue = todaysDate;

                try
                {
                    SqlDataSource1.Insert();
                    txtjEntryForm.Text = "";
                    dateTimeStamp.Text = "";
                }
                catch (Exception ex)
                {
                    
                }

                Accepted.Visible = true;
            }

        }
    }
}