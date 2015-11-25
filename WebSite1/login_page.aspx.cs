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
    static byte[] Sha1Hash(string s)
    {
        SHA1 sha1 = SHA1.Create();
        Encoding windows1252 = Encoding.GetEncoding(1252);
        byte[] octets = windows1252.GetBytes(s);
        byte[] hash = sha1.ComputeHash(octets);

        return hash;
    }
    static string HashToString(byte[] bytes)
    {
        StringBuilder sb = new StringBuilder();

        for (int i = 0; i < bytes.Length; ++i)
        {
            byte b = bytes[i];
            if (i > 0 && 0 == i % 4) sb.Append(' ');
            sb.AppendFormat(b.ToString("X2"));
        }

        string s = sb.ToString();
        return s;
    }
    protected void signin_Click(object sender, EventArgs e)
    {
        string sqlstring;
<<<<<<< HEAD

        sqlstring = "SELECT IdUzytkownika, Login, HashHaslo, Specjalista, Administrator FROM [Uzytkownicy] WHERE Login = @login";
        
=======
        sqlstring = "SELECT IdUzytkownika, Login, HashHaslo, Specjalista, Administrator FROM [Uzytkownicy] WHERE Login = @login";

>>>>>>> aa87d915a504aecda49238997c1e1983c97cd848
        using (var conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HelpDesk1ConnectionString"].ConnectionString))
        using (var cmd = conn.CreateCommand())
        {
            conn.Open();
            cmd.CommandText = sqlstring;
            cmd.Parameters.AddWithValue("@login", login_lab.Text);
            using (var reader = cmd.ExecuteReader())
            {
                
                if (reader.Read())
                {
                    byte[] myHash = Sha1Hash(password_lab.Text);
                    byte[] serverHash = (byte[])reader.GetValue(2);

                    if (HashToString(myHash) == HashToString(serverHash))
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
                else
                {
                    wrong_password.Visible = true;
                }
            }
            conn.Close();
        }
    }
}
