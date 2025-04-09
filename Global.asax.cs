﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace ZhouLianFeng_ASP_Demo01{
    public class Global : System.Web.HttpApplication{
        protected void Application_Start(object sender, EventArgs e) {
            
        }

        protected void Application_BeginRequest(object sender, EventArgs e) {
            string url = Request.Url.AbsolutePath;
            if (url.Equals("/")) {
                Response.Redirect("~/Aspxs/WebTest01/WebTopic11.aspx");
            }
        }
        
    }
}