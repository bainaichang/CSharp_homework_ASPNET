using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web6 {
    public partial class cookielogin : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {

        }

        protected void Button1_Click (object sender, EventArgs e) {
            var un = Server.UrlEncode(username.Text);
            var pw = Server.UrlEncode(password.Text);
            var uncookie = new HttpCookie("un", un);
            var pwcookie = new HttpCookie("pw", pw);
            uncookie.Expires = DateTime.Now.AddSeconds(10);
            pwcookie.Expires = DateTime.Now.AddSeconds(10);
            Response.Cookies.Add(uncookie);
            Response.Cookies.Add(pwcookie);
            Response.Redirect("cookie.aspx");
        }
    }
}