using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01 {
    public partial class WebTopic05 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            if (IsPostBack) {
                return;
            }

            string picturePath = @"E:\Others IDE Projects\Visual Studio 2022 Projects\ZhouLianFeng_ASP_Demo01\Picture\";
            DirectoryInfo directoryInfo = new DirectoryInfo(picturePath);
            FileInfo[] files = directoryInfo.GetFiles();
            int i = 1;
            ddlAnimal.Items.Add("请选择值: ");
            foreach (FileInfo file in files) {
                ddlAnimal.Items.Add(new ListItem(i.ToString(), file.Name));
                i++;
            }

            // Image1.ImageUrl = @"~\Picture\" + files[0].Name;
        }

        protected void ddlAnimal_SelectedIndexChanged (object sender, EventArgs e) {
            if (ddlAnimal.Items[0].Text == "请选择值: ") {
                ddlAnimal.Items[0].Enabled = false;
            }
            Image1.ImageUrl = @"~\Picture\" + ddlAnimal.SelectedValue;
        }
    }
}