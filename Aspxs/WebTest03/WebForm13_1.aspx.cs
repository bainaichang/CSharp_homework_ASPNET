using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest03 {
    public partial class WebForm13_1 : System.Web.UI.Page {
        private DataClasses1DataContext db = new DataClasses1DataContext();
        private void Frush () {
            var id = Request.QueryString["id"];
            sid.Text = id;
            var set = db.Student.Where(s => s.id.Equals(id)).Select(s => s).First();
            name.Text = set.name;
            sex.Text = set.sex;
            sclass.Text = set.sclass;
        }
        protected void Page_Load (object sender, EventArgs e) {
            if (IsPostBack) {
                return;
            }
            Frush();
        }

        protected void Button1_Click (object sender, EventArgs e) {
            var id = sid.Text;
            var name = this.name.Text;
            var sex = this.sex.Text;
            var sclass = this.sclass.Text;
            var set = db.Student.Where(s => s.id.Equals(id)).Select(s => s).First();
            set.id = id;
            set.name = name;
            set.sex = sex;
            set.sclass = sclass;
            db.SubmitChanges();
            Frush();
        }
    }
}