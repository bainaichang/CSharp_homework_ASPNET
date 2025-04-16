using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01 {
    public partial class WebTopic13 : System.Web.UI.Page {
        private static int egg = 0;
        private static int flower = 0;
        protected void Page_Load (object sender, EventArgs e) {
            Label1.Visible = false;
            Label2.Visible = false;
            result.Text = "鲜花投票0次,鸡蛋投票0次";
        }

        protected void ImageMap1_Click (object sender, ImageMapEventArgs e) {
            switch (e.PostBackValue) {
                case "egg":
                    egg++;
                    Label1.Visible = false;
                    Label2.Visible = true;
                    break;
                case "flower":
                    flower++;
                    Label1.Visible = true;
                    Label2.Visible = false;
                    break;
            }
            result.Text = $"鲜花投票{flower}次,鸡蛋投票{egg}次";

        }
    }
}