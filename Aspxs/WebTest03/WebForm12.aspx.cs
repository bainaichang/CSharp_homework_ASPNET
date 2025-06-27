using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest03 {
    public partial class WebForm12 : System.Web.UI.Page{
        private DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load (object sender, EventArgs e) {

        }

        protected void GridView1_SelectedIndexChanged (object sender, EventArgs e) {
            var sid = GridView1.SelectedValue.ToString();
            var set = db.Student.Where(s => s.id.Equals(sid)).Select(s => s).First();
            Label1.Text = $"{set.id} {set.name} {set.sex} {set.cid} {set.sclass} {set.score} {set.img}";
        }
    }
}