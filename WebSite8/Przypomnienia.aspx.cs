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
using System.Data.SqlClient;

public partial class Przypomnienia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sqlstring;
        sqlstring = "SELECT Opis FROM [Przypomnienia] WHERE DataNastWywol <= GETDATE();";

        using (var conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HelpDeskConnectionString"].ConnectionString))
        using (var cmd = conn.CreateCommand())
        {
            conn.Open();
            cmd.CommandText = sqlstring;
            var reader = cmd.ExecuteReader();
            using (reader)
            {
                while (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        HtmlGenericControl li = new HtmlGenericControl("li");
                        li.InnerText = (string)reader.GetValue(0);
                        ListBox1.Controls.Add(li);
                    }
                    reader.NextResult();
                }
            }
        }
    }
}
