using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace affsbook
{
    /// <summary>
    /// Summary description for login
    /// </summary>
    public class login : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {


            string username = context.Request.QueryString["username"];
            string pass = context.Request.QueryString["password"];

            context.Response.ContentType = "application/json";
            

            //var json = new JavaScriptSerializer().Serialize(ls);

            //context.Response.Write(json);
            context.Response.ContentType = "text/plain";
            context.Response.Write("true");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}