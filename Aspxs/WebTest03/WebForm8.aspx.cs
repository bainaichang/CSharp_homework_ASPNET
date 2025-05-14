using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest03 {
    public partial class WebForm8 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            var db = new DataClasses1DataContext();
            var r = db.Student.GroupBy(s => s.sclass)
                .Select(g => new {
                    班级名称 = g.Key,
                    班级人数 = g.Count(),
                    班级最高分 = g.Max(s => s.score),
                    班级最低分 = g.Min(s => s.score),
                    班级平均分 = g.Average(s => s.score)
                });
            GridView1.DataSource = r;
            GridView1.DataBind();
        }
    }
}