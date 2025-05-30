﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest03 {
    // string connectionString = ConfigurationManager.ConnectionStrings["WebTest01ConnectionString"].ConnectionString;
    public partial class WebForm2 : System.Web.UI.Page {
        private DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load (object sender, EventArgs e) {
            if (IsPostBack) {
                return;
            }

            var data = db.Student.Select(s => new { s.name, s.id });
            foreach (var s in data) {
                DropDownList1.Items.Add(new ListItem(s.name,s.id));
            }
        }

        protected void Button1_Click (object sender, EventArgs e) {
            Label1.Text = $"您选择的学生学号是\"{DropDownList1.SelectedValue}\",姓名是\"{DropDownList1.SelectedItem.Text}\"";
        }
    }
}