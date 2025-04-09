using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01 {
    public partial class WebTopic09 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            if (IsPostBack) {
                return;
            }
            checklist01.Items.Add("游泳");
            checklist01.Items.Add("读书");
            checklist01.Items.Add("看电影");
            checklist01.Items.Add("玩游戏");
        }

        protected void Button1_Click (object sender, EventArgs e) {
            List<string> list = new List<string>();
            foreach (ListItem item in checklist01.Items) {
                if (item.Selected) {
                    list.Add($"<{item.Text}>");
                }
            }

            result.Text = "您选择了: " + string.Join("", list);

        }
    }
}