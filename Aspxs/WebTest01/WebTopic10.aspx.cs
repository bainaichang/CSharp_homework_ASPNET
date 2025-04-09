using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01 {
    public partial class WebTopic10 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            if (IsPostBack) {
                return;
            }
            RadioButtonList1.Items.Add("中国");
            RadioButtonList1.Items.Add("俄罗斯");
            RadioButtonList1.Items.Add("美国");
            RadioButtonList1.Items.Add("法国");
        }

        protected void RadioButtonList1_SelectedIndexChanged (object sender, EventArgs e) {
            Label1.Text = "你选择了: " + RadioButtonList1.SelectedValue;
        }
    }
}