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

public partial class DanySpecjalista : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void sender_Click(object sender, EventArgs e)
    {
        string sqlstring;
        sqlstring = "INSERT INTO Specjaliści SELECT u.Imie, u.Nazwisko, s.[id], u.IdUzytkownika FROM [Specjalizacje] s LEFT JOIN Uzytkownicy u ON s.[id] = @spec WHERE u.IdUzytkownika = @id;";
        using (var conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HelpDeskConnectionString"].ConnectionString))
        using (var cmd = conn.CreateCommand())
        {
            conn.Open();
            cmd.CommandText = sqlstring;
            cmd.Parameters.AddWithValue("@spec", DropDownList1.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@id", TextBox3.Text);
            cmd.ExecuteReader();
            conn.Close();
        }
        Response.Redirect("~/DanySpecjalista.aspx", false);
    }
}
