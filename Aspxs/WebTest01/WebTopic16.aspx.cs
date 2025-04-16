using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01 {
    public partial class WebTopic16 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {

        }

        protected void CustomValidator1_ServerValidate (object source, ServerValidateEventArgs args) {
            int v = int.Parse(TextBox1.Text);
            if (v % 2 == 1) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
    }
}