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
    public partial class ApproveStudent : System.Web.UI.Page
    {
        // It is preset currently. When login function is done, it can be replaced by value
        int mentorId = 2;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        public void LoadData()
        {
            //Bind student data to list
            string StrConn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

            SqlConnection conn = new SqlConnection(StrConn);

            SqlCommand cmd = new SqlCommand("SELECT StudentID,Name,Photo FROM [dbo].[Student] WHERE Status = 'N' AND MentorID=@mentorID ORDER BY StudentID DESC", conn);

            cmd.Parameters.AddWithValue("@mentorID", mentorId);

            SqlDataAdapter dastd = new SqlDataAdapter(cmd);

            DataSet result = new DataSet();

            conn.Open();

            dastd.Fill(result, "StudentDetails");

            if (result.Tables["StudentDetails"].Rows.Count == 0)
            {
                ltMessage.Visible = true;
                divPanel.Visible = false;
                ltMessage.Text = "<br>(No record)<br><br>";
                dlStudentList.Visible = false;
            }

            dlStudentList.DataSource = result.Tables["StudentDetails"];
            dlStudentList.DataBind();

            conn.Close();
        }
        
        protected void dlStudentList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //check for the correct command name
            if (e.CommandName == "Approve")
            {
                //use findcontrol to find the textbox and cast it back to one
                LinkButton lkApprove = (LinkButton)e.Item.FindControl("lkApprove");

                int studentId = Int32.Parse(dlStudentList.DataKeys[e.Item.ItemIndex].ToString());

                string strConn = ConfigurationManager.ConnectionStrings
                    ["DefaultConnection"].ToString();

                SqlConnection conn = new SqlConnection(strConn);

                SqlCommand cmd = new SqlCommand
                    ("UPDATE Student SET Status = @status WHERE StudentID = @studentId", conn);

                cmd.Parameters.AddWithValue("@studentId", studentId);
                cmd.Parameters.AddWithValue("@status", "Y");

                conn.Open();

                int count = cmd.ExecuteNonQuery();

                conn.Close();

                LoadData();
            }
        }

        protected void ddlSortBy_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Bind student data to list according to selected criteria
            string StrConn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

            SqlConnection conn = new SqlConnection(StrConn);
            SqlCommand cmd = null;

            if (ddlSortBy.SelectedValue == "1")
            {
                cmd = new SqlCommand("SELECT StudentID,Name,Photo FROM [dbo].[Student]  WHERE Status = 'N' AND MentorID=@mentorID ORDER BY StudentID DESC", conn);
            }

            else if (ddlSortBy.SelectedValue == "2")
            {
                cmd = new SqlCommand("SELECT StudentID,Name,Photo FROM [dbo].[Student] WHERE Status = 'N' AND MentorID=@mentorID ORDER BY StudentID", conn);
            }

            else if (ddlSortBy.SelectedValue == "3")
            {
                cmd = new SqlCommand("SELECT StudentID,Name,Photo FROM [dbo].[Student] WHERE Status = 'N' AND MentorID=@mentorID ORDER BY Name", conn);
            }

            cmd.Parameters.AddWithValue("@mentorID", mentorId);

            SqlDataAdapter dastd = new SqlDataAdapter(cmd);

            DataSet result = new DataSet();

            conn.Open();

            dastd.Fill(result, "StudentDetails");

            if (result.Tables["StudentDetails"].Rows.Count == 0)
            {
                ltMessage.Visible = true;
                ltMessage.Text = "<br>(No record)<br><br>";
                dlStudentList.Visible = false;
            }

            dlStudentList.DataSource = result.Tables["StudentDetails"];
            dlStudentList.DataBind();

            conn.Close();
        }
    }
}