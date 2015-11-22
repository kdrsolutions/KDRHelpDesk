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

        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HelpDesk1ConnectionString"].ConnectionString);
        System.Data.SqlClient.SqlCommand comm = new System.Data.SqlClient.SqlCommand(sqlstring, con);
        comm.Parameters.AddWithValue("userID", login_lab.Text);
        comm.Parameters.AddWithValue("haslo", password_lab.Text);
        System.Data.SqlClient.SqlDataReader reader;
        con.Open();
        reader = comm.ExecuteReader();

        if (reader.Read())
        {
            Session["USER_ID"] = login_lab.Text;
            // CHECK ADMIN PERMISSIONs
            Session["PERMISSION_ADMIN"] = reader.GetValue(3);

            // CHECK SPEC PERMISSIONs
            Session["PERMISSION_SPEC"] = reader.GetValue(2);

            Response.Redirect("~/rap.aspx", false);
        }
        else
        {
            wrong_password.Visible = true;
        }
    }
}
