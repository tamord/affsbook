using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace affsbook
{
    public class FeedInfo
    {
        public string kind;
        public int authoraid;
        public string authorusername;
        public DateTime? date;
        public string title;
        public string shortdesc;
        public int? replies;
        public string type;
        public string vertical;
        public string imageurl;
        public int priority;
        public int sponsored;
        public int featured;
        public int popular;
        public int isnew;
        public int likes;
        public int? threadid;
        public int? offerid;
        public int? blogid;        

        public FeedInfo(string kind, int authoraid, DateTime? date, string title, string vertical)
        {
            this.kind = kind;
            this.authoraid = authoraid;
            this.date = date;
            this.title = title;
            this.vertical = vertical;            
        }
    }
}