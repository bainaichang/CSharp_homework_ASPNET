using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest03 {
    public partial class WebForm1 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            var conn = new DataClasses1DataContext();
            var stus = conn.Student.Select(s => s);
            Label1.Text = string.Join("<br>", stus);
        }
    }
}