using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSignIn_Click(object sender, EventArgs e)
    {
        string connectString = System.Configuration.ConfigurationManager.ConnectionStrings["TestDBConnectionString"].ToString();
        DataClassesDataContext db = new DataClassesDataContext(connectString);
        string userName = USR_NAME.Text;
        string password = TxtBoxPass.Text;
        if(String.IsNullOrEmpty(USR_NAME.Text) && String.IsNullOrEmpty(TxtBoxPass.Text))
        {
            SignInMsgLabel.Text = "Both username and password are required";
            USR_NAME.Text = null;
            TxtBoxPass.Text = null;
        }
        else if (String.IsNullOrEmpty(USR_NAME.Text) || String.IsNullOrEmpty(TxtBoxPass.Text))
        {
            SignInMsgLabel.Text = "Both username and password are required";
            USR_NAME.Text = null;
            TxtBoxPass.Text = null;
        }
        else
        {
            var query = from a in db.Users
                        where a.USERNAME.Equals(userName) &&
                        a.PASSWORD.Equals(password)
                        select a;
            if (query == null)
            {
                SignInMsgLabel.Text = "Both username and password are required";
                USR_NAME.Text = null;
                TxtBoxPass.Text = null;
            }
            else
            {
                foreach (var usr in query)
                {
                    Session["username"] = usr.USERNAME;
                    Session["userRights"] = usr.RIGHTS;
                    Response.Redirect("Default.aspx");
                }
            }
        }
    }
}