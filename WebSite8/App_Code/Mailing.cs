using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web;
using System.Net.Mail;
using System.Web.Security;
using System.Net;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Mailing
{
    public Mailing()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    private static void getConfig(out String od_kogo, out String serwer, out int port, out String haslo)
    {
        od_kogo = "helpdesk@vp.pl";
        serwer = "smtp.poczta.onet.pl";
        port = 587;
        haslo = "kdr123";
    }

    public static void Send(String do_kogo, String Temat, String Tresc)
    {
        String od_kogo; String serwer; int port; String haslo;
        getConfig(out od_kogo, out serwer, out port, out haslo);
        MailMessage message = new MailMessage();
        message.From = new MailAddress(od_kogo);
        message.To.Add(new MailAddress(do_kogo));
        message.Subject = Temat;
        message.Body = Tresc;




        SmtpClient smtp = new SmtpClient(serwer);
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new NetworkCredential(od_kogo, haslo);
        smtp.EnableSsl = true;
        smtp.Port = port;
        smtp.Send(message);
    }
}
