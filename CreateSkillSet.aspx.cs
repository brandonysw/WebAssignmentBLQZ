using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace systemAdmin
{
    public partial class CreateSkillSet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                ddlCourse.Items.Add(" --- Course --- ");
                ddlCourse.Items.Add("IT");
                ddlCourse.Items.Add("FI");

                ddlClass.Items.Add(" --- Class --- ");
                ddlClass.Items.Add("IT01");
                ddlClass.Items.Add("IT02");
                ddlClass.Items.Add("IT03");

                ddlStudentName.Items.Add(" --- Student Name --- ");
                ddlStudentName.Items.Add("Ong An Feng, Buddhi");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

            }
        }
    }
}