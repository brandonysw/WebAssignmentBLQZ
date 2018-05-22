using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace systemAdmin
{
    public partial class AddMentor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string MValues;

                MValues = "name=" + txtMentorName.Text;

                if (radMale.Checked == true)
                    MValues += "&gender=Male";
                else
                    MValues += "&gender=Female";

                MValues += "&contact=" + txtContact;
                MValues += "&email=" + txtEmail;

                //display the values
                lblValues.Text = "Mentor added!";
            }
                
        }
    }
}