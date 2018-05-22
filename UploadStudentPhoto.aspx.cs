using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace systemAdmin
{
    public partial class UploadStudentPhoto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string studentName;
            string studentContact;
            string studentEmail;
            string studentCourse;
            string studentMentor;

            studentName = Request.QueryString["name"];
            studentContact = Request.QueryString["contact="];
            studentEmail = Request.QueryString["email="];
            studentCourse = Request.QueryString["course="];
            studentMentor = Request.QueryString["mentor"];

            lblStudNme.Text = studentName;
            lblContact.Text = studentContact;
            lblEmail.Text = studentEmail;
            lblCourse.Text = studentCourse;
            lblMentor.Text = studentMentor;
        }
    }
}