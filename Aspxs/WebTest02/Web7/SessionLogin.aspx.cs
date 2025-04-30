using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web7 {
    public partial class SessionLogin : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {

        }

        protected void Button1_Click (object sender, EventArgs e) {
            Session.Timeout = 1;
            Session["un"] = TextBox1.Text;
            Session["pw"] = TextBox2.Text;
            Response.Redirect("Session.aspx");
        }
    }
}