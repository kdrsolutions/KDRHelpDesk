using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Uzytkownicy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void ListView1_ItemInserted(object sender, ListViewInsertedEventArgs e)
    {
        String strEmail = e.Values["EMail"].ToString();
        Mailing.Send(strEmail, "Witaj, zapraszamy", "Haslo");
    }
}
