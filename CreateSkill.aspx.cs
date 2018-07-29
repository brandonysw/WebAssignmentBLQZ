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
    public partial class CreateSkill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string Skill = txtSkillName.Text;
                string magicConn = ConfigurationManager.ConnectionStrings["StudentEPortfolioConnectionString"].ConnectionString;
                SqlConnection conn = new SqlConnection(magicConn);
                SqlCommand cmdMagic = new SqlCommand("INSERT INTO SkillSet (SkillSetName) OUTPUT INSERTED.SkillSetId VALUES(@s) ", conn);
                cmdMagic.Parameters.AddWithValue("@s", Skill);
                conn.Open();
                int id = (int)cmdMagic.ExecuteScalar();
                conn.Close();
                txtSkillName.Text = "";
                lblMsg.Text = "Account successfully added";

            }
        }

        protected void cuvSkillSet_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Page.IsValid)
            {
                string skills = txtSkillName.Text;
                SystemAdministrator skill = new SystemAdministrator();
                if (skill.duplicateSkill(skills) == true)
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