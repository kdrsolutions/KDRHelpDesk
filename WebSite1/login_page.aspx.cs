using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class login_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void signin_Click(object sender, EventArgs e)
    {
        string sqlstring;
        sqlstring = "SELECT Login, HashHaslo, Specjalista, Administrator FROM [Uzytkownicy] WHERE Login = '" + login_lab.Text + "' AND HashHaslo = HashBytes('SHA1', '" + password_lab.Text + "');";

        /* ########################## */
        /* # testowy generator SHA1 # */
        /* ########################## */
        //sqlstring = "UPDATE [Uzytkownicy] SET HashHaslo = HashBytes('SHA1', '" + password_lab.Text + "') WHERE Login = '" + login_lab.Text + "';";



        using (var conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HelpDesk1ConnectionString"].ConnectionString))
        using (var cmd = conn.CreateCommand())
        {
            conn.Open();
            cmd.CommandText = sqlstring;
            //cmd.Parameters.AddWithValue("@login", login_lab.Text);
            //cmd.Parameters.AddWithValue("@haslo", password_lab.Text);
            
            using (var reader = cmd.ExecuteReader())
            {
                
                if (reader.Read())
                {
                    Session["USER_ID"] = login_lab.Text;
                    // CHECK ADMIN PERMISSIONs
                    Session["PERMISSION_ADMIN"] = (bool)reader.GetValue(3);

                    // CHECK SPEC PERMISSIONs
                    Session["PERMISSION_SPEC"] = (bool)reader.GetValue(2);

                   Response.Redirect("~/rap.aspx", false);
                }
                else
                {
                    wrong_password.Visible = true;
                }
            }
            conn.Close();
        }
    }
}
