using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
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
