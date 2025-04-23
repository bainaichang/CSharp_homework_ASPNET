using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web5 {
    public partial class WebForm05 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {

        }

        

        protected void TextBox1_TextChanged (object sender, EventArgs e) {
            Button1.PostBackUrl = $"Login.aspx?username={TextBox1.Text}";
        }
    }
}