using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web2 {
    public partial class WebForm02 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            if (IsPostBack) {
                return;
            }
            RadioButtonList1.Items[0].Selected = true;
        }

        protected void Button1_Click (object sender, EventArgs e) {
            string un = TextBox1.Text;
            string passwd = TextBox2.Text;
            if (RadioButtonList1.SelectedValue.Equals("root")) {
                Response.Redirect($"admin.aspx?username={un}");
            } else {
                Response.Redirect($"OK.aspx?username={un}");
            }
        }
    }
}