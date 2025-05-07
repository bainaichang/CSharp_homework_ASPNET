using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest03 {
    public partial class WebForm3 : System.Web.UI.Page {
        private DataClasses1DataContext db = new DataClasses1DataContext();

        protected void Page_Load (object sender, EventArgs e) {
            if (IsPostBack) {
                return;
            }

            

        }

        protected void Button1_Click (object sender, EventArgs e) {
            Label1.Text = $"您选择的学生学号是\"{DropDownList1.SelectedValue}\",姓名是\"{DropDownList1.SelectedItem.Text}\"";
        }
    }
}