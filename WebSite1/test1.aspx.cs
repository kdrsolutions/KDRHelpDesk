using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextValidate(object source, ServerValidateEventArgs args)
    {
        int j;
        if (Int32.TryParse(args.Value, out j))
            args.IsValid = true;
        else
            args.IsValid = false;
    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}