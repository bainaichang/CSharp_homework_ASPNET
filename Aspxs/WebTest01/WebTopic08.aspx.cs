using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01 {
    public partial class WebTopic08 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {

        }

        protected void CheckBoxList1_SelectedIndexChanged (object sender, EventArgs e) {
            foreach (ListItem item in CheckBoxList1.Items) {
                switch (item.Text) {
                    case "粗体":
                        Label1.Font.Bold = item.Selected;
                        break;
                    case "斜体":
                        Label1.Font.Italic = item.Selected;
                        break;
                    case "红色":
                        Label1.ForeColor = item.Selected ? Color.Red : Color.Black;
                        break;
                }
            }

        }
    }
}