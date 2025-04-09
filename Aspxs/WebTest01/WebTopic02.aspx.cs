using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01 {
    public partial class WebTopic02 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            
        }

        protected void Button1_Click (object sender, EventArgs e) {
            // +
            result.Value = (double.Parse(a.Value) + double.Parse(b.Value)).ToString();
        }

        protected void Button2_Click (object sender, EventArgs e) {
            // -
            result.Value = (double.Parse(a.Value) - double.Parse(b.Value)).ToString();
        }

        protected void Button3_Click (object sender, EventArgs e) {
            // *
            result.Value = (double.Parse(a.Value) * double.Parse(b.Value)).ToString();
        }

        protected void Button4_Click (object sender, EventArgs e) {
            // ÷
            result.Value = (double.Parse(a.Value) / double.Parse(b.Value)).ToString();
        }
    }
}