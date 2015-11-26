using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USER_NAME"] != null)
            Label1.Text = (String)Session["USER_NAME"];
        else
            Response.Redirect("~/login_page.aspx", false);

        if ((bool)Session["PERMISSION_SPEC"])
        {
            Li4.Visible = true;
            Li5.Visible = true;
        }

        if ((bool)Session["PERMISSION_ADMIN"])
        {
                       Li7.Visible = true;
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["USER_ID"] = null;
        Response.Redirect("~/login_page.aspx", false);
    }

    public string LoginName
    {
        get { return Label1.Text; }
        set { Label1.Text = value; }
    }

    public int Role
    {
        set { ViewState["xyz"] = value; }
        get
        {
            Object o = ViewState["xyz"];
            return o == null ? -1 : (int)o;
        }
    }
}
