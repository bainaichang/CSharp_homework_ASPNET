using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest03 {
    public partial class WebForm7 : System.Web.UI.Page{
        private DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load (object sender, EventArgs e) {
            var r = db.Student.Join(
                db.Course,
                s => s.cid,
                c => c.cid,
                (s, c) => new {
                    学号 = s.id,
                    姓名 = s.name,
                    班级 = s.sclass,
                    选修课程 = c.cname,
                    课程成绩 = s.score
                }
            );
            GridView1.DataSource = r;
            GridView1.DataBind();
        }
    }
}