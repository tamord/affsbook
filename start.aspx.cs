using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Text.RegularExpressions;
using Facebook;

namespace affsbook
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["code"] != null)
            {

                string accessCode = Request.QueryString["code"].ToString();

                var fb = new FacebookClient();

                string accessToken = "";


                try
                {
                    dynamic result = fb.Post("oauth/access_token", new
                    {

                        // client_id = "1193961570811577",

                        client_id = "736572146815593",

                        //client_secret = "ab5edc4fb513a2a0508724f4a30ae002",

                        client_secret = "9557ef7b4514ab41d32dcb51c2257a88",

                        redirect_uri = "https://www.affsbook.com/start.aspx",

                        //redirect_uri = "http://localhost:57851/start.aspx",

                        code = accessCode

                    });

                    accessToken = result.access_token;

                    FacebookClient client2 = new FacebookClient(accessToken);

                    dynamic me3 = client2.Get("me?fields=email");
                    dynamic me4 = client2.Get("me?fields=first_name");
                    dynamic me5 = client2.Get("me?fields=last_name");
                    dynamic me6 = client2.Get("me?fields=link");

                    string email = me3.email;
                    string first = me4.first_name;
                    string last = me5.last_name;
                    string link = me6.link;

                    /*
                    email = "tal.rachel.7@gmail.com";
                    first = "Rachel";
                    last = "Jones";
                    */

                    affsbook.AffiliatesDataContext db2 = new affsbook.AffiliatesDataContext();

                    //FreelancersBook.freelancersDataContext db2 = new FreelancersBook.freelancersDataContext();

                    int result2 = (from t in db2.Table_Affsbook_Affiliates
                                   where (t.email.Equals(email))
                                   select t.email).Count();

                    if (result2 > 0)
                    {

                        string username = get_username(email);

                        if (username.Equals(""))
                        {
                            return;
                        }

                        int? active = (from t in db2.Table_Affsbook_Affiliates
                                       where (t.email.Equals(email))
                                       select t.active).FirstOrDefault();

                        if (active == null)
                        {
                            error2.Visible = true;
                            error2.Text = "User not Active!";
                            return;
                        }

                        if (active == 0)
                        {
                            error2.Visible = true;
                            error2.Text = "User not Active!";
                            return;
                        }

                        HttpCookie myCookie = new HttpCookie("affsbook");
                        myCookie.Value = username;
                        myCookie.Expires = DateTime.Now.AddDays(120);
                        Response.Cookies.Add(myCookie);

                        Response.Redirect("~/zone");
                        return;

                    }                                

                    else if (result2 == 0)
                    {

                        error2.Visible = false;

                        affsbook.Table_Affsbook_Affiliate tab = new affsbook.Table_Affsbook_Affiliate();
                        affsbook.AffiliatesDataContext db = new affsbook.AffiliatesDataContext();

                        /*FreelancersBook.Table_FreelancersBook_Freelancer tab = new FreelancersBook.Table_FreelancersBook_Freelancer();
                        FreelancersBook.freelancersDataContext db = new FreelancersBook.freelancersDataContext();*/

                        int max2 = 0;

                        try
                        {

                            max2 = (from t in db.Table_Affsbook_Affiliates
                                    select t.id).Max();
                        }

                        catch (Exception ex)
                        {
                            error2.Visible = true;
                            error2.Text = "Error! Try again Later!";
                            return;
                        }


                        tab.id = max2 + 1;                        

                        Random rnd = new Random();

                        /* check if aid exist in freelancers site and if yes copy it */

                        tab.aid = rnd.Next(100001, 99999999); // creates a number between 100001 and 9999999
                        

                        affsbook.AffiliatesDataContext db6 = new affsbook.AffiliatesDataContext();
                        

                        bool isFreelancer = false;

                        var tab6 = (from t in db6.Table_FreelancersBook_Freelancers
                                    where ((t.email.Equals(email)))
                                    select t).FirstOrDefault();

                        if (tab6 != null)
                        {
                            tab.aid = tab6.aid;
                            tab.username = tab6.username;
                            isFreelancer = true;
                        }

                        string value = "100000";


                        if (Request.Cookies["affsbookrefer"] != null)
                        {
                            value = Request.Cookies["affsbookrefer"].Value;
                            //debug3.Text = value;
                        }

                        else if (Request.Cookies["affsbookrefer"] == null)
                        {
                            value = "100000";
                            //debug3.Text = value+" == null";
                        }

                        try
                        {
                            tab.referaid = Convert.ToInt32(value);
                        }

                        catch (Exception ex)
                        {
                            tab.referaid = 100000;
                        }

                        affsbook.AffiliatesDataContext db8 = new affsbook.AffiliatesDataContext();

                        /*
                        * FreelancersBook.freelancersDataContext db5 = new FreelancersBook.freelancersDataContext();
                        * check if user is freelancer and set the aid if yes and apply to freelancersboook job (affsbook)
                        * 
                        * */


                        string the_user3 = (from t in db8.Table_Affsbook_Affiliates
                                            where (t.aid == tab.referaid)
                                            select t.username).FirstOrDefault();

                        string the_user4 = (from t in db8.Table_FreelancersBook_Freelancers
                                            where (t.aid == tab.referaid)
                                            select t.username).FirstOrDefault();


                        if (the_user3 != null)
                        {
                            tab.referusername = the_user3;
                        }

                        else if (the_user3 == null)
                        {

                            if (the_user4 != null)
                            {
                                tab.referusername = the_user4;
                            }

                            else if (the_user4 == null)
                            {
                                tab.referusername = "tamordy";
                            }
                        }


                        affsbook.AffiliatesDataContext db3 = new affsbook.AffiliatesDataContext();

                        /*
                        * FreelancersBook.freelancersDataContext db5 = new FreelancersBook.freelancersDataContext();
                        * check if user is freelancer and set the aid if yes and apply to freelancersboook job (affsbook)
                        * 
                        */                       

                        tab.signupdate = DateTime.Now;
                        tab.active = 1;
                        tab.suspended = 0;
                        tab.emailconfirmed = 0;
                        tab.identityconfirmed = 0;
                        tab.contactconfirmed = 0;
                        tab.phoneconfirmed = 0;
                        tab.profileconfirmed = 0;

                        tab.email = email;

                        if (isFreelancer == false)
                        {
                            tab.username = subst(tab.email);
                        }

                        tab.fullname = first + " " + last;
                        tab.displayname = first + " " + last;

                        //tab.skype = myskype.Text;
                        //tab.whatsapp = mywhatsapp.Text;

                        tab.gender = "Male";

                        //tab.gender = DropDownGender.SelectedItem.Text;
                        //tab.city = mycity.Text;
                        //tab.country = DropDownCountry.SelectedItem.Text;

                        tab.company = "";
                        tab.title = "";
                        tab.affiliatesreferred = 0;

                        tab.kind = "Affiliate";

                        //tab.experience = myexperience.Text;

                        //tab.facebook = myfacebook.Text;

                        //tab.linkedin = mylinkedin.Text;

                        tab.facebook = link;
                        tab.linkedin = "";
                        tab.twitter = "";
                        tab.youtubeprofile = "";
                        tab.biography = "";


                        //tab.biography = mybiography.Text;

                        tab.profileimage = "";          // change to uploaded image            

                        tab.balance = 0;
                        tab.lastpayout = 0;

                        string last_name = tab.fullname;
                        string last_email = tab.email;
                        string last_user = tab.username;
                        //string last_pass = tab.password;
                        string last_aid = tab.aid.ToString();

                        affsbook.AffiliatesDataContext db5 = new affsbook.AffiliatesDataContext();

                        var tab2 = (from t in db5.Table_Affsbook_Affiliates
                                    where (t.username.Equals(tab.referusername))
                                    select t).FirstOrDefault();

                        db.Table_Affsbook_Affiliates.InsertOnSubmit(tab);

                        try
                        {
                            db.SubmitChanges();
                        }

                        catch (Exception ex)
                        {

                            error2.Visible = true;
                            error2.Text = "Error! Please try again Later!";
                            return;
                        }

                        string refname = "";

                        if (tab2 == null)
                        {

                            var tab3 = (from t in db3.Table_FreelancersBook_Freelancers
                                        where (t.username.Equals(tab.referusername))
                                        select t).FirstOrDefault();

                            if (tab3 != null)
                            {
                                refname = tab3.fullname;
                            }

                            else if (tab3 == null)
                            {
                                refname = "Mody Tal";
                            }
                        }

                        else if (tab2 != null)
                        {
                            bool one = countone(tab2.username);

                            if (one == true)
                            {
                                referemail(tab2.fullname, tab2.email);
                            }

                            refname = tab2.fullname;
                        }


                        /*
                         * 
                         * check if freelancer from freelancersbook referred the user
                         * */

                        affsbook.AffiliatesDataContext db4 = new affsbook.AffiliatesDataContext();


                        confirmemail(last_name, last_email, last_aid);

                        string body2 = "Affiliate: " + last_name + " has confirmed email through facebook.";

                        body2 += "\n\n";
                        body2 += "Referring Affiliate: " + refname;
                        body2 += "\n\n";

                        body2 += "Referring Aid: " + tab.referaid;
                        body2 += "\n\n";

                        body2 += "Facebook Profile: " + tab.facebook;
                        body2 += "\n\n";


                        if (isFreelancer == true)
                        {

                            body2 += "Migrated from Freelancers Book";
                            body2 += "\n\n";
                        }

                        string subject2 = "Affiliate: " + last_name + " has confirmed email through facebook! Referred by: " + refname;

                        sendEmail("tamord@gmail.com", subject2, body2, false);

                        HttpCookie myCookie = new HttpCookie("affsbook");

                        string username = get_username(tab.email);                        
                        myCookie.Value = tab.username;
                        myCookie.Expires = DateTime.Now.AddDays(120);

                        if (username != null)
                        {
                            Response.Cookies.Add(myCookie);
                        }

                        /*

                        FreelancersBook.jobsDataContext db6 = new FreelancersBook.jobsDataContext();
                        FreelancersBook.Table_FreelancersBook_JobsApply tab6 = new FreelancersBook.Table_FreelancersBook_JobsApply();

                        string username = last_user;
                        string aid = last_aid;
                        string email3 = last_email;
                        int myaid = Convert.ToInt32(aid);

                        var done = (from t in db6.Table_FreelancersBook_JobsApplies
                                    where ((t.usernameapply.Equals(username)) && (t.jobid == 4))
                                    select t).FirstOrDefault();

                        if (done != null)
                        {
                            Response.Redirect("~/worklounge.aspx");
                            return;
                        }

                        //int aid = get_aid(username);

                        int jobid = 4;

                        max2 = 0;

                        try
                        {
                            max2 = (from t in db6.Table_FreelancersBook_JobsApplies
                                    select t.id).Max();
                        }

                        catch (Exception ex)
                        {
                        }

                        tab6.id = max2 + 1;
                        tab6.jobid = jobid;
                        tab6.usernameapply = username;
                        tab6.aidapply = myaid;
                        tab6.letter = "Joined by Invitation";


                        db6.Table_FreelancersBook_JobsApplies.InsertOnSubmit(tab6);
                        db6.SubmitChanges();

                    */

                        // send email

                        //apply_message2(email3, last_name);                    

                        Response.Redirect("~/zone");

                    }

            }

                catch (Exception ex)
                {

                }


            }




            if (!Page.IsPostBack)
            {
                //string aid = "100000";



                if (Request.QueryString["aid"] != null)
                {
                    HttpCookie myCookie = new HttpCookie("affsbookrefer");
                    myCookie.Value = Request.QueryString["aid"].ToString();
                    myCookie.Expires = DateTime.Now.AddDays(90);
                    Response.Cookies.Add(myCookie);
                }

                string value = "100000";

                //debug_aid();

                if (Request.Cookies["affsbook"] != null)
                {
                    Response.Redirect("~/zone");                

                }

                else if (Request.Cookies["affsbook"] == null)
                {
                    resetvals();
                    return;
                }
           
            }
        }

        public string get_username(string email)
        {
            affsbook.AffiliatesDataContext db = new affsbook.AffiliatesDataContext();
            //FreelancersBook.freelancersDataContext db = new FreelancersBook.freelancersDataContext();

            string the_username = (from t in db.Table_Affsbook_Affiliates
                                   where (t.email.Equals(email))
                                   select t.username).FirstOrDefault();

            if (the_username == null)
                return "";

            return the_username;
        }

        public void debug_aid()
        {

            string User_Aid = string.Empty;            
            string value = "100000";

            if (Request.Cookies["affsbookrefer"] != null)
            {

                value = Request.Cookies["affsbookrefer"].Value;
                //debug3.Text = value;
            }

            else if (Request.Cookies["affsbookrefer"] == null)
            {
                value = "100000";
                //debug3.Text = value+" == null";
            }

            
            affsbook.AffiliatesDataContext db2 = new affsbook.AffiliatesDataContext();
            
            int num = 0;

            try
            {
                num = Convert.ToInt32(value);                          
            }
            catch (Exception ex)
            {                
                num = 100000;
            }

            string the_user = (from t in db2.Table_Affsbook_Affiliates
                               where (t.aid == num)
                               select t.username).FirstOrDefault();

            if (the_user == null)
            {
                the_user = "Mody Tal";

            }

            //debug.Text = "Referring: " + the_user + " / " + value;


        }


        protected void login(object sender, EventArgs e)
        {
            Response.Redirect("~/zone");
        }

        public void resetvals()
        {         
                        
            emailval.Visible = false;
            emailval.Text = "E-Mail Needed!";            
            pass1val.Visible = false;            
            fullnameval.Visible = false;                     
            pass1val.Text = "Password Needed!";
            countryval.Visible = false;

            //the_pass = "";*/
        }


        public bool emailValid(string email)
        {

            Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
            Match match = regex.Match(email);
            return match.Success;

        }



        protected void next1(object sender, EventArgs e)
        {

            
            resetvals();                                

            

            if (myemail.Text.Equals(""))
            {
                emailval.Visible = true;
                ImageButton6.Focus();
                return;
            }


            if (!emailValid(myemail.Text))
            {
                emailval.Visible = true;
                emailval.Text = "Must be a valid email!";
                ImageButton6.Focus();
                return;
            }

            affsbook.AffiliatesDataContext db2 = new affsbook.AffiliatesDataContext();

            int result2 = (from t in db2.Table_Affsbook_Affiliates
                           where (t.email.Equals(myemail.Text))
                           select t.email).Count();

            if (result2 > 0)
            {

                emailval.Visible = true;
                emailval.Text = "Email already exist!";
                ImageButton6.Focus();
                return;

            }




            if (mypass1.Text.Equals(""))
            {
                pass1val.Visible = true;
                ImageButton6.Focus();
                return;
            }


            if (mypass1.Text.Length < 7)
            {
                pass1val.Visible = true;
                pass1val.Text = "Passwords length must be at least 7 characters!";
                ImageButton6.Focus();
                return;
            }

            if (myfullname.Text.Equals(""))
            {
                fullnameval.Visible = true;
                ImageButton6.Focus();
                return;
            }

            if (DropDownCountry.SelectedIndex == 0)
            {
                countryval.Visible = true;
                ImageButton6.Focus();
                return;
            }


            Random rnd = new Random();
            
            int pin = rnd.Next(100001, 999999);
            string pinstr = pin.ToString();
            Session["mypin"] = pinstr;
            Session["mypass"] = mypass1.Text;

            //referupdate(tab2.fullname, tab2.email, tab2.username, tab2.program);

            //confirmemail(last_name, last_email, last_user, pinstr);

            string last_name = myfullname.Text;
            string last_email = myemail.Text;

            //string last_user = myusername.Text;

            confirmemail2(last_name, last_email, pinstr);

            //send_me_confirm(last_user, last_email,pinstr);


            MultiView1.ActiveViewIndex = 0;

            

        }


        public bool sendEmail(string myto, string mysubject, string mybody, bool copytamord)
        {

            string pass = "Ta81573049%";

            //string pass = "Ta815730!";

            //string pass = "Ta815730!";

            MailMessage message = new MailMessage();
            string from = "john@affsbook.com";
            string to = myto;



            try
            {
                var client = new SmtpClient("smtp.gmail.com", 587)
                {
                    Credentials = new NetworkCredential("john@affsbook.com", pass),
                    EnableSsl = true

                };

                client.Send(from, to, mysubject, mybody);

                if (copytamord)
                {
                    client.Send(from, "tamord@gmail.com", mysubject, mybody);
                }


            }
            catch (Exception ex)
            {

                return false;

            }

            return true;


        }

        public string firstName(string name)
        {
            string myname = name;

            try
            {
                var names = name.Split(' ');
                myname = names[0];
            }
            
            catch (Exception ex)
            {
                myname = name;
            }
            
            return myname;
        }

        public void confirmemail2(string name, string email, string pin)
        {

            string fst = firstName(name);

            string subject = "Affsbook: You need to confirm your e-mail!";
            //string subject2 = "Offers Ads: New advertiser have signed up!";

            string body = "Dear " + fst + ",\n\n";

            body += "Thank you for signing up to Affsbook: the new and always growing affiliates community!";
            body += "\n\n";

            body += "You will need to confirm your e-mail so please enter the following pin code in the form.";
            body += "\n\n";

            body += "The pin code: " + pin;
            body += "\n\n";

            body += "Sincerely,\n";
            body += "The Affsbook Team";

            sendEmail(email, subject, body, false);            


        }

        public void referemail(string name, string email)
        {

            string subject = "Affsbook: You have referred your first affiliate!";

            //string subject2 = "Freelancers Book: New Freelancer has signed up!";

            var names = name.Split(' ');
            string myname = names[0];

            string body = "Dear " + myname + ",\n\n";

            body += "Congratulations! you have just referred your first affiliate! \n\n";

            body += "So, you have the link already - go ahead and refer some more affiliates.";
            body += "\n\n";

            body += "They can be: your friends, your colleagues or other affiliates from facebook or linkedin!";
            body += "\n\n";

            /*

            body += "Need some inspiration on where to find more freelancers? plz watch our new tutorial video:";
            body += "\n\n";

            body += @"https://www.youtube.com/watch?v=-CCCkJd8bdE";
            body += "\n\n";

            */

            body += "So, Keep up the Good Work! and you will be rewarded! ";
            body += "\n\n";

            body += "Sincerely,\n";
            body += "The Affsbook Team";

            sendEmail(email, subject, body, true);

            //sendEmail("tamord@gmail.com", subject2, body2, false);
        }



        public void confirmemail(string name, string email, string aid)
        {

            string subject = "Affsbook: You have signed up successfully!";

            //string subject2 = "Affsbook: New affiliate has signed up!";

            string fst = firstName(name);

            string body = "Dear " + fst + ",\n\n";

            body += "Congratulations! you have successfully signed up to Affsbook!\n\n";


            body += "You can now login and start your visit... find offers, join forums, add blogs and start earning!";
            body += "\n\n";

            body += "Please login to Affsbook from here:";
            body += "\n\n";

            body += @"https://www.affsbook.com/zone";
            body += "\n\n";

            /*

            body += "Have friends, colleagues or partners that might want to join us? Please refer them to:";
            body += "\n\n";

            body += @"http://www.freelancy.tk/freelancers.aspx?aid=" + aid;
            body += "\n\n";
            
            body += "We will pay you up to $7.5 for every freelancer referred! and up to 35% from our commission!";
            body += "\n\n";

            */

            /*


            body += "for more information on where to find freelancers please watch this video clip:";
            body += "\n\n";

            body += @"https://www.youtube.com/watch?v=-CCCkJd8bdE";
            body += "\n\n";

            */

            body += "Sincerely,\n";
            body += "The Affsbook Team";

            sendEmail(email, subject, body, false);
            //sendEmail("tamord@gmail.com", subject2, body2, false);



        }


        public void send_me_confirm(string username, string email , string pin)
        {
            string body2 = "Affiliate: " + username + " have signed up to Affsbook";
            body2 += "\n\n";
            body2 += "His e-mail is: " + email + "\n\n";

            body2 += " his pin code is: " + pin + "\n\n";

            body2 += "Contact him in case he won't verify email";
            string subject2 = "Affsbook: New affiliate have signed up!";
            sendEmail("tamord@gmail.com", subject2, body2, false);

        }

        protected void confirm_click(object sender, EventArgs e)
        {

            //Response.Redirect("https://www.affsbook.com/zone/?profile=1");  

        }

        protected void send_again_click(object sender, EventArgs e)
        {
            error2.Visible = false;

            string thepin = "";

            if (Session["mypin"] != null)
            {
                thepin = Session["mypin"].ToString();
            }


            else if (Session["mypin"] == null)
            {
                error2.Visible = true;
                error2.Text = "Mypin Session Expired";
                MultiView1.ActiveViewIndex = 1;
                
                //error2.Visible = true;
                return;
            }

            //confirmemail2(myfullname.Text, myemail.Text, myusername.Text, thepin);
            //error3.Visible = true;
        }

        protected void login(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/zone");
        }

        protected void fblogin_click(object sender, ImageClickEventArgs e)
        {
            var fb = new FacebookClient();

            var loginUrl = fb.GetLoginUrl(new
            {
                //
                //client_id = "1193961570811577",

                client_id = "736572146815593",

                redirect_uri = "https://www.affsbook.com/start.aspx",                

                //redirect_uri = "http://localhost:57851/start.aspx",

                response_type = "code",

                //scope = "email,user_link" // Add other permissions as needed

                //scope = "email, user_link"             

                scope = "email" // Add other permissions as needed

            });


            Response.Redirect(loginUrl.AbsoluteUri);
        }

        protected void confirm(object sender, EventArgs e)
        {
            error.Visible = false;
            pinerror.Visible = false;


            string thepin = "";

            if (Session["mypin"] != null)
            {
                thepin = Session["mypin"].ToString();
            }


            else if (Session["mypin"] == null)
            {
                error.Visible = true;
                error.Text = "Pin Session Expired";
                //error2.Visible = true;
                return;
            }

            if (!(thepin.Equals(mypin.Text)))
            {
                pinerror.Visible = true;
                return;
            }

            affsbook.AffiliatesDataContext db = new affsbook.AffiliatesDataContext();

            //FreelancersBook.freelancersDataContext db = new FreelancersBook.freelancersDataContext();

            
            string mypass = "";

            if (Session["mypass"] == null)
            {
                error.Visible = true;
                error.Text = "Password Session Expired";
                //error2.Visible = true;
                return;
            }

            mypass = Session["mypass"].ToString();


            int result = (from t in db.Table_Affsbook_Affiliates
                          where ((t.email.Equals(myemail.Text)))
                          select t.email).Count();

            if (result > 0)
            {

                error.Text = "E-Mail Already Exists! Try Again!";
                error.Visible = true;
                return;

            }

            affsbook.Table_Affsbook_Affiliate tab = new affsbook.Table_Affsbook_Affiliate();           


            int max2 = 0;

            try
            {

                max2 = (from t in db.Table_Affsbook_Affiliates
                        select t.id).Max();
            }

            catch (Exception ex)
            {

            }
            

            tab.id = max2 + 1;
            tab.password = mypass;

            Random rnd = new Random();

            /* check if aid exist in freelancers site and if yes copy it */

            tab.aid = rnd.Next(100001, 99999999); // creates a number between 100001 and 9999999

            affsbook.AffiliatesDataContext db6 = new affsbook.AffiliatesDataContext();                       

            string email = myemail.Text;
            bool isFreelancer = false;

            var tab6   =          (from t in db6.Table_FreelancersBook_Freelancers
                                   where ((t.email.Equals(myemail.Text)))
                                   select t).FirstOrDefault();

            if (tab6 != null)
            {
                tab.aid = tab6.aid;
                tab.username = tab6.username;
                isFreelancer = true;
            }           

            string value = "100000";


            if (Request.Cookies["affsbookrefer"] != null)
            {
                value = Request.Cookies["affsbookrefer"].Value;
                //debug3.Text = value;
            }

            else if (Request.Cookies["affsbookrefer"] == null)
            {
                value = "100000";
                //debug3.Text = value+" == null";
            }

            try
            {
                tab.referaid = Convert.ToInt32(value);
            }

            catch (Exception ex)
            {
                tab.referaid = 100000;
            }

            affsbook.AffiliatesDataContext db2 = new affsbook.AffiliatesDataContext();
            
             /*
             * FreelancersBook.freelancersDataContext db5 = new FreelancersBook.freelancersDataContext();
             * check if user is freelancer and set the aid if yes and apply to freelancersboook job (affsbook)
             * 
             * */


            string the_user3 = (from t in db2.Table_Affsbook_Affiliates
                               where (t.aid == tab.referaid)
                               select t.username).FirstOrDefault();

            string the_user4 = (from t in db2.Table_FreelancersBook_Freelancers
                               where (t.aid == tab.referaid)
                               select t.username).FirstOrDefault();


            if (the_user3 != null)
            {               
                tab.referusername = the_user3;
            }

            else if (the_user3 == null)
            {

                    if (the_user4 != null)
                    {
                        tab.referusername = the_user4;
                    }

                    else if (the_user4 == null)
                    {
                        tab.referusername = "tamordy";
                    }
            }


            tab.signupdate = DateTime.Now;
            tab.active = 1;
            tab.suspended = 0;
            tab.emailconfirmed = 1;
            tab.identityconfirmed = 0;
            tab.contactconfirmed = 0;
            tab.phoneconfirmed = 0;
            tab.profileconfirmed = 0;

            tab.email = myemail.Text;

            if (isFreelancer == false)
            {
                tab.username = subst(tab.email);
            }
            

            tab.fullname = myfullname.Text;
            tab.displayname = myfullname.Text;
            tab.skype = myskype.Text;
            tab.whatsapp = mywhatsapp.Text;

            tab.gender = "Male";

            //tab.gender = DropDownGender.SelectedItem.Text;
            //tab.city = mycity.Text;


            tab.country = DropDownCountry.SelectedItem.Text;

            tab.company = "";
            tab.title = "";
            tab.affiliatesreferred = 0;

            tab.kind = "Affiliate";

            //tab.experience = myexperience.Text;

            //tab.facebook = myfacebook.Text;

            //tab.linkedin = mylinkedin.Text;

            tab.facebook = "";
            tab.linkedin = "";
            tab.twitter = "";
            tab.youtubeprofile = "";
            tab.biography = "";


            //tab.biography = mybiography.Text;

            tab.profileimage = "";          // change to uploaded image            
            
            tab.balance = 0;
            tab.lastpayout = 0;

            string last_name = tab.fullname;
            string last_email = tab.email;
            string last_user = tab.username;
            string last_pass = tab.password;
            string last_aid = tab.aid.ToString();

            affsbook.AffiliatesDataContext db3 = new affsbook.AffiliatesDataContext();

            var tab2 = (from t in db3.Table_Affsbook_Affiliates
                        where (t.username.Equals(tab.referusername))
                        select t).FirstOrDefault();


            db.Table_Affsbook_Affiliates.InsertOnSubmit(tab);          
            
            try
            {

                db.SubmitChanges();

            }

            catch (Exception ex)
            {

                error.Visible = true;
                error.Text = ex.Message;
                return;
            }


            //referupdate(tab2.fullname, tab2.email, tab2.username, tab2.program);

            //FreelancersBook.freelancersDataContext db3 = new FreelancersBook.freelancersDataContext();

            /*
             * 
             * check if freelancer from freelancersbook referred the user
             * */

            


            string refname = "";

            if (tab2 == null)
            {

                var tab3 = (from t in db3.Table_FreelancersBook_Freelancers
                            where (t.username.Equals(tab.referusername))
                            select t).FirstOrDefault();

                if (tab3 != null)
                {
                    refname = tab3.fullname;
                }

                else if (tab3 == null)
                {
                    refname = "Mody Tal";
                }
            }

            else if (tab2 != null)
            {
                bool one = countone(tab2.username);

                if (one == true)
                {
                    referemail(tab2.fullname, tab2.email);
                }

                refname = tab2.fullname;
            }

            confirmemail(last_name, last_email, last_aid);

            //string kind2 = "Freelancer";

            string body2 = "Affiliate: " + last_name + " has confirmed email.";

            body2 += "\n\n";
            body2 += "Referring Affiliate: " + refname;
            body2 += "\n\n";

            body2 += "Referring Aid: " + tab.referaid;
            body2 += "\n\n";

            body2 += "Affiliate Country: " + tab.country;
            body2 += "\n\n";

            body2 += "Affiliate Skype: " + tab.skype;
            body2 += "\n\n";


            if (isFreelancer == true)
            {

                body2 += "Migrated from Freelancers Book";
                body2 += "\n\n";
            }

            string subject2 = "Affiliate: " + last_name + " has confirmed email! Referred by: " + refname;

            sendEmail("tamord@gmail.com", subject2, body2, false);

            /* 
             * 
             * should be in control panel add affiliate to the freelancers book job for referring affiliates


            FreelancersBook.jobsDataContext db6 = new FreelancersBook.jobsDataContext();
            FreelancersBook.Table_FreelancersBook_JobsApply tab6 = new FreelancersBook.Table_FreelancersBook_JobsApply();

            string username = last_user;
            string aid = last_aid;
            string email = last_email;
            int myaid = Convert.ToInt32(aid);

            var done = (from t in db6.Table_FreelancersBook_JobsApplies
                        where ((t.usernameapply.Equals(username)) && (t.jobid == 4))
                        select t).FirstOrDefault();

            if (done != null)
            {
                return;
            }

            //int aid = get_aid(username);

            int jobid = 4;

            max2 = 0;

            try
            {
                max2 = (from t in db6.Table_FreelancersBook_JobsApplies
                        select t.id).Max();
            }

            catch (Exception ex)
            {
            }

            tab6.id = max2 + 1;
            tab6.jobid = jobid;
            tab6.usernameapply = username;
            tab6.aidapply = myaid;
            tab6.letter = "Joined by Invitation";


            db6.Table_FreelancersBook_JobsApplies.InsertOnSubmit(tab6);
            db6.SubmitChanges();

            // send email            

            //apply_message2(email, last_name);
            //market_message(email, last_name);

            // complete profile message
            // invitation to freelancers book

            */

            Response.Redirect("https://www.affsbook.com/zone");            

        }

        public string subst(string st)
        {
            int sht = st.IndexOf('@');
            string sub = st.Substring(0, sht);
            Random rnd = new Random();
            int num = rnd.Next(100, 9909);
            sub += num.ToString();
            return sub;
        }


        public bool countone(string username)
        {
            affsbook.AffiliatesDataContext db = new affsbook.AffiliatesDataContext();
            //affsbook.Table_Affsbook_Affiliate tab = new affsbook.Table_Affsbook_Affiliate();

            //FreelancersBook.freelancersDataContext db = new FreelancersBook.freelancersDataContext();

            var freelancers3 = (from t in db.Table_Affsbook_Affiliates
                       orderby t.id descending
                       select t);

            if (freelancers3 == null)
                return false;

            int count = 0;

            foreach (var freelancer in freelancers3)
            {
                string referuser = freelancer.referusername;

                if (referuser.Equals(username))
                {
                    count++;
                }
            }

            if (count == 1)
                return true;

            return false;
        }



        protected void signup(object sender, ImageClickEventArgs e)
        {
            next1(sender, e);
        }
    }
}