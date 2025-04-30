using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web6 {
    public partial class cookie : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            var cookie = Request.Cookies["un"];
            var un = HttpUtility.UrlDecode(cookie?.Value);
            if (cookie is null) {
                Label2.Text = "未登录!!!";
            } else {
                Label2.Text = "欢迎你," + un + "!";
            }
        }
    }
}