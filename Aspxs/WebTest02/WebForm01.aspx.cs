using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02 {
    public partial class WebForm01 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            Label1.Text ="浏览器类型: "+ Request.Browser.Browser;
            Label2.Text ="浏览器版本: "+ Request.Browser.Version;
            Label3.Text ="是否支持Cookie: "+ (Request.Browser.Cookies ? "是" : "否");
            Label4.Text = "客户端IP: " + Request.ServerVariables.Get("REMOTE_ADDR");
            Label5.Text = "服务端IP: " + Request.ServerVariables.Get("Local_Addr");
        }
    }
}