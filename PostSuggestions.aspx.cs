using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eportfolioAssignment
{
    public partial class PostSuggestions : System.Web.UI.Page
    {
        // It is preset currently. When login function is done, it can be replaced by value
        int mentorId = 2;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Bind dropdownlist data
                string StrConn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

                SqlConnection conn = new SqlConnection(StrConn);

                SqlCommand cmd = new SqlCommand("SELECT a.name AS [Name], a.Course AS [Course], a.StudentID AS [StudentID]  FROM [dbo].[Mentor] b RIGHT JOIN [dbo].[Student] a ON a.[MentorID] = b.[MentorID] WHERE a.MentorID=@mentorId", conn);

                cmd.Parameters.AddWithValue("@mentorId", mentorId);

                SqlDataAdapter dastd = new SqlDataAdapter(cmd);

                DataSet result = new DataSet();

                conn.Open();

                dastd.Fill(result, "SuggestionDetails");

                ddlStudent.DataSource = result.Tables["SuggestionDetails"];
                ddlStudent.DataTextField = "Name";
                ddlStudent.DataValueField = "StudentID";
                ddlStudent.DataBind();

                conn.Close();
            }
        }

        protected void BtPost_Click(object sender, EventArgs e)
        {
            //Add suggestion to database
            Suggestion suggestion = new Suggestion();

            suggestion.StudentId = Int32.Parse(ddlStudent.SelectedValue);
            suggestion.MentorId = mentorId;
            suggestion.Status = "N";
            suggestion.Description = txtDescription.Text;
            suggestion.DateCreated = System.DateTime.Now;

            int errorCode = suggestion.PostSuggestion();

            lblMessage.Visible = true;

            if (errorCode == 0)
            {
                lblMessage.Text = "Suggestion has been posted successfully";
                lblMessage.ForeColor = System.Drawing.Color.Green;

            }
            else if(errorCode == -2)
            {
                lblMessage.Text = "Unable to post the suggestion. Please contact system administrator";
                lblMessage.ForeColor = System.Drawing.Color.Red;

            }

        }

    }
}