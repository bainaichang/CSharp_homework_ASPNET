using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01 {
    public partial class WebTopic14 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {

        }

        protected void Button1_Click (object sender, EventArgs e) {
            Response.Redirect("WebTopic01.aspx");
        }
    }
}