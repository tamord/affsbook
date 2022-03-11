<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="affsbook.register1" %>

    
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style type="text/css">

        .style17
        {
            text-align: center;
        }

                      .myButton {
	-moz-box-shadow: 0px 0px 0px 2px #9fb4f2;
	-webkit-box-shadow: 0px 0px 0px 2px #9fb4f2;
	box-shadow: 0px 0px 0px 2px #9fb4f2;
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
	font-size:19px;
	padding:12px 37px;
	text-decoration:none;
	text-shadow:0px 1px 0px #283966;
            font-weight: 700;
            margin-right: 0px;
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



        </style>
        
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <table align="center" style="width: 800px; background:lightgray; border: solid; border-width: 1px">
        <tr>
            <td>
                <br />
                <asp:Label ID="Label76" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #336699" Text="Already Signed Up?"></asp:Label>
                <br />
                <br />
                <asp:DropDownList ID="DropDownList2" runat="server" Height="38px" Width="236px" Font-Size="Large">
                    <asp:ListItem Value="0">Select Role</asp:ListItem>
                    <asp:ListItem>Affiliate</asp:ListItem>
                    <asp:ListItem>Publisher</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <span __designer:mapid="b580">
                <asp:Button ID="Button10" runat="server" BorderColor="Gray" BorderWidth="4px" class="myButton" Font-Names="Verdana" Font-Size="X-Large" ForeColor="White" Height="64px" OnClick="login" Text="Login" Width="184px" />
                <br />
                <br />
                <asp:Label ID="roleval" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="Please Select Role: Affiliate or Publisher!" Visible="False"></asp:Label>
                </span>
                <br />
                <br />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
    <table align="center" style="width: 800px; border-style: solid; border-width: 1px">
        <tr>
            <td colspan="4">
                <br />
                <asp:Label ID="Label77" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #336699" Text="Register Here!"></asp:Label>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <img __designer:mapid="b3d9" src="https://www.ads-rush.com/email.jpg" width="30" /> &nbsp;&nbsp;
                <asp:Label ID="Label59" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #336699" Text="E-Mail:"></asp:Label>
                <br />
            </td>
            <td><span __designer:mapid="b3dc" class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span __designer:mapid="b3de">
                <asp:TextBox ID="myemail0" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="style7" Font-Size="Large" Height="30px" Width="236px"></asp:TextBox>
                </span></span></td>
            <td>
                <asp:Label ID="Label60" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="*"></asp:Label>
            </td>
            <td>
                <asp:Label ID="emailval0" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="E-Mail Needed!" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <img __designer:mapid="b3e6" src="https://www.ads-rush.com/username.jpg" width="30" />
                <asp:Label ID="Label61" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #336699" Text="Username:"></asp:Label>
            </td>
            <td><span __designer:mapid="b3dc" class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span __designer:mapid="b3de">
                <asp:TextBox ID="myemail1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="style7" Font-Size="Large" Height="30px" Width="236px"></asp:TextBox>
                </span></span></td>
            <td>
                <asp:Label ID="Label62" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="*"></asp:Label>
            </td>
            <td>
                <asp:Label ID="usernameval0" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="Username Needed!" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <img __designer:mapid="b3f3" src="https://www.ads-rush.com/password.jpg" width="30" />
                <asp:Label ID="Label63" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #336699" Text="Password:"></asp:Label>
            </td>
            <td><span __designer:mapid="b3f6" class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span __designer:mapid="b3f8">
                <asp:TextBox ID="mypass3" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="style7" Font-Size="Large" Height="30px" TextMode="Password" Width="236px"></asp:TextBox>
                </span></span></td>
            <td>
                <asp:Label ID="Label64" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="*"></asp:Label>
            </td>
            <td>
                <asp:Label ID="pass1val0" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="Password Needed!" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label65" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #336699" Text="Password Again:"></asp:Label>
            </td>
            <td><span __designer:mapid="b402" class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span __designer:mapid="b404">
                <asp:TextBox ID="mypass4" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="style7" Font-Size="Large" Height="30px" TextMode="Password" Width="236px"></asp:TextBox>
                </span></span></td>
            <td>
                <asp:Label ID="Label66" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="*"></asp:Label>
            </td>
            <td>
                <asp:Label ID="pass2val0" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="Password Needed!" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label67" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #336699" Text="Your Full Name:"></asp:Label>
                <br />
            </td>
            <td><span __designer:mapid="b40e" class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span __designer:mapid="b410">
                <asp:TextBox ID="myfullname0" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="style7" Font-Size="Large" Height="30px" Width="236px"></asp:TextBox>
                </span></span></td>
            <td>
                <asp:Label ID="Label68" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="*"></asp:Label>
            </td>
            <td>
                <asp:Label ID="fullnameval0" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="Full Name Needed!" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <asp:Label ID="Label70" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #336699" Text="Gender:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="38px" Width="236px">
                    <asp:ListItem Value="0">Select Gender</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="Label71" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="*"></asp:Label>
            </td>
            <td>
                <asp:Label ID="fullnameval1" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="Gender Needed!" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <br />
&nbsp;<img __designer:mapid="b547" src="https://www.ads-rush.com/skype.jpg" width="30" />
                <asp:Label ID="Label69" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #336699" Text="Skype:"></asp:Label>
            </td>
            <td><span __designer:mapid="b54a" class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span __designer:mapid="b54c">
                <asp:TextBox ID="myskype0" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="style7" Font-Size="Large" Height="30px" Width="236px"></asp:TextBox>
                </span></span></td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4"><span __designer:mapid="b580">
                <asp:Button ID="Button9" runat="server" BorderColor="Gray" BorderWidth="4px" class="myButton" Font-Names="Verdana" Font-Size="X-Large" ForeColor="White" Height="64px" OnClick="next1" Text="Next" Width="184px" />
                <br />
                <br />
                </span></td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
