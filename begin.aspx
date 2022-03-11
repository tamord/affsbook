<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="begin.aspx.cs" Inherits="affsbook.begin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

                <style type="text/css">

                        .myButton 
    {

    text-align: left;
                
	-moz-box-shadow: 0px 0px 0px 2px #9fb4f2;
	-webkit-box-shadow: 0px 0px 0px 2px #9fb4f2;
	box-shadow: 0px 0px 0px 2px #9fb4f2;
	display: inline-block;
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#7892c2', endColorstr='#476e9e',GradientType=0);
	background-color:#7892c2;
	-moz-border-radius:10px;
	-webkit-border-radius:10px;
	border-radius:10px;
	border:1px solid #4e6096;
	display:inline-block;
	cursor:pointer;
	color:#ffffff;
	font-family:Arial;
	font-size:medium;		
	text-align: center;
	text-decoration:none;
	text-shadow:0px 1px 0px #283966;
     font-weight: 700;
            
        }
        
        
        .myButton:hover {
	background:-webkit-gradient(linear, left top, left bottom, color-stop(0.05, #476e9e), color-stop(1, #7892c2));
	background:-moz-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:-webkit-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:-o-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:-ms-linear-gradient(top, #476e9e 5%, #7892c2 100%);
	background:linear-gradient(to bottom, #476e9e 5%, #7892c2 100%);
	filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#476e9e', endColorstr='#7892c2',GradientType=0);
	background-color:#476e9e;
}
.myButton:active {
	position:relative;
	top:1px;
}


                    .auto-style2 {
                        width: 1300px;                                            
                background:lightgray;
            border:1px solid black;
            text-align:center;            
            margin:0 auto;
                    }


                    .auto-style3 {
                        width: 1300px;
                        background:lightgray;
                        border:1px solid black;           
                        text-align:center;            
                        margin:0 auto;

                    }


                    .auto-style4 {
                        width: 1300px;
                        text-align:center;          
                        margin:0 auto;
                    }


                    </style>


                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <table align="center" class="auto-style3">
                    <tr>
                        <td>
                            <br />
                            <asp:MultiView ID="MultiView2" runat="server" ActiveViewIndex="1">
                                <asp:View ID="View6" runat="server">
                                </asp:View>
                                <asp:View ID="View5" runat="server">
                                    <table align="center" class="auto-style7">
                                        <tr>
                                            <td colspan="2">
                                                <br />
                                                <br />
                                                <span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="auto-style8"><span class="style17">
                                                <asp:Image ID="Image43" runat="server" Height="296px" ImageUrl="~/images/logo.JPG" Width="972px" />
                                                </span></span></span>
                                                <br />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style8">
                                                <br />
                                                <asp:Label ID="Label157" runat="server" CssClass="auto-style9" Font-Bold="True" Font-Names="Arial" Font-Size="XX-Large" style="color: #336699" Text="Already Signed Up?"></asp:Label>
                                                <br />
                                                &nbsp;<br />
                                                <br />
                                                <table align="center" class="auto-style36">
                                                    <tr>
                                                        <td class="auto-style37"><span>
                                                            <asp:ImageButton ID="ImageButton4" runat="server" Height="64px" ImageUrl="~/images/reglogin2.png" OnClick="login" />
                                                            </span></td>
                                                        <td class="auto-style21"><span>&nbsp;&nbsp;
                                                            <asp:ImageButton ID="ImageButton5" runat="server" Height="64px" ImageUrl="~/images/fbconnect3.png" OnClick="fblogin_click" />
                                                            </span></td>
                                                    </tr>
                                                </table>
                                                <br />
                                                <span>
                                                <br />
                                                <asp:Label ID="error3" runat="server" CssClass="auto-style19" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" style="color: #993333" Text="Error! Please Try Again Later!" Visible="False"></asp:Label>
                                                <br />
                                                </span></td>
                                            <td class="auto-style21">
                                                <asp:Image ID="Image44" runat="server" ImageUrl="~/images/login-gray2.JPG" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                                <asp:View ID="View4" runat="server">
                                    <br />
                                    <table align="center" class="auto-style10">
                                        <tr>
                                            <td>
                                                <br />
                                                <br />
                                                <asp:Image ID="Image27" runat="server" ImageUrl="~/images/signuplogo2.png" />
                                                <br />
                                                <asp:Label ID="Label183" runat="server" CssClass="auto-style20" Font-Bold="False" Font-Names="Arial" Font-Size="X-Large" Text="* Required Field"></asp:Label>
                                                <br />
                                                <br />
                                                <br />
                                                <table class="auto-style11">
                                                    <tr>
                                                        <td class="auto-style24">
                                                            <img src="https://www.ads-rush.com/email2.jpg" width="30" />
                                                            &nbsp;&nbsp;&nbsp;<asp:Label ID="Label59" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" style="color: #336699" Text="E-Mail:"></asp:Label>
                                                        </td>
                                                        <td class="auto-style28">
                                                            <asp:TextBox ID="myemail" runat="server" CssClass="auto-style15" Height="30px" Width="280px"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style25">
                                                            <asp:Label ID="Label158" runat="server" CssClass="auto-style12" Font-Bold="True" Font-Names="Arial" Font-Size="XX-Large" Text="*"></asp:Label>
                                                        </td>
                                                        <td class="auto-style31">
                                                            <asp:Label ID="emailval" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" style="color: #993333" Text="E-Mail Needed!" Visible="False"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style26">
                                                            <br />
                                                            <img src="https://www.ads-rush.com/password2.jpg" width="30" />
                                                            &nbsp;&nbsp;
                                                            <asp:Label ID="Label161" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" style="color: #336699" Text="Password:"></asp:Label>
                                                        </td>
                                                        <td class="auto-style32">
                                                            <br />
                                                            <asp:TextBox ID="mypass1" runat="server" CssClass="auto-style15" Height="30px" TextMode="Password" Width="280px"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style34">
                                                            <asp:Label ID="Label185" runat="server" CssClass="auto-style12" Font-Bold="True" Font-Names="Arial" Font-Size="XX-Large" Text="*"></asp:Label>
                                                        </td>
                                                        <td class="auto-style21">
                                                            <asp:Label ID="pass1val" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" style="color: #993333" Text="Password Needed!" Visible="False"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style26">
                                                            <br />
                                                            &nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="Label165" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" style="color: #336699" Text="Full Name:"></asp:Label>
                                                        </td>
                                                        <td class="auto-style32">
                                                            <br />
                                                            <asp:TextBox ID="myfullname" runat="server" CssClass="auto-style15" Height="30px" Width="280px"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style34">
                                                            <asp:Label ID="Label187" runat="server" CssClass="auto-style12" Font-Bold="True" Font-Names="Arial" Font-Size="XX-Large" Text="*"></asp:Label>
                                                        </td>
                                                        <td class="auto-style21">
                                                            <asp:Label ID="fullnameval" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" style="color: #993333" Text="Full Name Needed!" Visible="False"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style26">
                                                            <br />
                                                            <asp:Image ID="Image3" runat="server" ImageUrl="~/images/countrylightgray.jpg" Width="30px" />
                                                            &nbsp;&nbsp;&nbsp;
                                                            <asp:Label ID="Label171" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" style="color: #336699" Text="Country:"></asp:Label>
                                                        </td>
                                                        <td class="auto-style32">
                                                            <br />
                                                            &nbsp;<asp:DropDownList ID="DropDownCountry" runat="server" CssClass="auto-style14" Height="30px" style="border: 1px solid black;" Width="285px">
                                                                <asp:ListItem Value="0">Select Country</asp:ListItem>
                                                                <asp:ListItem Value="AL">Albania</asp:ListItem>
                                                                <asp:ListItem Value="DZ">Algeria</asp:ListItem>
                                                                <asp:ListItem Value="AS">American Samoa</asp:ListItem>
                                                                <asp:ListItem Value="AD">Andorra</asp:ListItem>
                                                                <asp:ListItem Value="AO">Angola</asp:ListItem>
                                                                <asp:ListItem Value="AI">Anguilla</asp:ListItem>
                                                                <asp:ListItem Value="AQ">Antarctica</asp:ListItem>
                                                                <asp:ListItem Value="AG">Antigua And Barbuda</asp:ListItem>
                                                                <asp:ListItem Value="AR">Argentina</asp:ListItem>
                                                                <asp:ListItem Value="AM">Armenia</asp:ListItem>
                                                                <asp:ListItem Value="AW">Aruba</asp:ListItem>
                                                                <asp:ListItem Value="AU">Australia</asp:ListItem>
                                                                <asp:ListItem Value="AT">Austria</asp:ListItem>
                                                                <asp:ListItem Value="AZ">Azerbaijan</asp:ListItem>
                                                                <asp:ListItem Value="BS">Bahamas</asp:ListItem>
                                                                <asp:ListItem Value="BH">Bahrain</asp:ListItem>
                                                                <asp:ListItem Value="BD">Bangladesh</asp:ListItem>
                                                                <asp:ListItem Value="BB">Barbados</asp:ListItem>
                                                                <asp:ListItem Value="BY">Belarus</asp:ListItem>
                                                                <asp:ListItem Value="BE">Belgium</asp:ListItem>
                                                                <asp:ListItem Value="BZ">Belize</asp:ListItem>
                                                                <asp:ListItem Value="BJ">Benin</asp:ListItem>
                                                                <asp:ListItem Value="BM">Bermuda</asp:ListItem>
                                                                <asp:ListItem Value="BT">Bhutan</asp:ListItem>
                                                                <asp:ListItem Value="BO">Bolivia</asp:ListItem>
                                                                <asp:ListItem Value="BA">Bosnia And Herzegowina</asp:ListItem>
                                                                <asp:ListItem Value="BW">Botswana</asp:ListItem>
                                                                <asp:ListItem Value="BV">Bouvet Island</asp:ListItem>
                                                                <asp:ListItem Value="BR">Brazil</asp:ListItem>
                                                                <asp:ListItem Value="IO">British Indian Ocean Territory</asp:ListItem>
                                                                <asp:ListItem Value="BN">Brunei Darussalam</asp:ListItem>
                                                                <asp:ListItem Value="BG">Bulgaria</asp:ListItem>
                                                                <asp:ListItem Value="BF">Burkina Faso</asp:ListItem>
                                                                <asp:ListItem Value="BI">Burundi</asp:ListItem>
                                                                <asp:ListItem Value="KH">Cambodia</asp:ListItem>
                                                                <asp:ListItem Value="CM">Cameroon</asp:ListItem>
                                                                <asp:ListItem Value="CA">Canada</asp:ListItem>
                                                                <asp:ListItem Value="CV">Cape Verde</asp:ListItem>
                                                                <asp:ListItem Value="KY">Cayman Islands</asp:ListItem>
                                                                <asp:ListItem Value="CF">Central African Republic</asp:ListItem>
                                                                <asp:ListItem Value="TD">Chad</asp:ListItem>
                                                                <asp:ListItem Value="CL">Chile</asp:ListItem>
                                                                <asp:ListItem Value="CN">China</asp:ListItem>
                                                                <asp:ListItem Value="CX">Christmas Island</asp:ListItem>
                                                                <asp:ListItem Value="CC">Cocos (Keeling) Islands</asp:ListItem>
                                                                <asp:ListItem Value="CO">Colombia</asp:ListItem>
                                                                <asp:ListItem Value="KM">Comoros</asp:ListItem>
                                                                <asp:ListItem Value="CG">Congo</asp:ListItem>
                                                                <asp:ListItem Value="CK">Cook Islands</asp:ListItem>
                                                                <asp:ListItem Value="CR">Costa Rica</asp:ListItem>
                                                                <asp:ListItem Value="CI">Cote D&#39;Ivoire</asp:ListItem>
                                                                <asp:ListItem Value="HR">Croatia (Local Name: Hrvatska)</asp:ListItem>
                                                                <asp:ListItem Value="CU">Cuba</asp:ListItem>
                                                                <asp:ListItem Value="CY">Cyprus</asp:ListItem>
                                                                <asp:ListItem Value="CZ">Czech Republic</asp:ListItem>
                                                                <asp:ListItem Value="DK">Denmark</asp:ListItem>
                                                                <asp:ListItem Value="DJ">Djibouti</asp:ListItem>
                                                                <asp:ListItem Value="DM">Dominica</asp:ListItem>
                                                                <asp:ListItem Value="DO">Dominican Republic</asp:ListItem>
                                                                <asp:ListItem Value="TP">East Timor</asp:ListItem>
                                                                <asp:ListItem Value="EC">Ecuador</asp:ListItem>
                                                                <asp:ListItem Value="EG">Egypt</asp:ListItem>
                                                                <asp:ListItem Value="SV">El Salvador</asp:ListItem>
                                                                <asp:ListItem Value="GQ">Equatorial Guinea</asp:ListItem>
                                                                <asp:ListItem Value="ER">Eritrea</asp:ListItem>
                                                                <asp:ListItem Value="EE">Estonia</asp:ListItem>
                                                                <asp:ListItem Value="ET">Ethiopia</asp:ListItem>
                                                                <asp:ListItem Value="FK">Falkland Islands (Malvinas)</asp:ListItem>
                                                                <asp:ListItem Value="FO">Faroe Islands</asp:ListItem>
                                                                <asp:ListItem Value="FJ">Fiji</asp:ListItem>
                                                                <asp:ListItem Value="FI">Finland</asp:ListItem>
                                                                <asp:ListItem Value="FR">France</asp:ListItem>
                                                                <asp:ListItem Value="GF">French Guiana</asp:ListItem>
                                                                <asp:ListItem Value="PF">French Polynesia</asp:ListItem>
                                                                <asp:ListItem Value="TF">French Southern Territories</asp:ListItem>
                                                                <asp:ListItem Value="GA">Gabon</asp:ListItem>
                                                                <asp:ListItem Value="GM">Gambia</asp:ListItem>
                                                                <asp:ListItem Value="GE">Georgia</asp:ListItem>
                                                                <asp:ListItem Value="DE">Germany</asp:ListItem>
                                                                <asp:ListItem Value="GH">Ghana</asp:ListItem>
                                                                <asp:ListItem Value="GI">Gibraltar</asp:ListItem>
                                                                <asp:ListItem Value="GR">Greece</asp:ListItem>
                                                                <asp:ListItem Value="GL">Greenland</asp:ListItem>
                                                                <asp:ListItem Value="GD">Grenada</asp:ListItem>
                                                                <asp:ListItem Value="GP">Guadeloupe</asp:ListItem>
                                                                <asp:ListItem Value="GU">Guam</asp:ListItem>
                                                                <asp:ListItem Value="GT">Guatemala</asp:ListItem>
                                                                <asp:ListItem Value="GN">Guinea</asp:ListItem>
                                                                <asp:ListItem Value="GW">Guinea-Bissau</asp:ListItem>
                                                                <asp:ListItem Value="GY">Guyana</asp:ListItem>
                                                                <asp:ListItem Value="HT">Haiti</asp:ListItem>
                                                                <asp:ListItem Value="HM">Heard And Mc Donald Islands</asp:ListItem>
                                                                <asp:ListItem Value="VA">Holy See (Vatican City State)</asp:ListItem>
                                                                <asp:ListItem Value="HN">Honduras</asp:ListItem>
                                                                <asp:ListItem Value="HK">Hong Kong</asp:ListItem>
                                                                <asp:ListItem Value="HU">Hungary</asp:ListItem>
                                                                <asp:ListItem Value="IS">Icel And</asp:ListItem>
                                                                <asp:ListItem Value="IN">India</asp:ListItem>
                                                                <asp:ListItem Value="ID">Indonesia</asp:ListItem>
                                                                <asp:ListItem Value="IR">Iran (Islamic Republic Of)</asp:ListItem>
                                                                <asp:ListItem Value="IQ">Iraq</asp:ListItem>
                                                                <asp:ListItem Value="IE">Ireland</asp:ListItem>
                                                                <asp:ListItem Value="IL">Israel</asp:ListItem>
                                                                <asp:ListItem Value="IT">Italy</asp:ListItem>
                                                                <asp:ListItem Value="JM">Jamaica</asp:ListItem>
                                                                <asp:ListItem Value="JP">Japan</asp:ListItem>
                                                                <asp:ListItem Value="JO">Jordan</asp:ListItem>
                                                                <asp:ListItem Value="KZ">Kazakhstan</asp:ListItem>
                                                                <asp:ListItem Value="KE">Kenya</asp:ListItem>
                                                                <asp:ListItem Value="KI">Kiribati</asp:ListItem>
                                                                <asp:ListItem Value="KP">Korea, Dem People&#39;S Republic</asp:ListItem>
                                                                <asp:ListItem Value="KR">Korea, Republic Of</asp:ListItem>
                                                                <asp:ListItem Value="KW">Kuwait</asp:ListItem>
                                                                <asp:ListItem Value="KG">Kyrgyzstan</asp:ListItem>
                                                                <asp:ListItem Value="LA">Lao People&#39;S Dem Republic</asp:ListItem>
                                                                <asp:ListItem Value="LV">Latvia</asp:ListItem>
                                                                <asp:ListItem Value="LB">Lebanon</asp:ListItem>
                                                                <asp:ListItem Value="LS">Lesotho</asp:ListItem>
                                                                <asp:ListItem Value="LR">Liberia</asp:ListItem>
                                                                <asp:ListItem Value="LY">Libyan Arab Jamahiriya</asp:ListItem>
                                                                <asp:ListItem Value="LI">Liechtenstein</asp:ListItem>
                                                                <asp:ListItem Value="LT">Lithuania</asp:ListItem>
                                                                <asp:ListItem Value="LU">Luxembourg</asp:ListItem>
                                                                <asp:ListItem Value="MO">Macau</asp:ListItem>
                                                                <asp:ListItem Value="MK">Macedonia</asp:ListItem>
                                                                <asp:ListItem Value="MG">Madagascar</asp:ListItem>
                                                                <asp:ListItem Value="MW">Malawi</asp:ListItem>
                                                                <asp:ListItem Value="MY">Malaysia</asp:ListItem>
                                                                <asp:ListItem Value="MV">Maldives</asp:ListItem>
                                                                <asp:ListItem Value="ML">Mali</asp:ListItem>
                                                                <asp:ListItem Value="MT">Malta</asp:ListItem>
                                                                <asp:ListItem Value="MH">Marshall Islands</asp:ListItem>
                                                                <asp:ListItem Value="MQ">Martinique</asp:ListItem>
                                                                <asp:ListItem Value="MR">Mauritania</asp:ListItem>
                                                                <asp:ListItem Value="MU">Mauritius</asp:ListItem>
                                                                <asp:ListItem Value="YT">Mayotte</asp:ListItem>
                                                                <asp:ListItem Value="MX">Mexico</asp:ListItem>
                                                                <asp:ListItem Value="FM">Micronesia, Federated States</asp:ListItem>
                                                                <asp:ListItem Value="MD">Moldova, Republic Of</asp:ListItem>
                                                                <asp:ListItem Value="MC">Monaco</asp:ListItem>
                                                                <asp:ListItem Value="MN">Mongolia</asp:ListItem>
                                                                <asp:ListItem Value="MS">Montserrat</asp:ListItem>
                                                                <asp:ListItem Value="MA">Morocco</asp:ListItem>
                                                                <asp:ListItem Value="MZ">Mozambique</asp:ListItem>
                                                                <asp:ListItem Value="MM">Myanmar</asp:ListItem>
                                                                <asp:ListItem Value="NA">Namibia</asp:ListItem>
                                                                <asp:ListItem Value="NR">Nauru</asp:ListItem>
                                                                <asp:ListItem Value="NP">Nepal</asp:ListItem>
                                                                <asp:ListItem Value="NL">Netherlands</asp:ListItem>
                                                                <asp:ListItem Value="AN">Netherlands Ant Illes</asp:ListItem>
                                                                <asp:ListItem Value="NC">New Caledonia</asp:ListItem>
                                                                <asp:ListItem Value="NZ">New Zealand</asp:ListItem>
                                                                <asp:ListItem Value="NI">Nicaragua</asp:ListItem>
                                                                <asp:ListItem Value="NE">Niger</asp:ListItem>
                                                                <asp:ListItem Value="NG">Nigeria</asp:ListItem>
                                                                <asp:ListItem Value="NU">Niue</asp:ListItem>
                                                                <asp:ListItem Value="NF">Norfolk Island</asp:ListItem>
                                                                <asp:ListItem Value="MP">Northern Mariana Islands</asp:ListItem>
                                                                <asp:ListItem Value="NO">Norway</asp:ListItem>
                                                                <asp:ListItem Value="OM">Oman</asp:ListItem>
                                                                <asp:ListItem Value="PK">Pakistan</asp:ListItem>
                                                                <asp:ListItem Value="PW">Palau</asp:ListItem>
                                                                <asp:ListItem Value="PA">Panama</asp:ListItem>
                                                                <asp:ListItem Value="PG">Papua New Guinea</asp:ListItem>
                                                                <asp:ListItem Value="PY">Paraguay</asp:ListItem>
                                                                <asp:ListItem Value="PE">Peru</asp:ListItem>
                                                                <asp:ListItem Value="PH">Philippines</asp:ListItem>
                                                                <asp:ListItem Value="PN">Pitcairn</asp:ListItem>
                                                                <asp:ListItem Value="PL">Poland</asp:ListItem>
                                                                <asp:ListItem Value="PT">Portugal</asp:ListItem>
                                                                <asp:ListItem Value="PR">Puerto Rico</asp:ListItem>
                                                                <asp:ListItem Value="QA">Qatar</asp:ListItem>
                                                                <asp:ListItem Value="RE">Reunion</asp:ListItem>
                                                                <asp:ListItem Value="RO">Romania</asp:ListItem>
                                                                <asp:ListItem Value="RU">Russian Federation</asp:ListItem>
                                                                <asp:ListItem Value="RW">Rwanda</asp:ListItem>
                                                                <asp:ListItem Value="KN">Saint K Itts And Nevis</asp:ListItem>
                                                                <asp:ListItem Value="LC">Saint Lucia</asp:ListItem>
                                                                <asp:ListItem Value="VC">Saint Vincent, The Grenadines</asp:ListItem>
                                                                <asp:ListItem Value="WS">Samoa</asp:ListItem>
                                                                <asp:ListItem Value="SM">San Marino</asp:ListItem>
                                                                <asp:ListItem Value="ST">Sao Tome And Principe</asp:ListItem>
                                                                <asp:ListItem Value="SA">Saudi Arabia</asp:ListItem>
                                                                <asp:ListItem Value="SN">Senegal</asp:ListItem>
                                                                <asp:ListItem Value="SC">Seychelles</asp:ListItem>
                                                                <asp:ListItem Value="SL">Sierra Leone</asp:ListItem>
                                                                <asp:ListItem Value="SG">Singapore</asp:ListItem>
                                                                <asp:ListItem Value="SK">Slovakia (Slovak Republic)</asp:ListItem>
                                                                <asp:ListItem Value="SI">Slovenia</asp:ListItem>
                                                                <asp:ListItem Value="SB">Solomon Islands</asp:ListItem>
                                                                <asp:ListItem Value="SO">Somalia</asp:ListItem>
                                                                <asp:ListItem Value="ZA">South Africa</asp:ListItem>
                                                                <asp:ListItem Value="GS">South Georgia , S Sandwich Is.</asp:ListItem>
                                                                <asp:ListItem Value="ES">Spain</asp:ListItem>
                                                                <asp:ListItem Value="LK">Sri Lanka</asp:ListItem>
                                                                <asp:ListItem Value="SH">St. Helena</asp:ListItem>
                                                                <asp:ListItem Value="PM">St. Pierre And Miquelon</asp:ListItem>
                                                                <asp:ListItem Value="SD">Sudan</asp:ListItem>
                                                                <asp:ListItem Value="SR">Suriname</asp:ListItem>
                                                                <asp:ListItem Value="SJ">Svalbard, Jan Mayen Islands</asp:ListItem>
                                                                <asp:ListItem Value="SZ">Sw Aziland</asp:ListItem>
                                                                <asp:ListItem Value="SE">Sweden</asp:ListItem>
                                                                <asp:ListItem Value="CH">Switzerland</asp:ListItem>
                                                                <asp:ListItem Value="SY">Syrian Arab Republic</asp:ListItem>
                                                                <asp:ListItem Value="TW">Taiwan</asp:ListItem>
                                                                <asp:ListItem Value="TJ">Tajikistan</asp:ListItem>
                                                                <asp:ListItem Value="TZ">Tanzania, United Republic Of</asp:ListItem>
                                                                <asp:ListItem Value="TH">Thailand</asp:ListItem>
                                                                <asp:ListItem Value="TG">Togo</asp:ListItem>
                                                                <asp:ListItem Value="TK">Tokelau</asp:ListItem>
                                                                <asp:ListItem Value="TO">Tonga</asp:ListItem>
                                                                <asp:ListItem Value="TT">Trinidad And Tobago</asp:ListItem>
                                                                <asp:ListItem Value="TN">Tunisia</asp:ListItem>
                                                                <asp:ListItem Value="TR">Turkey</asp:ListItem>
                                                                <asp:ListItem Value="TM">Turkmenistan</asp:ListItem>
                                                                <asp:ListItem Value="TC">Turks And Caicos Islands</asp:ListItem>
                                                                <asp:ListItem Value="TV">Tuvalu</asp:ListItem>
                                                                <asp:ListItem Value="UG">Uganda</asp:ListItem>
                                                                <asp:ListItem Value="UA">Ukraine</asp:ListItem>
                                                                <asp:ListItem Value="AE">United Arab Emirates</asp:ListItem>
                                                                <asp:ListItem Value="GB">United Kingdom</asp:ListItem>
                                                                <asp:ListItem Value="US">United States</asp:ListItem>
                                                                <asp:ListItem Value="UM">United States Minor Is.</asp:ListItem>
                                                                <asp:ListItem Value="UY">Uruguay</asp:ListItem>
                                                                <asp:ListItem Value="UZ">Uzbekistan</asp:ListItem>
                                                                <asp:ListItem Value="VU">Vanuatu</asp:ListItem>
                                                                <asp:ListItem Value="VE">Venezuela</asp:ListItem>
                                                                <asp:ListItem Value="VN">Viet Nam</asp:ListItem>
                                                                <asp:ListItem Value="VG">Virgin Islands (British)</asp:ListItem>
                                                                <asp:ListItem Value="VI">Virgin Islands (U.S.)</asp:ListItem>
                                                                <asp:ListItem Value="WF">Wallis And Futuna Islands</asp:ListItem>
                                                                <asp:ListItem Value="EH">Western Sahara</asp:ListItem>
                                                                <asp:ListItem Value="YE">Yemen</asp:ListItem>
                                                                <asp:ListItem Value="YU">Yugoslavia</asp:ListItem>
                                                                <asp:ListItem Value="ZR">Zaire</asp:ListItem>
                                                                <asp:ListItem Value="ZM">Zambia</asp:ListItem>
                                                                <asp:ListItem Value="ZW">Zimbabwe</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </td>
                                                        <td class="auto-style34">
                                                            <asp:Label ID="Label190" runat="server" CssClass="auto-style12" Font-Bold="True" Font-Names="Arial" Font-Size="XX-Large" Text="*"></asp:Label>
                                                        </td>
                                                        <td class="auto-style21">
                                                            <asp:Label ID="countryval" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" style="color: #993333" Text="Country Needed!" Visible="False"></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style27">
                                                            <br />
                                                            <asp:Image ID="Image6" runat="server" ImageUrl="~/images/skypelightgray.jpg" Width="30px" />
                                                            &nbsp;<asp:Label ID="Label177" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" style="color: #336699" Text="Skype:"></asp:Label>
                                                        </td>
                                                        <td class="auto-style33">
                                                            <br />
                                                            <asp:TextBox ID="myskype" runat="server" CssClass="auto-style15" Height="30px" Width="280px"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style35">
                                                            <br />
                                                        </td>
                                                        <td class="auto-style13">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style27">
                                                            <br />
                                                            <asp:Image ID="Image7" runat="server" ImageUrl="~/images/whatsapplightgray.jpg" Width="30px" />
                                                            &nbsp;<asp:Label ID="Label178" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" style="color: #336699" Text="Whatsapp:"></asp:Label>
                                                        </td>
                                                        <td class="auto-style33">
                                                            <br />
                                                            <asp:TextBox ID="mywhatsapp" runat="server" CssClass="auto-style15" Height="30px" Width="280px"></asp:TextBox>
                                                        </td>
                                                        <td class="auto-style35">
                                                            <br />
                                                        </td>
                                                        <td class="auto-style13">&nbsp;</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style27">&nbsp;</td>
                                                        <td class="auto-style33">&nbsp;</td>
                                                        <td class="auto-style35">&nbsp;</td>
                                                        <td class="auto-style13">&nbsp;</td>
                                                    </tr>
                                                </table>
                                                <span>
                                                <br />
                                                <asp:ImageButton ID="ImageButton6" runat="server" Height="64px" ImageUrl="~/images/signup.png" OnClick="signup" />
                                                &nbsp;&nbsp;&nbsp;<asp:ImageButton ID="ImageButton7" runat="server" Height="64px" ImageUrl="~/images/fbsignup.png" OnClick="fblogin_click" />
                                                <br />
                                                <br />
                                                </span>
                                                <asp:Label ID="debug" runat="server" Text="Debugging: " Visible="False"></asp:Label>
                                                <br />
                                                <br />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:View>
                            </asp:MultiView>
                        </td>
                    </tr>
                </table>
                <p>
                    &nbsp;</p>
                <p>
                    &nbsp;</p>
                <p>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
