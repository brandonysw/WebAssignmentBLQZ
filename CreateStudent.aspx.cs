using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using System.Web.UI.WebControls;

namespace eportfolioAssignment
{
    public partial class CreateStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string magicConn = ConfigurationManager.ConnectionStrings["StudentEPortfolioConnectionString"].ToString();
                SqlConnection conn = new SqlConnection(magicConn);
                SqlCommand cmdMagic = new SqlCommand("SELECT * FROM Mentor", conn);
                SqlDataAdapter daMentor = new SqlDataAdapter(cmdMagic);
                DataSet result = new DataSet();
                conn.Open();
                daMentor.Fill(result, "MentorDetails");
                conn.Close();

                ddlMentors.DataSource = result.Tables["MentorDetails"];
                ddlMentors.DataTextField = "Name";
                ddlMentors.DataValueField = "MentorID";
                ddlMentors.DataBind();
                ddlMentors.Items.Insert(0, "--SELECT--");

                ddlCourse.Items.Add("--SELECT--");  
                ddlCourse.Items.Add("IT");
                ddlCourse.Items.Add("ISF");
                ddlCourse.Items.Add("FI");
                ddlCourse.Items.Add("A3DA");
                ddlCourse.Items.Add("IMGD");
            }
        }

        protected void btnCreateStudent_Click(object sender, EventArgs e)
        {   
            if (Page.IsValid) { 
                string Name = txtStudentName.Text;
                string Email = txtStudentEmail.Text;
                string Course = ddlCourse.SelectedValue;
                int MentorID = ddlMentors.SelectedIndex;
                string Password = "p@55Student";
                string Status = "N";
                string magicConn = ConfigurationManager.ConnectionStrings["StudentEPortfolioConnectionString-"].ConnectionString;
                SqlConnection conn = new SqlConnection(magicConn);
                SqlCommand cmdMagic = new SqlCommand("INSERT INTO Student (Name, Course, EmailAddr, Password, Status, MentorID) OUTPUT INSERTED.StudentID VALUES(@n, @c, @e, @p, @s, @m) ", conn);
                cmdMagic.Parameters.AddWithValue("@n", Name);
                cmdMagic.Parameters.AddWithValue("@c", Course);
                cmdMagic.Parameters.AddWithValue("@e", Email);
                cmdMagic.Parameters.AddWithValue("@p", Password);
                cmdMagic.Parameters.AddWithValue("@s", Status);
                cmdMagic.Parameters.AddWithValue("@m", MentorID);
                conn.Open();
                int id = (int)cmdMagic.ExecuteScalar();
                conn.Close();
                lblMsg.Text = "Account successfully created";
                txtStudentEmail.Text = "";
                txtStudentName.Text = "";
                ddlCourse.SelectedIndex = 0;
                ddlMentors.SelectedIndex = 0;
            }
        }
        protected void cuvEmail_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Page.IsValid)
            {
                string email = txtStudentEmail.Text;
                SystemAdministrator student = new SystemAdministrator();
                if (student.duplicatesEmail(email) == true)
                {
                    args.IsValid = false;
                }
                else
                {
                    args.IsValid = true;
                }
            }
        }
    }
}