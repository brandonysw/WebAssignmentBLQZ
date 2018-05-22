using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace systemAdmin
{
    public partial class AddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                ddlMentor.Items.Add("-- Mentor --");
                ddlMentor.Items.Add("Lee Ching Yun");
                ddlMentor.Items.Add("Wesley Teo");
                ddlMentor.Items.Add("database");
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string SValues;

                SValues = "name=" + txtStudentName.Text;

                if (radMale.Checked == true)
                    SValues += "&gender=Male";
                else
                    SValues += "&gender=Female";

                SValues += "&contact= " + txtContact;
                SValues += "&email= " + txtEmail;
                SValues += "&course= " + txtCourse;
                SValues += "&mentor= " + ddlMentor.SelectedValue;

                Response.Redirect("UploadStudentPhoto.aspx?");
            }
        }
    }
}