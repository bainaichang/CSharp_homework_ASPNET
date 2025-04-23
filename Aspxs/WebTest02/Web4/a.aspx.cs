using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web4 {
    public partial class a : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {

        }

        protected void Button1_Click (object sender, EventArgs e) {
            // transfer
            Server.Transfer("b.aspx");
        }

        protected void Button2_Click (object sender, EventArgs e) {
            // Execute
            Server.Execute("b.aspx");
        }

        protected void Button3_Click (object sender, EventArgs e) {
            Response.Redirect("b.aspx");
        }
    }
}