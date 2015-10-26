using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelpDesk
{
    public partial class Role : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListView1_ItemCanceling(object sender, ListViewCancelEventArgs e)
        {
            ListView1.InsertItemPosition = InsertItemPosition.None;
            Doda.Visible = true;
        }

        protected void ListView1_ItemDeleting(object sender, ListViewDeleteEventArgs e)
        {

        }

        protected void ListView1_ItemEditing(object sender, ListViewEditEventArgs e)
        {

        }

        protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
        {

        }

        protected void ListView1_ItemUpdating(object sender, ListViewUpdateEventArgs e)
        {

        }

        protected void Doda_Click(object sender, EventArgs e)
        {
            ListView1.InsertItemPosition = InsertItemPosition.LastItem;
            Doda.Visible = false;
        }

        protected void ListView1_ItemInserted(object sender, ListViewInsertedEventArgs e)
        {
            ListView1.InsertItemPosition = InsertItemPosition.None;
            Doda.Visible = true;
        }
    }
}