using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_AddDepartment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(DptCode.Text) || String.IsNullOrEmpty(DptName.Text)
            || String.IsNullOrEmpty(SelfMarks.Text) || String.IsNullOrEmpty(RegMarks.Text))
        {
            Label1.Text = "Please inser values in all the fields";
        }
        else
        {
            string connectString = System.Configuration.ConfigurationManager.ConnectionStrings["TestDBConnectionString"].ToString();

            DataClassesDataContext db = new DataClassesDataContext(connectString);
            Department dept = new Department();
            dept.DepartmentName = DptName.Text;
            dept.DepartmentCode = DptCode.Text;
            dept.CMarksSF = int.Parse(SelfMarks.Text);
            dept.CmarksMerit = int.Parse(RegMarks.Text);
            db.Departments.InsertOnSubmit(dept);
            db.SubmitChanges();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "scr", "Close();", true);
        }
    }
    protected void btnClose_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, this.GetType(), "scr", "Close();", true);
    }
}