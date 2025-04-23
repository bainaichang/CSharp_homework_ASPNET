using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs {
    public partial class index : System.Web.UI.Page{
        protected void Page_Load (object sender, EventArgs e) {
            if (IsPostBack) {
                return;
            }
        }

    }
}