using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web7 {
    public partial class Session : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            var un = Session["un"]?.ToString();
            if (un != null) {
                Label1.Text = $"欢迎你,{un}!";
            } else {
                Label1.Text = "未登录!";
            }
        }
    }
}