using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectString = System.Configuration.ConfigurationManager.ConnectionStrings["TestDBConnectionString"].ToString();
        DataClassesDataContext db = new DataClassesDataContext(connectString);
        
    }


    protected void btnContact_Click(object sender, EventArgs e)
    {
        
    }
}