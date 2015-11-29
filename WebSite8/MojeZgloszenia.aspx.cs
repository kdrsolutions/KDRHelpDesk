using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MojeZgloszenia2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string ProcessMyDataItem(object myValue)
    {
        if (myValue.ToString() == "01.01.1900 00:00:00")
        {
            return "";
        }

        return myValue.ToString();
    }
}
