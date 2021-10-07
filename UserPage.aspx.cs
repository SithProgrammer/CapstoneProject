using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CapstoneGroup6WebPage
{
    public partial class UserPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reportGrid_PreRender(object sender, EventArgs e)
        {
            reportGrid.HeaderRow.TableSection = TableRowSection.TableHeader;
        }
    }
}