using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sqlstring;
        sqlstring = "SELECT DataNastWywol, Opis FROM [Przypomnienia] WHERE IdUzytkownika = @USERID AND DataNastWywol <= GETDATE();";
       
        using (var conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["HelpDeskConnectionString"].ConnectionString))
        using (var cmd = conn.CreateCommand())
        {
            conn.Open();
            cmd.CommandText = sqlstring;
            cmd.Parameters.AddWithValue("@USERID", (int)Session["USER_ID"]);
            var reader = cmd.ExecuteReader();
            using (reader)
            {
                while (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        HtmlGenericControl li = new HtmlGenericControl("li");
                        for (int i = 0; i < 2; i++)
                        {
                            HtmlGenericControl span = new HtmlGenericControl("div");
                            span.Attributes.Add("id", "id"+i.ToString());
                            span.InnerText = reader.GetValue(i).ToString();
                            li.Controls.Add(span);
                        }
                        ListBox1.Controls.Add(li);
                    }
                    reader.NextResult();
                }
            }
        }

        if (Session["USER_NAME"] != null)
            Label1.Text = (String)Session["USER_NAME"];

        if (Session["PERMISSION_SPEC"] != null && (bool)Session["PERMISSION_SPEC"])
            {
                Li3.Visible = true;
                Li3_1.Visible = true;
                Li3_2.Visible = true;
                Li3_3.Visible = true;
            }

        if (Session["PERMISSION_ADMIN"] != null && (bool)Session["PERMISSION_ADMIN"])
            {
                Li2.Visible = true;
                Li3.Visible = true;
                Li3_1.Visible = true;
                Li3_2.Visible = true;
                Li3_3.Visible = true;
                Li3_4.Visible = true;
                Li3_5.Visible = true;
                Li4.Visible = true;
            }

        else
            Response.Redirect("~/login_page.aspx", false);
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session["USER_ID"] = null;
        Response.Redirect("~/login_page.aspx", false);
    }

    public string LoginName
    {
        get { return Label1.Text; }
        set { Label1.Text = value; }
    }

    public int Role
    {
        set { ViewState["xyz"] = value; }
        get
        {
            Object o = ViewState["xyz"];
            return o == null ? -1 : (int)o;
        }
    }
}
