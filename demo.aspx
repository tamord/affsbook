<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="affsbook.demo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <table align="center" style="width: 800px; border-style: solid; border-width: 1px">
        <tr>
            <td>
                <br />
                <span style="color: #003366">
                <img __designer:mapid="b3d9" src="https://www.ads-rush.com/email.jpg" width="30" style="font-size: x-large" /><span style="font-size: x-large"> &nbsp;&nbsp;
                E-Mail</span></span><br />
            </td>
            <td>
                <input id="Text1" type="text" /></td>
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
                <asp:Button ID="Button10" runat="server" BorderColor="Gray" BorderWidth="4px" class="myButton" Font-Names="Verdana" Font-Size="X-Large" ForeColor="White" Height="64px" OnClick="next1" Text="Next" Width="184px" />
                <br />
                <br />
                </span></td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
                <span class="auto-style8" __designer:mapid="8942"><span class="style17" __designer:mapid="8943">
                <span style="color: rgb(0, 0, 0); font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" __designer:mapid="899d">
                                    <span style="color: rgb(0, 0, 0); font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" __designer:mapid="899e"><strong __designer:mapid="899f">
                                    <span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" __designer:mapid="89cb"><span class="style17" style="font-family: verdana; font-size: small; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;" __designer:mapid="89cc">
                                    <asp:Panel ID="PanelForum5" runat="server" BackColor="Silver" BorderColor="Gray" BorderWidth="1px" Height="262px">
                                        &nbsp;&nbsp;&nbsp;&nbsp;<br /><table align="center" class="style21">
                                            <tr>
                                                <td class="auto-style126">
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <asp:ImageButton ID="ImageButtonc5" runat="server" Height="100px" ImageUrl="~/images/male.jpg" OnClick="iclick1" Width="125px" />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <br />
                                                </td>
                                                <td class="auto-style125"><span class="auto-style8"><span class="style17">
                                                    <br />
                                                    <asp:Label ID="Label201" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" style="color: #336699" Text="Author:"></asp:Label>
                                                    &nbsp; <span style="color: rgb(0, 0, 0); font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span style="color: rgb(0, 0, 0); font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                                                    <strong>
                                                    <asp:LinkButton ID="sender5" runat="server" Font-Names="Verdana" OnClick="cclick1" style="font-size: x-large; color: #006666"></asp:LinkButton>
                                                    </strong></span></span>
                                                    <br />
                                                    <br />
                                                    <br />
                                                    <asp:TextBox ID="subjectc5" runat="server" BackColor="Silver" Enabled="False" Font-Names="Arial" Height="35px" style="overflow:hidden; text-align: center; font-size: x-large;" VerticalAlignment="Top" Width="550px"></asp:TextBox>
                                                    </span></span>
                                                    <br />
                                                    <asp:HiddenField ID="HiddenFieldc5" runat="server" />
                                                    <span class="auto-style8"><span class="style17">
                                                    <asp:HiddenField ID="HiddenFieldDestc5" runat="server" />
                                                    </span></span>
                                                    <br />
                                                    <br />
                                                    <span class="auto-style8"><span class="style17"><span style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none; color: rgb(0, 0, 0);">
                                                    <span style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none; color: rgb(0, 0, 0);"><strong>&nbsp;
                                                    <asp:Label ID="Label202" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" style="color: #336699" Text="Replies:"></asp:Label>
                                                    &nbsp;
                                                    <asp:Label ID="myreplies5" runat="server" CssClass="auto-style138" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" Text="0"></asp:Label>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="Label203" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" style="color: #336699" Text="Views:"></asp:Label>
                                                    &nbsp;
                                                    <asp:Label ID="myviews5" runat="server" CssClass="auto-style138" Font-Bold="True" Font-Names="Arial" Font-Size="X-Large" Text="0"></asp:Label>
                                                    </strong></span></span><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style17" style="font-family: verdana; font-size: small; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                                                    <span style="color: rgb(0, 0, 0); font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span style="color: rgb(0, 0, 0); font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                                                    <br />
                                                    &nbsp; </span></span></span></span></span></span></td>
                                                <td class="auto-style134"><span class="auto-style8"><span class="style17"><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                                                    <span class="style17" style="font-family: verdana; font-size: small; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                                                    <span style="color: rgb(0, 0, 0); font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span style="color: rgb(0, 0, 0); font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                                                    <asp:Button ID="readthread5" runat="server" BorderColor="Gray" BorderWidth="4px" class="myButton" Font-Names="Verdana" Font-Size="Medium" ForeColor="White" Height="67px" OnClick="read_message2_click" Text="Read Thread" Width="182px" />
                                                    <br />
                                                    <br />
                                                    <asp:Button ID="connectc5" runat="server" BorderColor="Gray" BorderWidth="4px" class="myButton" Font-Names="Verdana" Font-Size="Medium" ForeColor="White" Height="67px" Text="Connect" Width="182px" />
                                                    <br />
                                                    </span></span></span></span></span></span></td>
                                            </tr>
                                        </table>
                                        &nbsp;&nbsp;&nbsp;<br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                        <br />
                                    </asp:Panel>
                                    </span></span>
                                    </strong></span></span>
                </span></span>

            </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <table align="center" style="width: 800px">
        <tr>
            <td>
                <span style="color: #003366">
                <img __designer:mapid="b3d9" src="https://www.ads-rush.com/email.jpg" width="30" style="font-size: x-large" /><span style="font-size: x-large"> &nbsp;&nbsp;
                E-Mail:&nbsp;
                <input id="Text2" type="text" /><br />
                <br />
                <img __designer:mapid="b3d9" src="https://www.ads-rush.com/email.jpg" width="30" style="font-size: x-large" /> &nbsp;&nbsp; Password:&nbsp;
                <input id="Text3" type="text" /><br />
                </span></span></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
    <p>
    </p>
    <p>
        <table __designer:mapid="b3d6" align="center" class="style15">
            <tr __designer:mapid="b3d7">
                <td __designer:mapid="b3d8" class="style18">&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #336699" Text="E-Mail:"></asp:Label>
                </td>
                <td __designer:mapid="b3db"><span __designer:mapid="b3dc" class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span __designer:mapid="b3de">
                    <asp:TextBox ID="myemail" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="style7" Font-Size="Large" Height="30px" Width="236px"></asp:TextBox>
                    </span></span></td>
                <td __designer:mapid="b3e0">
                    <asp:Label ID="Label54" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="*"></asp:Label>
                </td>
                <td __designer:mapid="b3e2">
                    <asp:Label ID="emailval" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="E-Mail Needed!" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr __designer:mapid="b3e4">
                <td __designer:mapid="b3e5" class="style18">
                    <br />
