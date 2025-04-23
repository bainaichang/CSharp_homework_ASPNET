using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web2 {
    public partial class OK : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            Label1.Text = $"同学: {Request.QueryString.Get("username")},欢迎你!";
        }
    }
}