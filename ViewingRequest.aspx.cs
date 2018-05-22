using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace systemAdmin
{
    public partial class ViewingRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPending_Click(object sender, EventArgs e)
        {
            Response.Redirect("PendingReview.aspx");
        }

        protected void btnApproved_Click(object sender, EventArgs e)
        {
            Response.Redirect("ApprovedReview.aspx");
        }
    }
}