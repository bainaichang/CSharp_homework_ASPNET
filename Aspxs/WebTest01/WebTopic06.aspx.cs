using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01 {
    public partial class WebTopic06 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {

        }

        protected void Button1_Click (object sender, EventArgs e) {
            string text = TextBox1.Text;

            if (text.Trim().Equals("")) { // 防止输入空串
                return;
            }

            if (!ListBox1.Items.Contains(new ListItem(text))) { // 防止重复
                if (ListBox1.SelectedIndex < 0) {
                    ListBox1.Items.Add(text);
                } else {
                    int index = ListBox1.SelectedIndex;
                    ListBox1.Items.Insert(index, text);
                }
            }

            TextBox1.Text = "";
        }

        protected void Button2_Click (object sender, EventArgs e) {
            ListItemCollection list = ListBox1.Items;
            for (int i = 0; i < list.Count; i++) {
                if (list[i].Selected) {
                    list.RemoveAt(i);
                    i--;
                }
            }
        }

        protected void Button3_Click (object sender, EventArgs e) {
            List<string> resultList = new List<string>();
            foreach (ListItem item in ListBox1.Items) {
                if (item.Selected) {
                    resultList.Add(item.Text);
                }
            }

            ResultLab.Text = string.Join(", ", resultList);
        }

        protected void Button4_Click (object sender, EventArgs e) {
            List<string> resultList = new List<string>();
            foreach (ListItem item in ListBox1.Items) {
                resultList.Add(item.Text);
            }

            ResultLab.Text = string.Join(", ", resultList);
        }
    }
}