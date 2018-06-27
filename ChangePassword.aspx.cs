using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eportfolioAssignment
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtChangePassword_Click(object sender, EventArgs e)
        {
            int digitNo = 0;
            foreach (char value in txtPassword.Text)
            {
                if (char.IsDigit(value))
                {
                    digitNo += 1;
                }
            }
                //Validate new password
              if (digitNo >0 && (txtPassword.Text.Length > 8 || txtPassword.Text.Length == 8))
              {
                //Save new password to database
                Mentor mentor = new Mentor();
                mentor.Password = txtPassword.Text;
                mentor.MentorId = 2;  // It is preset currently . When login function is done, it can be replaced by value

                int errorCode = mentor.UpdatePassword();

                lblMessage.Visible = true;

                if (errorCode == 0)
                {
                    lblMessage.Text = "Password has been updated successfully";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                }
                else if (errorCode == -2)
                {
                    lblMessage.Text = "Unable to save new password. Please contact system administrator";
                    lblMessage.ForeColor = System.Drawing.Color.Red;

                }
            }

            else
            {
                lblMessage.Visible = true;
                lblMessage.Text = "New password is invalid. Please check.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
      

        }
    }
}