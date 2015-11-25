using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;


public partial class login_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string SHA1(string data)
    {
        byte[] hash = new SHA1CryptoServiceProvider().ComputeHash(
                             new UTF8Encoding().GetBytes(data));
        string str = string.Empty;
        foreach (byte num in hash)
            str = str + string.Format("{0,0:x2}", (object)num);
        return str;
    }
    protected void signin_Click(object sender, EventArgs e)
    {
        string sqlstring;

        sqlstring = "SELECT Login, HashHaslo, Specjalista, Administrator FROM [Uzytkownicy] WHERE Login = '" + login_lab.Text + "' AND HashHaslo = HashBytes('SHA1', '" + password_lab.Text + "');";

        //sqlstring = "SELECT IdUzytkownika, Login, HashHaslo, Specjalista, Administrator FROM [Uzytkownicy] WHERE Login = '" + login_lab.Text + "' AND HashHaslo = HashBytes('SHA1', '" + password_lab.Text + "');";
        //sqlstring = "SELECT Login, HashHaslo, Specjalista, Administrator FROM [Uzytkownicy] WHERE Login = @login AND HashHaslo = @haslo;";
        sqlstring = "SELECT IdUzytkownika, Login, HashHaslo, Specjalista, Administrator FROM [Uzytkownicy] WHERE Login = @login ";


        //sqlstring = "SELECT IdUzytkownika, Login, HashHaslo, Specjalista, Administrator FROM [Uzytkownicy] WHERE Login = '" + login_lab.Text + "' AND HashHaslo = HashBytes('SHA1', '" + password_lab.Text + "');";
        //sqlstring = "SELECT Login, HashHaslo, Specjalista, Administrator FROM [Uzytkownicy] WHERE Login = @login AND HashHaslo = @haslo;";


        /* ########################## */
        /* # testowy generator SHA1 # */
        /* ########################## */
        //sqlstring = "UPDATE [Uzytkownicy] SET HashHaslo = HashBytes('SHA1', '" + password_lab.Text + "') WHERE Login = '" + login_lab.Text + "';";



        using (var conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HelpDesk1ConnectionString"].ConnectionString))
        using (var cmd = conn.CreateCommand())
        {
            conn.Open();
            cmd.CommandText = sqlstring;
            cmd.Parameters.AddWithValue("@login", login_lab.Text);
            cmd.Parameters.AddWithValue("@haslo", SHA1(password_lab.Text));
            Label1.Text = SHA1(password_lab.Text);
            using (var reader = cmd.ExecuteReader())
            {
                
                if (reader.Read())
                {
                    Session["USER_ID"] = (int)reader.GetValue(0);
                    Session["USER_NAME"] = (string)reader.GetValue(1);
                    // CHECK ADMIN PERMISSIONs
                    Session["PERMISSION_ADMIN"] = (bool)reader.GetValue(4);

                    // CHECK SPEC PERMISSIONs
                    Session["PERMISSION_SPEC"] = (bool)reader.GetValue(3);

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
