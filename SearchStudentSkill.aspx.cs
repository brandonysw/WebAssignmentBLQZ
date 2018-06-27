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
    public partial class SearchStudentSkill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Bind dropdownlist data
                string StrConn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

                SqlConnection conn = new SqlConnection(StrConn);

                SqlCommand cmd = new SqlCommand("SELECT * FROM SkillSet ORDER BY SkillSetName", conn);

                SqlDataAdapter dastd = new SqlDataAdapter(cmd);

                DataSet result = new DataSet();

                conn.Open();

                dastd.Fill(result, "skillSetDetails");

                ddlSkillSet.DataSource = result.Tables["skillSetDetails"];
                ddlSkillSet.DataTextField = "SkillSetName";
                ddlSkillSet.DataValueField = "SkillSetID";
                ddlSkillSet.DataBind();

                conn.Close();
           
            }
        }

        public void LoadData()
        {
            //Query and return search result
            string StrConn = ConfigurationManager.ConnectionStrings["DefaultConnection"].ToString();

            SqlConnection conn = new SqlConnection(StrConn);

            SqlCommand cmd = new SqlCommand(" SELECT b.Name, b.Course, b.EmailAddr, b.Description, b.StudentID FROM [dbo].[StudentSkillSet] a INNER JOIN [dbo].[Student] b ON a.StudentID = b.StudentID WHERE a.[SkillSetID]= @skillsetid ORDER BY b.Name", conn);

            int skillsetid = Int32.Parse(ddlSkillSet.SelectedValue);
            cmd.Parameters.AddWithValue("@skillsetid", skillsetid);
            
            SqlDataAdapter dastd = new SqlDataAdapter(cmd);

            DataSet result = new DataSet();

            conn.Open();

            dastd.Fill(result, "StudentDetails");


            GridView1.DataSource = result.Tables["StudentDetails"];

            Session["GridView"] = result.Tables["StudentDetails"];

            //Display the list of data in gridview
            GridView1.DataBind();

            lblMessage.Visible = true;
            if (result.Tables["StudentDetails"].Rows.Count > 0)
            {
                GridView1.Visible = true;
                lblMessage.Text = "(There are " + result.Tables["StudentDetails"].Rows.Count.ToString() + " records)";
            }
            else
            {
                lblMessage.Text = "(No record)";
                GridView1.Visible = false;
            }

            conn.Close();

        }

        protected void BtSearch_Click(object sender, EventArgs e)
        {
            LoadData();
        }

        protected void GridView1_Sorting(object sender, GridViewSortEventArgs e)
        {
            DataTable dt = new DataTable();
            if (Session["GridView"] != null)
            {
                dt = (DataTable)Session["GridView"];
            }

            if (dt != null)
            {
                //Sort the data.
                dt.DefaultView.Sort = e.SortExpression + " " + GetSortDirection(e.SortExpression);
                GridView1.DataSource = Session["GridView"];
                GridView1.DataBind();
            }

        }

        private string GetSortDirection(string column)
        {
            // By default, set the sort direction to ascending.
            string sortDirection = "ASC";

            // Retrieve the last column that was sorted.
            string sortExpression = ViewState["SortExpression"] as string;

            if (sortExpression != null)
            {
                // Check if the same column is being sorted.
                // Otherwise, the default value can be returned.
                if (sortExpression == column)
                {
                    string lastDirection = ViewState["SortDirection"] as string;
                    if ((lastDirection != null) && (lastDirection == "ASC"))
                    {
                        sortDirection = "DESC";
                    }
                }
            }

            // Save new values in ViewState.
            ViewState["SortDirection"] = sortDirection;
            ViewState["SortExpression"] = column;

            return sortDirection;
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            LoadData();
        }
    }
}