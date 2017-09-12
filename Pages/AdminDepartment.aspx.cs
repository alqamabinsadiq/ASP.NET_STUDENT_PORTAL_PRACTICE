using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

public partial class Pages_AdminDepartment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectString = System.Configuration.ConfigurationManager.ConnectionStrings["TestDBConnectionString"].ToString();

        DataClassesDataContext db = new DataClassesDataContext(connectString);
        var query = from departments in db.Departments.AsEnumerable()
                    orderby departments.DepartmentCode
                    select departments;
        rgList.DataSource = query;
        rgList.DataBind();
    }


    protected void rgList_Init(object sender, EventArgs e)
    {
        // Reduce the list of RadGrid filter menu item for string value.

        {
            GridFilterMenu mnuFilter = rgList.FilterMenu;
            int i = mnuFilter.Items.Count - 1;
            while (i > 5)
            {
                mnuFilter.Items.RemoveAt(i);
                i -= 1;
            }
        }
    }

    protected void rgList_DataBound(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (ViewState["itemIndex"] != null)
            {
                rgList.MasterTableView.Items[Convert.ToInt16(ViewState["itemIndex"])].Selected = true;
            }
        }

    }
}