using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void signin_Click(object sender, EventArgs e)
    {
        string sqlstring;
        //sqlstring = "Select Login, HashHaslo from [Uzytkownicy] where Login='" + login_lab.Text + "' and HashHaslo = HashBytes('SHA1', '" + password_lab.Text + "');";
        sqlstring = "Select Login, HashHaslo, Specjalista, Administrator from [Uzytkownicy] where Login=@userID and HashHaslo = HashBytes('SHA1', @haslo);";
        //if (Authentication(login_lab.Text, password_lab.Text))

        /* ########################## */
        /* # testowy generator SHA1 # */
        /* ########################## */
        //sqlstring = "UPDATE [Uzytkownicy] SET HashHaslo = HashBytes('SHA1', '" + password_lab.Text + "') WHERE Login = '" + login_lab.Text + "';";

        if (Authentication(sqlstring, login_lab.Text, password_lab.Text))
        //if (Authentication(sqlstring, false))
        {
            Session["USER_ID"] = login_lab.Text;

            // CHECK ADMIN PERMISSIONs
            Session["PERMISSION_ADMIN"] = Authentication(sqlstring);

            // CHECK SPEC PERMISSIONs
            Session["PERMISSION_SPEC"] = Authentication(sqlstring);

            Response.Redirect("~/rap.aspx", false);
        }
        else
        {
            wrong_password.Visible = true;
        }
    }
    protected static Boolean Authentication(string sqlstring, string userID, string haslo)
    //protected static Boolean Authentication(string sqlstring, bool func_type)
    // func_type = false - > logowanie
    // func_type = true - > uprawnienia
    {
        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HelpDesk1ConnectionString"].ConnectionString);
        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand(sqlstring, con);
        comm.Parameters.AddWithValue("userID", userID);
        comm.Parameters.AddWithValue("haslo", haslo);
        System.Data.SqlClient.SqlDataReader reader;
        con.Open();
        reader = comm.ExecuteReader();
        if (reader.Read())
            if (func_type)
                return (bool)reader.GetValue(0);
            else
                return true;
        else
            
            return false;
    }
}
