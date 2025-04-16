using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01 {
    public partial class WebTopic13_2 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            Label1.Text = "";
            Button button = new Button();
            button.Text = "确定";
            button.Click += (o, args) => {
                List<string> list = new List<string>();
                foreach (ListItem i in CheckBoxList1.Items) {
                    if (i.Selected) {
                        list.Add(i.Text);
                    }
                }

                Label1.Text = "您选择了" + string.Join("，", list);
            };
            PlaceHolder1.Controls.Add(button);
        }
    }
}