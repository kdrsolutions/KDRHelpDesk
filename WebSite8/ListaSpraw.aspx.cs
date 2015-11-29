using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class ListaSpraw : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string ProcessMyDataItem(object myValue)
    {
        if (myValue.ToString() == "01.01.1900 00:00:00")
        {
            return "Nie określono";
        }

        return myValue.ToString();
    }

    protected void ListView1_ItemUpdating(object sender, ListViewUpdateEventArgs e)
    {

        DropDownList NameDropDownList = (DropDownList)((ListView)sender).Items[e.ItemIndex].FindControl("dropdownlist1");

        if (NameDropDownList != null)
        {

            SqlDataSource1.UpdateParameters["IdStatusu"].DefaultValue = NameDropDownList.SelectedValue;
        }

    }
}
