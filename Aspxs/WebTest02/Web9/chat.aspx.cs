using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest02.Web9 {
    public partial class chat : System.Web.UI.Page {
        protected void Page_Load (object sender, EventArgs e) {
            if (Request.Cookies["un"] is null) {
                Response.Redirect("loginuser.aspx");
                return;
            }
            if (IsPostBack) {
                flushFunc();
                return;
            }

            username.Text = $"欢迎你,{Request.Cookies["un"].Value}!聊得开心!";
            onlineNumber.Text = $"当前在线人数:{Session.Count}";

        }
        private void flushFunc () {
            chatBox.Text = string.Join("\n", Global.chats);
            onlineNumber.Text = $"当前在线人数:{Session.Count}";

        }
        protected void Button1_Click (object sender, EventArgs e) {
            // 刷新
            flushFunc();
        }

        protected void Button1_Click1 (object sender, EventArgs e) {
            // 发送
            var userTalk = talkString.Text;
            var info = Request.Cookies["un"].Value +"|"+ DateTime.Now +"|"+ userTalk;
            Global.chats.Add(info);
            flushFunc();
        }
    }
}