using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace affsbook
{
    public partial class adminaffiliates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void reset_drop()
        {

            affsbook.AffiliatesDataContext db2 = new affsbook.AffiliatesDataContext();            


            //adsrush.Table_My_Affiliate_Waiting_List2 tab = new adsrush.Table_My_Affiliate_Waiting_List2();

            var the_list2 = (from t in db2.Table_Affsbook_Affiliates
                             orderby t.fullname
                             select t);

            dropdownemail.Items.Clear();
            dropdownuser2.Items.Clear();
            dropdownfname.Items.Clear();

            dropdownemail.Items.Add("Select E-Mail");
            dropdownuser2.Items.Add("Select Username");
            dropdownfname.Items.Add("Select Full Name");

            foreach (var tab in the_list2)
            {
                string st = tab.email;
                string st2 = tab.username;
                string st3 = tab.fullname;

                dropdownemail.Items.Add(st);
                dropdownuser2.Items.Add(st2);
                dropdownfname.Items.Add(st3);


                //ListItem item = new ListItem(st2,st2);
                //dropdownuser.Items.Add(item);
            }


            afullname.Text = "";
            mytype.Text = "";
            myemail.Text = "";
            Username.Text = "";
            myfullname.Text = "";
            mydisplayname.Text = "";
            mygender.Text = "";
            mycompany.Text = "";
            mytitle.Text = "";
            myadd.Text = "";
            mycity.Text = "";
            mystate.Text = "";
            myzip.Text = "";
            mycountry.Text = "";
            myphone.Text = "";
            myskype.Text = "";
            mywhatsapp.Text = "";
            mytwitter.Text = "";
            myfacebook.Text = "";
            mylinkedin.Text = "";
            myactive.Text = "";
            mysuspended.Text = "";

            myprofileimage.Text = "";
            myyoutubeprofile.Text = "";
            myprofilelink.Text = "";
            mywebsites.Text = "";
            myblogs.Text = "";
            mypaymentmethod.Text = "";
            mysignupdate.Text = "";
            myaffreferred.Text = "";
            myeducation.Text = "";
            mylanguages.Text = "";
            myhobbies.Text = "";
            mybiography.Text = "";
            mycontactconfirm.Text = "";
            myphoneconfirmed.Text = "";
            myidentityconfirmed.Text = "";
            myemailconfirmed.Text = "";
            myprofileconfirmed.Text = "";
            myaid.Text = "";
            myreferaid.Text = "";
            myusername.Text = "";

            mymainniche.Text = "";
            myniche2.Text = "";
            myniche3.Text = "";
            mysubniche.Text = "";
            //emaillabel.Visible = false;
            //error.Visible = false;

        }


        protected void Login_Clicked(object sender, EventArgs e)
        {
            //Panel1.Visible = false;
            string temp = "tal12345";
            wrong.Visible = false;


            if (!((Username.Text.Equals("admin")) && (Password.Text.Equals(temp))))
            {
                //Panel1.Visible = true;
                wrong.Visible = true;
                return;
            }

            //welcome.Text = "Welcome to The Admin Affiliates";

            reset_drop();


            if (Request.QueryString["username"] != null)
            {

                string value = Request.QueryString["username"].ToString();

                if (value != null)
                {
                    //init_contacts();  

                    dropdownuser2.SelectedValue = value;
                    load_click(this, e);
                    MultiView1.ActiveViewIndex = 1;
                    return;
                }
            }

            MultiView1.ActiveViewIndex = 1;
        }


        protected void load_click(object sender, EventArgs e)
        {
            //Label1.Visible = false;

            string the_email = dropdownemail.SelectedItem.Text;
            string the_user = dropdownuser2.SelectedItem.Text;
            string the_fname = dropdownfname.SelectedItem.Text;

            affsbook.AffiliatesDataContext db2 = new affsbook.AffiliatesDataContext();
            affsbook.Table_Affsbook_Affiliate tab = new affsbook.Table_Affsbook_Affiliate();


            if (!(dropdownemail.SelectedItem.Text.Equals("Select E-Mail")))
            {

                tab = (from t in db2.Table_Affsbook_Affiliates
                       where (t.email.Equals(the_email))
                       select t).FirstOrDefault();
            }

            if (!(dropdownuser2.SelectedItem.Text.Equals("Select Username")))
            {
                tab = (from t in db2.Table_Affsbook_Affiliates
                       where (t.username.Equals(the_user))
                       select t).FirstOrDefault();
            }

            if (!(dropdownfname.SelectedItem.Text.Equals("Select Full Name")))
            {
                tab = (from t in db2.Table_Affsbook_Affiliates
                       where (t.fullname.Equals(the_fname))
                       select t).FirstOrDefault();
            }


            if (tab == null)
            {
                Label1.Visible = true;
                return;
            }
            
            afullname.Text = tab.fullname;

            dropdownuser2.SelectedValue = tab.username;
            dropdownemail.SelectedValue = tab.email;
            dropdownfname.SelectedValue = tab.fullname;

            affsbook.AffiliatesDataContext db3 = new affsbook.AffiliatesDataContext();


            var tab2 = (from t in db3.Table_Affsbook_Affiliates
                        where (t.username.Equals(tab.referusername))
                        select t).FirstOrDefault();

            string refname = "";

            if (tab2 == null)
                refname = "Mody Tal";
            else
                refname = tab2.fullname;


            arefername.Text = refname;

            myemail.Text = tab.email;
            mytype.Text = tab.kind;
            Username.Text = tab.username;
            //mypassword.Text = tab.password.Substring(0, 5) + "...";
            mypassword.Text = tab.password;
            myfullname.Text = tab.fullname;
            mydisplayname.Text = tab.displayname;
            mygender.Text = tab.gender;
            mycompany.Text = tab.company;
            mytitle.Text = tab.title;
            

            myadd.Text = tab.address;
            mycity.Text = tab.city;
            mystate.Text = tab.state;
            myzip.Text = tab.zip;
            mycountry.Text = tab.country;
            myphone.Text = tab.phone;

            myskype.Text = tab.skype;
            mywhatsapp.Text = tab.whatsapp;
            mytwitter.Text = tab.twitter;
            myfacebook.Text = tab.facebook;
            mylinkedin.Text = tab.linkedin;

            myactive.Text = tab.active.ToString();
            mysuspended.Text = tab.suspended.ToString();

            myprofileimage.Text = tab.profileimage;
            myprofilelink.Text = tab.profilelink;
            myyoutubeprofile.Text = tab.youtubeprofile;

            mywebsites.Text = tab.websites;
            myblogs.Text = tab.blog;
            mypaymentmethod.Text = tab.paymentmethod;
            mysignupdate.Text = tab.signupdate.ToString();
            myaffreferred.Text = tab.affiliatesreferred.ToString();

            myeducation.Text = tab.education;
            mylanguages.Text = tab.languages;
            myhobbies.Text = tab.hobbies;
            mybiography.Text = tab.biography;
            
            mymainniche.Text = tab.niche1;
            myniche2.Text = tab.niche2;
            myniche3.Text = tab.niche3;
            mysubniche.Text = tab.subniche1;
            myadditional.Text = tab.moreniches;

            mycontactconfirm.Text = tab.contactconfirmed.ToString();
            myprofileconfirmed.Text = tab.profileconfirmed.ToString();
            myemailconfirmed.Text = tab.emailconfirmed.ToString();
            myidentityconfirmed.Text = tab.identityconfirmed.ToString();
            myphoneconfirmed.Text = tab.phoneconfirmed.ToString();

            myaid.Text = tab.aid.ToString();
            myreferaid.Text = tab.referaid.ToString();
            myreferusername.Text = tab.referusername;


            emaillabel.Visible = false;
        }

        public bool sendEmail(string myto, string mysubject, string mybody, bool copytamord)
        {

            string pass = "Ta815730!";
            MailMessage message = new MailMessage();
            string from = "info@affsbook.com";
            //string to = "tamord@gmail.com";
            string to = myto;
            //string mysubject = "You have referred a sale!";


            try
            {
                var client = new SmtpClient("smtp.gmail.com", 587)
                {
                    Credentials = new NetworkCredential("affsbook@gmail.com", pass),
                    //Credentials = new NetworkCredential("asherhadad5@gmail.com", "Ta81573049"),                    
                    EnableSsl = true

                };

                client.Send(from, to, mysubject, mybody);

                if (copytamord)
                {

                    client.Send(from, "tamord@gmail.com", mysubject, mybody);
                }

                //emaillabel.Text = "New Advertiser E-Mail Suceeded!";
                //emaillabel.Visible = true;
            }
            catch (Exception ex)
            {
                return false;
                //emaillabel.Visible = true;
                //Label1.Text = "Send Email Failed.<br>" + ex.Message;
            }

            return true;

        }


        public void rejectedmail(string name, string email)
        {            

            string subject = "Affsbook: You have been rejected!";

            string body = "Dear " + name + " ,\n\n";

            body += "Thank you for signing up to Affsbook! \n\n";

            body += "Unfortunately, your application has been rejected! \n\n";

            body += "We wish you good luck in the future!";
            body += "\n\n";

            body += "Sincerely,\n";
            body += "The Affsbook Team";
            sendEmail(email, subject, body, true);

        }


        protected void reject_click(object sender, EventArgs e)
        {
            error.Visible = false;
            emaillabel.Visible = false;

            // reject affiliate

            string the_email = dropdownemail.SelectedItem.Text;
            string the_username = dropdownuser2.SelectedItem.Text;

            string the_name = afullname.Text;

            affsbook.AffiliatesDataContext db2 = new affsbook.AffiliatesDataContext();
            affsbook.Table_Affsbook_Affiliate tab = new affsbook.Table_Affsbook_Affiliate();
            

            tab = (from t in db2.Table_Affsbook_Affiliates
                   where ((t.username.Equals(the_username)))
                   select t).FirstOrDefault();


            if (tab == null)
            {
                error.Visible = true;
                error.Text = "Cannot Find Username To Reject";
                return;
            }

            db2.Table_Affsbook_Affiliates.DeleteOnSubmit(tab);            
            db2.SubmitChanges();

            emaillabel.Visible = true;
            emaillabel.Text = "Affiliate Rejected!";

            rejectedmail(the_name, the_email);
            reset_drop();
        }

        protected void contact_click(object sender, EventArgs e)
        {
            string the_prog = "Affsbook";
            string name = afullname.Text;
            string the_email = dropdownemail.SelectedItem.Text;
            string the_username = dropdownuser2.SelectedItem.Text;

            string subject = the_prog + ": Contact methods needed!";

            string body = "Dear " + name + " ,\n\n";

            body += "Thank you again for signing up to " + the_prog + "!\n\n";

            body += "It's very important that you add us on skype! our skype is: live:stevehadad6";
            body += "\n\n";

            body += "After adding us on skype we can help you get started!!";
            body += "\n\n";

            body += @"If you do not have skype already we really recommend that you download it: http://www.skype.com";
            body += "\n\n";


            body += "Sincerely,\n";
            body += "The " + the_prog + " Team";

            emaillabel.Visible = true;
            emaillabel.Text = "Affiliate Contact Request Sent!";


            sendEmail(the_email, subject, body, false);
        }

        protected void update_click(object sender, EventArgs e)
        {
            emaillabel.Visible = false;

            affsbook.AffiliatesDataContext db2 = new affsbook.AffiliatesDataContext();
            affsbook.Table_Affsbook_Affiliate tab = new affsbook.Table_Affsbook_Affiliate();


            //myusername = dropdownemail.SelectedItem.Text;

            Username.Text = dropdownuser2.SelectedItem.Text;

            error.Visible = false;

            tab = (from t in db2.Table_Affsbook_Affiliates
                   where (t.username.Equals(Username.Text))
                   select t).FirstOrDefault();


            if (tab == null)
            {
                error.Text = "Error Updating User";
                error.Visible = true;
                return;
            }

            //tab.email = myemail.Text;
            //tab.username = myusername;

            tab.kind = mytype.Text;
            tab.fullname = myfullname.Text;
            tab.displayname = mydisplayname.Text;
            tab.gender = mygender.Text;
            tab.company = mycompany.Text;
            tab.title = mytitle.Text;

            tab.address = myadd.Text;
            tab.city = mycity.Text;
            tab.state = mystate.Text;
            tab.zip = myzip.Text;
            tab.country = mycountry.Text;

            tab.phone = myphone.Text;
            tab.skype = myskype.Text;
            tab.whatsapp = mywhatsapp.Text;
            tab.twitter = mytwitter.Text;
            tab.facebook = myfacebook.Text;
            tab.linkedin = mylinkedin.Text;

            tab.active = Convert.ToInt32(myactive.Text);
            tab.suspended = Convert.ToInt32(mysuspended.Text);

            tab.profileimage = myprofileimage.Text;
            tab.profilelink = myprofilelink.Text;
            tab.youtubeprofile = myyoutubeprofile.Text;
            tab.websites = mywebsites.Text;
            tab.blog = myblogs.Text;
            tab.paymentmethod = mypaymentmethod.Text;

            if (!(myaffreferred.Text.Equals("")))
            {
                tab.affiliatesreferred = Convert.ToInt32(myaffreferred.Text);
            }
            tab.education = myeducation.Text;
            tab.languages = mylanguages.Text;
            tab.hobbies = myhobbies.Text;
            tab.biography = mybiography.Text;


            tab.niche1 = mymainniche.Text;
            tab.niche2 = myniche2.Text;
            tab.niche3 = myniche3.Text;
            tab.subniche1 = mysubniche.Text;
            tab.moreniches = myadditional.Text;
            

            //tab.aid = Convert.ToInt32(myaid.Text);

            tab.referaid = Convert.ToInt32(myreferaid.Text);

            tab.contactconfirmed = Convert.ToInt32(mycontactconfirm.Text);
            tab.profileconfirmed = Convert.ToInt32(myprofileconfirmed.Text);
            tab.emailconfirmed= Convert.ToInt32(myemailconfirmed.Text);
            tab.identityconfirmed = Convert.ToInt32(myidentityconfirmed.Text);
            tab.phoneconfirmed = Convert.ToInt32(myphoneconfirmed.Text);
            tab.aid = Convert.ToInt32(myaid.Text);
            tab.referaid = Convert.ToInt32(myreferaid.Text);
            tab.referusername = myreferusername.Text;



            db2.SubmitChanges();
            emaillabel.Text = "Affiliate: " + tab.username + " Has Updated!";
            emaillabel.Visible = true;
            reset_drop();
        }

        public void profile_completed(string name, string email)
        {
            var names = name.Split(' ');
            string firstName = names[0];


            string subject = "Affsbook: Thanks for filling your profile!";

            string body = "Dear " + firstName + ",\n\n";

            body += "Thank you for filling your profile on Affsbook: The affiliates community! \n\n";

            body += "Now everybody can see your information when clicking on your profile image! \n\n";

            body += "Just make sure you add some content: forum threads, blogs, reviews and offers. \n\n";

            body += "And then people could see your profile and send you connection requests!\n\n";

            body += "The more people connected to you the more opportunies you will have! \n\n";

            body += "You can now login and add content from here: \n\n";

            body += @"https://www.affsbook.com/zone";
            body += "\n\n";

            body += "Sincerely,\n";
            body += "The Affsbook Team";

            sendEmail(email, subject, body, false);
        }

        public void profile_image_needed(string name, string email)
        {


            var names = name.Split(' ');
            string firstName = names[0];


            string subject = "Affsbook: Please add your profile image!";

            string body = "Dear " + firstName + ",\n\n";

            body += "Thank you for joining Affsbook: The affiliates community! \n\n";

            body += "You need to add a profile image in order to activate your account. \n\n";

            body += "Also, you need to add a short sentence about yourself. \n\n";

            body += "You can now login and upload your profile image from here:";

            body += "\n\n";

            body += @"https://www.affsbook.com/zone/?profile=1";
            body += "\n\n";


            body += "Sincerely,\n";
            body += "The Affsbook Team";

            sendEmail(email, subject, body, false);
        }

        
        protected void active_click(object sender, EventArgs e)
        {

        }

        protected void in_active_click(object sender, EventArgs e)
        {

        }

        protected void profile_click(object sender, EventArgs e)
        {

        }

        protected void profile_image_click(object sender, EventArgs e)
        {
            profile_image_needed(dropdownfname.SelectedItem.Text, dropdownemail.SelectedItem.Text);
        }

        protected void profile_complete_click(object sender, EventArgs e)
        {
            

            affsbook.AffiliatesDataContext db2 = new affsbook.AffiliatesDataContext();
            affsbook.Table_Affsbook_Affiliate tab = new affsbook.Table_Affsbook_Affiliate();


            //myusername = dropdownemail.SelectedItem.Text;

            myusername.Text = dropdownuser2.SelectedItem.Text;

            error.Visible = false;

            tab = (from t in db2.Table_Affsbook_Affiliates
                   where (t.username.Equals(myusername))
                   select t).FirstOrDefault();


            if (tab == null)
            {
                error.Text = "Error Confirming User Profile";
                error.Visible = true;
                return;
            }

            //tab.email = myemail.Text;
            //tab.username = myusername;

            tab.profileconfirmed = 1;

            db2.SubmitChanges();
            profile_completed(dropdownfname.SelectedItem.Text, dropdownemail.SelectedItem.Text);
            emaillabel.Text = "Affiliate: " + tab.username + " Has Completed Profile!";
            emaillabel.Visible = true;
            reset_drop();

        }
    }
}