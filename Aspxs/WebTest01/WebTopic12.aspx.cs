using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ZhouLianFeng_ASP_Demo01.Aspxs.WebTest01 {
    public partial class WebTopic12 : System.Web.UI.Page {
        Button button = new Button();
        TextBox textBox = new TextBox();
        Label result = new Label();
        protected void Page_Load (object sender, EventArgs e) {
            button.Text = "动态按钮";
            button.Click += (object source, EventArgs eventArgs) => {
                result.Text = textBox.Text;
            };
            PlaceHolder1.Controls.Add(result);
            PlaceHolder1.Controls.Add(button);
            PlaceHolder1.Controls.Add(textBox);
            
        }

    }
}