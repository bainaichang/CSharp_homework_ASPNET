using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web5 {
    public partial class Login : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            Label1.Text = $"欢迎你! {Request.QueryString.Get("username")}";
        }
    }
}