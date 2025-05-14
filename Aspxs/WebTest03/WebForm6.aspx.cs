using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest03 {
    public partial class WebForm6 : System.Web.UI.Page {
        private DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load (object sender, EventArgs e) {
            if (IsPostBack) {
                return;
            }
        }

        protected void selectBtn_Click (object sender, EventArgs e) {
            var sname = Select_sname.Text;
            var sclass = Select_sclass.SelectedValue;
            IQueryable<Student> r = null;
            if (sname.Equals("")) {
                r = db.Student
                    .Where(s => s.sclass.Equals(sclass))
                    .Select(s => s);
            } else {
                r = db.Student
                    .Where(s => s.name.Equals(sname))
                    .Select(s => s);
            }

            GridView1.DataSource = r;
            GridView1.DataBind();
        }

        protected void insertBtn_Click (object sender, EventArgs e) {
            var student = new Student();
            student.id = Insert_sid.Text;
            student.sclass = Insert_sclass.Text;
            student.name = Insert_sname.Text;
            student.score = int.Parse(Insert_scroe.Text);
            student.sex = Insert_sex.SelectedValue;
            student.cid = Insert_cid.SelectedValue;
            db.Student.InsertOnSubmit(student);
            db.SubmitChanges();
        }

        protected void updateBtn_Click (object sender, EventArgs e) {
            var sid = Update_sid.Text;
            var r = db.Student.Where(s => s.id == sid).Select(s => s).First();
            r.name = Update_sname.Text;
            r.sex = Update_sex.SelectedValue;
            r.sclass = Update_sclass.Text;
            db.SubmitChanges();
        }

        protected void deleteBtn_Click (object sender, EventArgs e) {
            var sid = Delete_sid.Text;
            var r = db.Student.Where(s => s.id == sid).Select(s => s).First();
            db.Student.DeleteOnSubmit(r);
            db.SubmitChanges();
        }

        protected void frush_Click (object sender, EventArgs e) {
            if (!Update_sid.Text.Equals("")) {
                var sid = Update_sid.Text;
                var r = db.Student
                    .Where(s => s.id.Equals(sid))
                    .Select(s => s)
                    .First();
                Update_sclass.Text = r.sclass;
                Update_sex.Text = r.sex;
                Update_sname.Text = r.name;
            }
        }
    }
}