&nbsp;<asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #336699" Text="Username:"></asp:Label>
                </td>
                <td __designer:mapid="b3e8"><span __designer:mapid="b3e9" class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span __designer:mapid="b3eb">
                    <br />
                    <asp:TextBox ID="myusername" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="style7" Font-Size="Large" Height="30px" Width="236px"></asp:TextBox>
                    </span></span></td>
                <td __designer:mapid="b3ed">
                    <br />
                    <asp:Label ID="Label55" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="*"></asp:Label>
                </td>
                <td __designer:mapid="b3ef">
                    <br />
                    <asp:Label ID="usernameval" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="Username Needed!" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr __designer:mapid="b3f1">
                <td __designer:mapid="b3f2" class="style18">
                    <br />
&nbsp;<asp:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #336699" Text="Password:"></asp:Label>
                </td>
                <td __designer:mapid="b3f5"><span __designer:mapid="b3f6" class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span __designer:mapid="b3f8">
                    <br />
                    <asp:TextBox ID="mypass1" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="style7" Font-Size="Large" Height="30px" TextMode="Password" Width="236px"></asp:TextBox>
                    </span></span></td>
                <td __designer:mapid="b3fa">
                    <br />
                    <asp:Label ID="Label56" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="*"></asp:Label>
                </td>
                <td __designer:mapid="b3fc">
                    <br />
                    <asp:Label ID="pass1val" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="Password Needed!" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr __designer:mapid="b3fe">
                <td __designer:mapid="b3ff" class="style18">
                    <br />
                    <asp:Label ID="Label39" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #336699" Text="Password Again:"></asp:Label>
                </td>
                <td __designer:mapid="b401"><span __designer:mapid="b402" class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span __designer:mapid="b404">
                    <br />
                    <asp:TextBox ID="mypass2" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="style7" Font-Size="Large" Height="30px" TextMode="Password" Width="236px"></asp:TextBox>
                    </span></span></td>
                <td __designer:mapid="b406">
                    <br />
                    <asp:Label ID="Label57" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="*"></asp:Label>
                </td>
                <td __designer:mapid="b408">
                    <br />
                    <asp:Label ID="pass2val" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="Password Needed!" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr __designer:mapid="b40a">
                <td __designer:mapid="b40b" class="style18">
                    <br />
                    <asp:Label ID="Label40" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #336699" Text="Your Full Name:"></asp:Label>
                </td>
                <td __designer:mapid="b40d"><span __designer:mapid="b40e" class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span __designer:mapid="b410">
                    <br />
                    <asp:TextBox ID="myfullname" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="style7" Font-Size="Large" Height="30px" Width="236px"></asp:TextBox>
                    </span></span></td>
                <td __designer:mapid="b412">
                    <br />
                    <asp:Label ID="Label58" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="*"></asp:Label>
                </td>
                <td __designer:mapid="b414">
                    <br />
                    <asp:Label ID="fullnameval" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="Full Name Needed!" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr __designer:mapid="b545">
                <td __designer:mapid="b546" class="style18">
                    <br />
&nbsp;<asp:Label ID="Label53" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #336699" Text="Skype:"></asp:Label>
                </td>
                <td __designer:mapid="b549"><span __designer:mapid="b54a" class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span __designer:mapid="b54c">
                    <br />
                    <asp:TextBox ID="myskype" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CssClass="style7" Font-Size="Large" Height="30px" Width="236px"></asp:TextBox>
                    </span></span></td>
                <td __designer:mapid="b54e">&nbsp;</td>
                <td __designer:mapid="b54f">&nbsp;</td>
            </tr>
            <tr __designer:mapid="b57c">
                <td __designer:mapid="b57d" class="style17" colspan="4">
                    <br __designer:mapid="b57e" />
                    <span __designer:mapid="b580">
                    <asp:Button ID="Button9" runat="server" BorderColor="Gray" BorderWidth="4px" class="myButton" Font-Names="Verdana" Font-Size="X-Large" ForeColor="White" Height="64px" OnClick="next1" Text="Next" Width="184px" />
                    </span>&nbsp;&nbsp;&nbsp;
                    <br __designer:mapid="b582" />
                    <br __designer:mapid="b583" />
                    <asp:Label ID="success" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #006600" Text="Thank you for your submission!" Visible="False"></asp:Label>
                    <br />
                    <asp:Label ID="error" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="Error! Please Try Again Later!" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
