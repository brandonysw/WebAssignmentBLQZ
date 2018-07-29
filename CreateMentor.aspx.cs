using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace eportfolioAssignment
{
    public partial class CreateMentor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnCreateMentor_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) {
                string mentorName = txtMentorName.Text;
                string mentorMail = txtMentorEmail.Text;
                string password = "p@55Mentor";
                string magicConn = ConfigurationManager.ConnectionStrings["StudentEPortfolioConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(magicConn);
                SqlCommand cmdMagic = new SqlCommand("INSERT INTO Mentor (Name, EmailAddr, Password) OUTPUT INSERTED.MentorId VALUES(@n, @e, @p) ", conn);
                cmdMagic.Parameters.AddWithValue("@n", mentorName);
                cmdMagic.Parameters.AddWithValue("@e", mentorMail);
                cmdMagic.Parameters.AddWithValue("@p", password);
                conn.Open();
                int id = (int)cmdMagic.ExecuteScalar();
                conn.Close();
                txtMentorEmail.Text = "";
                txtMentorName.Text = "";
                lblMsg.Text = "Account successfully added";
            }
        }

        protected void cuvEmail_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Page.IsValid)
            {
                string email = txtMentorEmail.Text;
                SystemAdministrator mentor = new SystemAdministrator();
                if (mentor.duplicateEmail(email) == true)
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