using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01 {
    public partial class WebTopic01 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            Label1.Text = "页面加载时";
        }
    }
}