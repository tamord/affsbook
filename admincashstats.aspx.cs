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
    public partial class admincashstats : System.Web.UI.Page
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

            

        }


        protected void Login_Click(object sender, EventArgs e)
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

            int month = DateTime.Now.Month;

            DropDownList3.SelectedValue = month.ToString();


            if (Request.QueryString["username"] != null)
            {

                string value = Request.QueryString["username"].ToString();

                if (value != null)
                {
                    //init_contacts();  

                    dropdownuser2.SelectedValue = value;
                    load_click2(this, e);
                    MultiView1.ActiveViewIndex = 1;
                    return;
                }
            }

            MultiView1.ActiveViewIndex = 1;
        }

        protected void reset()
        {
            affref.Text = "0";
            pubref.Text = "0";
            revenues.Text = "0";
            earnings.Text = "0";
            balance.Text = "0";
            lastpayout.Text = "0";
            
        }

        public int get_aid(string username)
        {
            affsbook.AffiliatesDataContext db = new affsbook.AffiliatesDataContext();
            var the_aid = (from t in db.Table_Affsbook_Affiliates
                            where (t.username.Equals(username))
                            select t.aid).FirstOrDefault();
            return (int)the_aid;
        }

        protected void load_click2(object sender, EventArgs e)
        {
            Label1.Visible = false;

            string the_email = dropdownemail.SelectedItem.Text;
            string the_user = dropdownuser2.SelectedItem.Text;
            string the_fname = dropdownfname.SelectedItem.Text;

            affsbook.AffiliatesDataContext db2 = new affsbook.AffiliatesDataContext();
            affsbook.Table_Affsbook_Affiliate tab = null;
            affsbook.cashDataContext db12 = new affsbook.cashDataContext();


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

            dropdownuser2.SelectedValue = tab.username;
            dropdownemail.SelectedValue = tab.email;
            dropdownfname.SelectedValue = tab.fullname;

            emaillabel.Visible = false;

            affId.Text = tab.aid.ToString();            


            the_user = dropdownuser2.SelectedItem.Text;

            int month = Convert.ToInt16(DropDownList3.SelectedValue);
            int year = Convert.ToInt16(DropDownList4.SelectedValue);


            

            var tab2 = (from t in db12.Table_Affsbook_AffStats
                    where ((t.username.Equals(dropdownuser2.SelectedItem.Text)) && (t.month == month) && (t.year == year))
                    select t).FirstOrDefault();

            if (tab2 == null)
            {
                reset();
                //value_changed = true;
                return;
            }

            affref.Text = tab2.affreferred.ToString();
            pubref.Text = tab2.pubreferred.ToString();
            revenues.Text = tab2.revenues.ToString();
            earnings.Text = tab2.earnings.ToString();         
            


            var tab16 = (from t in db2.Table_Affsbook_Affiliates
                     where (t.username.Equals(dropdownuser2.SelectedItem.Text))
                     select t).FirstOrDefault();

            if (tab16 == null)
            {
                Label1.Visible = true;
                return;
            }

            lastpayout.Text = tab16.lastpayout.ToString();
            balance.Text = tab16.balance.ToString();

                

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


        public void new_pub()
        {

            string name = dropdownfname.SelectedItem.Text;
            string username = dropdownuser2.SelectedItem.Text;
            string email = dropdownemail.SelectedItem.Text;

            //string payout = "$5";


            MailMessage message = new MailMessage();

            string from = "info@affsbook.com";
            //string to = "tamord@gmail.com";
            string to = email;

            var names = name.Split(' ');
            string firstName = names[0];


            string subject = "Affsbook Cash: You have referred a publisher!";
            string body = "Dear " + firstName + " ,\n\n";


            body += "Congratulations! you have just referred a publisher!\n\n";

            body += "You have earned: $1.5 from this free action! \n\n";

            body += "In case your referred publishers will refer more publishers - you will earn 15% from their earnings!\n\n";
            body += "You can check your stats from affsbook cash affiliate lounge: \n\n";
            body += @"https://www.affsbook.com/cash";
            body += "\n\n";

            body += "Sincerely,\n";
            body += "The Affsbook Cash Team";

            sendEmail(to, subject, body, true);



        }


        public void new_aff()
        {

            string name = dropdownfname.SelectedItem.Text;
            string username = dropdownuser2.SelectedItem.Text;
            string email = dropdownemail.SelectedItem.Text;

            //string payout = "$5";


            MailMessage message = new MailMessage();

            string from = "info@affsbook.com";
            //string to = "tamord@gmail.com";
            string to = email;

            var names = name.Split(' ');
            string firstName = names[0];


            string subject = "Affsbook Cash: You have referred an affiliate!";
            string body = "Dear " + firstName + " ,\n\n";


            body += "Congratulations! you have just referred an affiliate!\n\n";

            body += "You have earned: $1 from this free action! \n\n";

            body += "In case your referred affiliates will refer more affiliates - you will earn 15% from their earnings!\n\n";
            body += "You can check your stats from affsbook cash affiliate lounge: \n\n";
            body += @"https://www.affsbook.com/cash";
            body += "\n\n";

            body += "Sincerely,\n";
            body += "The Affsbook Cash Team";

            sendEmail(to, subject, body, true);

      

        }

        protected void aff_plus(object sender, EventArgs e)
        {
            //reset_drop();

            int month = DateTime.Now.Month;

            DropDownList3.SelectedValue = month.ToString();

            load_click2(sender, e);

            if (Label1.Visible==true)
            {
                return;
            }


            int current_aff =  Convert.ToInt16(affref.Text);

            current_aff += 1;

            affref.Text = current_aff.ToString();

            double current_ear = Convert.ToDouble(earnings.Text);

            current_ear += 1;

            earnings.Text = current_ear.ToString();

            double current_bal = Convert.ToDouble(balance.Text);

            current_bal += 1;

            balance.Text = current_bal.ToString();

            update(sender, e);

            new_aff();
        }

        protected void pub_plus(object sender, EventArgs e)
        {
            //reset_drop();

            int month = DateTime.Now.Month;

            DropDownList3.SelectedValue = month.ToString();

            load_click2(sender, e);

            if (Label1.Visible == true)
            {
                return;
            }


            int current_pub = Convert.ToInt16(pubref.Text);

            current_pub += 1;

            pubref.Text = current_pub.ToString();

            double current_ear = Convert.ToDouble(earnings.Text);

            current_ear += 1.5;

            earnings.Text = current_ear.ToString();

            double current_bal = Convert.ToDouble(balance.Text);

            current_bal += 1.5;

            balance.Text = current_bal.ToString();

            update(sender, e);

            new_pub();
        }

        protected void update(object sender, EventArgs e)
        {
            Label1.Visible = false;
            emaillabel.Visible = false;


            affsbook.AffiliatesDataContext db2 = new affsbook.AffiliatesDataContext();
            affsbook.Table_Affsbook_Affiliate tab = new affsbook.Table_Affsbook_Affiliate();
            affsbook.cashDataContext db12 = new affsbook.cashDataContext();


            //adsrush.DataClasses1DataContext db13 = new adsrush.DataClasses1DataContext();
            //adsrush.DataClasses1DataContext db14 = new adsrush.DataClasses1DataContext();

            affsbook.Table_Affsbook_AffStat tab13 = new affsbook.Table_Affsbook_AffStat();
            

            //Table_TheStat tab13 = new Table_TheStat();

            string username = dropdownuser2.SelectedItem.Text;

            if (dropdownuser2.SelectedItem.Text.Equals(""))
                return;

            string the_user = dropdownuser2.SelectedItem.Text;

            int month = Convert.ToInt16(DropDownList3.SelectedValue);
            int year = Convert.ToInt16(DropDownList4.SelectedValue);

            //earning.Text = calc_earn().ToString();

            tab13 = (from t in db12.Table_Affsbook_AffStats
                     where ((t.username.Equals(username)) && (t.month == month) && (t.year == year))
                     select t).FirstOrDefault();

            if (tab13 == null)
            {
                tab13 = new affsbook.Table_Affsbook_AffStat();                    

                //tab13 = new adsrush.Table_TheStat();
                int max2 = 0;

                try
                {
                    max2 = (from t in db12.Table_Affsbook_AffStats
                            select t.id).Max();
                }
                catch (Exception ex) { }

                //int max2 = -1;
                tab13.id = max2 + 1;
                tab13.affreferred = Convert.ToInt16(affref.Text);
                tab13.pubreferred = Convert.ToInt16(pubref.Text);
                tab13.revenues = (float)Convert.ToDouble(revenues.Text);
                tab13.earnings = (float)Convert.ToDouble(earnings.Text);              
                tab13.date = DateTime.Now;
                tab13.username = the_user;                
                tab13.month = month;
                tab13.year = year;
                tab13.aid = get_aid(the_user);

                db12.Table_Affsbook_AffStats.InsertOnSubmit(tab13);
                
                //db13.Table_TheStats.InsertOnSubmit(tab13);

            }

            else if (tab13 != null)
            {

                tab13.affreferred = Convert.ToInt16(affref.Text);
                tab13.pubreferred = Convert.ToInt16(pubref.Text);
                tab13.revenues = (float)Convert.ToDouble(revenues.Text);
                tab13.earnings = (float)Convert.ToDouble(earnings.Text);                
                

            }

            db12.SubmitChanges();


            //float last = (float)Convert.ToDouble(lastpayout.Text);          

            

            //Table_LastPayout tab15 = new Table_LastPayout();

            var tab15 = (from t in db2.Table_Affsbook_Affiliates
                     where (t.username.Equals(username))
                     select t).FirstOrDefault();

            if (tab15 == null)
            {
                Label1.Visible = true;
                return;
            }

            if (tab15 != null)
            {
                float last_payout = (float)Convert.ToDouble(lastpayout.Text);
                float bal= (float)Convert.ToDouble(balance.Text);
                tab15.balance = bal;
                tab15.lastpayout = last_payout;
                db2.SubmitChanges();
            }
            

        }
    }
}