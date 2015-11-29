using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void sender_Click(object sender, EventArgs e)
    {
        string sqlstring; 
        sqlstring = "INSERT INTO Zgloszenia (Temat, Opis, IdStatusu, IDUzytkownika, IDSpecjalisty) VALUES (@temat, @opis, @status, @mojeid, @idspec);";
        using (var conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HelpDeskConnectionString"].ConnectionString))
        using (var cmd = conn.CreateCommand())
        {
            conn.Open();
            cmd.CommandText = sqlstring;
            cmd.Parameters.AddWithValue("@temat", nazwatematu.Value);
            cmd.Parameters.AddWithValue("@opis", Opis.Value);
            cmd.Parameters.AddWithValue("@status", "1");
            cmd.Parameters.AddWithValue("@idspec", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@mojeid", (int)Session["USER_ID"]);
            cmd.ExecuteReader();
            conn.Close();
        }
        Response.Redirect("~/MojeZgloszenia.aspx", false);
    }
}
