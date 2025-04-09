using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs {
    public partial class OK : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            bool login = false;
            string username = "";
            if (Request.Cookies["username"] == null) {
                Response.Redirect("~/index.aspx");
                return;
            } else {
                username = Request.Cookies["username"].Value;
            }
            head1.InnerText += username;
        }
    }
}