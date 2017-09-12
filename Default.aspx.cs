using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string right = Session["userRights"].ToString();
        if (Session["userRights"].ToString().ToUpper() == "Y")
        {
            rMnu.FindItemByValue("allDepts").NavigateUrl = "~/Pages/AdminDepartment.aspx";
        }
    }
}