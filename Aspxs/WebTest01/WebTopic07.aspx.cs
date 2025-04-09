using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01 {
    public partial class WebTopic07 : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            if (IsPostBack) {
                return;
            }

            for (int i = 2000; i <= DateTime.Now.Year; i++) {
                DropDownList1.Items.Add(i.ToString());
            }

            for (int i = 1; i <= 12; i++) {
                DropDownList2.Items.Add(i.ToString());
            }

            for (int i = 1; i <= DateTime.DaysInMonth(DateTime.Now.Year,1); i++) {
                DropDownList3.Items.Add(i.ToString());
            }

            DropDownList1.SelectedValue = DateTime.Now.Year.ToString();
            DropDownList2.SelectedValue = DateTime.Now.Month.ToString();
            DropDownList3.SelectedValue = DateTime.Now.Day.ToString();
        }

        protected void DropDownList1_SelectedIndexChanged (object sender, EventArgs e) {
            DropDownList3.Items.Clear();
            for (int i = 1; i <= DateTime.DaysInMonth(int.Parse(DropDownList1.SelectedValue), int.Parse(DropDownList2.SelectedValue)); i++) {
                DropDownList3.Items.Add(i.ToString());
            }
        }

        protected void DropDownList2_SelectedIndexChanged (object sender, EventArgs e) {
            DropDownList3.Items.Clear();
            for (int i = 1; i <= DateTime.DaysInMonth(int.Parse(DropDownList1.SelectedValue), int.Parse(DropDownList2.SelectedValue)); i++) {
                DropDownList3.Items.Add(i.ToString());
            }
        }
    }
}