using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01 {
    public partial class WebTopic03 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {

        }

        public void Result(object sender, EventArgs e) {
            int sc = 0;
            try {
                sc = int.Parse(score.Value);
            }
            catch (Exception) {
                Response.Write("<script>alert(\"输入不正确!\")</script>");
                return;
            }
            switch (sc/10) {
                case 10:
                case 9: res.Value = "优秀";break;
                case 8:  res.Value = "良";break;
                case 7:  res.Value = "中";break;
                case 6:  res.Value = "合格";break;
                default: res.Value = "不合格";break;
            }
        }
    }
}