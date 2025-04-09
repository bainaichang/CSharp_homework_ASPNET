using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace ZhouLianFeng_ASP_Demo01.Aspxs {
    public partial class index : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            if (!IsPostBack) {
                int val = int.Parse(Label1.Text);
                val++;
                Label1.Text = val.ToString();
            }
        }

        protected void click1 (object sender, EventArgs e) {
            string text1 = username.Value;
            if (text1.Equals("")) {
                Response.Write("<script>alert(\"请输入用户名!\")</script>");
                return;
            }
            HttpCookie cookie = new HttpCookie("username", text1);
            // cookie.Expires = DateTime.Now.AddDays(-1);
            Response.SetCookie(cookie);
            Response.Redirect("~/Aspxs/OK.aspx");
            // int val = int.Parse(Label1.Text);
            // val++;
            // Label1.Text = val.ToString();
            // string connectionString = ConfigurationManager.ConnectionStrings["MySqlConnection"].ConnectionString;
            // MySqlConnection conn = new MySqlConnection(connectionString);
            // conn.Open();
            // string query = "SELECT * FROM c";
            // MySqlCommand cmd = new MySqlCommand(query, conn);
            // MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            // DataTable dt = new DataTable();
            // da.Fill(dt);
            // GridView1.DataSource = dt;
            // GridView1.DataBind();
            // MySqlDataReader reader = cmd.ExecuteReader();
            // while (reader.Read()) {
            //     string cno = reader["cno"].ToString();
            //     string cname = (string)reader["cname"];
            //     string credit = reader["credit"].ToString();
            //     Label1.Text += $"{cno}\t{cname}\t{credit} || ";
            // }
            /*  参数化查询（防SQL注入）：
                string query = "SELECT * FROM Users WHERE Username = @username";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@username", txtUsername.Text);
             */
        }
        protected void click2 (object sender, EventArgs e) {

        }

    }
}