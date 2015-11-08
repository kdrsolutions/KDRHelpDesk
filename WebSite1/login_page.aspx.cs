using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void signin_Click(object sender, EventArgs e)
    {
        Session["USER_ID"] = login_lab.Text;
        Response.Redirect("~/Default2.aspx", false);
    }
}
