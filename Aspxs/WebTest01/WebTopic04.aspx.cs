using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Org.BouncyCastle.Utilities;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01 {
    public partial class WebTopic04 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            if (IsPostBack) {
                return;
            }
            ListBox1.Items.Add(new ListItem("Man"));
            ListBox1.Items.Add(new ListItem("Woman"));

            Object[] o = new Object[ListBox1.Items.Count];
            ListBox1.Items.CopyTo(o,0);
            Label1.Text = string.Join(",", o) + ";";
            ListItemCollection list = new ListItemCollection();
        }
    }
}