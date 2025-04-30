using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ZhouLianFeng_ASP_Demo01;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web9 {
    public partial class loginuser : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {

        }

        protected void Button1_Click (object sender, EventArgs e) {
            var un = username.Text;
            if (Session[un] != null) {
                Response.Write("<script>alert(\"用户已登录!\")</script>");
                return;
            }
            Session[un] = un;
            Response.Cookies.Add(new HttpCookie("un",un));
            Response.Redirect("chat.aspx");
        }
    }
}