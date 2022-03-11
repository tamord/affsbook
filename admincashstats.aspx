<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admincashstats.aspx.cs" Inherits="affsbook.admincashstats" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #006666;
        }
        .auto-style3 {
            color: #336699;
        }
        .auto-style4 {
            color: #006600;
            
        }
        .auto-style8 {
            width: 298px;
        }
        .style17
    {
        color: #006600;
    }
        .style18
        {
            width: 830px;
            height: 341px;
        }
        .style19
        {
            width: 186px;
        }
        .style23
        {
            width: 186px;
            height: 169px;
            font-size: x-large;
            text-align: center;
        }
        .style24
        {
            height: 169px;
            text-align: center;
        }
        .style26
        {
            color: #000066;
            font-size: x-large;
        }
        .auto-style9 {
            width: 800px;
            background: lightgray;
            border: 2px black solid
        }
        .auto-style10 {
            width: 750px;
            background:lightgray;
            border: 1px solid black;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <br />
                <br />
                <table align="center" class="auto-style10">
                    <tr>
                        <td>
                            <table align="center" class="style14">
                                <tr>
                                    <td><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                                        <br />
                                        <span class="auto-style2">Welcome to The Admin Lounge</span></span></td>
                                </tr>
                            </table>
                            <span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                            <br />
                            <table align="center" class="style14">
                                <tr>
                                    <td class="style15"><span style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style16" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="auto-style3">Enter Your Username: </span>
                                        <br />
                                        </span></span></td>
                                    <td><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span><span style="color: rgb(0, 0, 0); font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                                        <asp:TextBox ID="Username" runat="server" BorderStyle="Solid" BorderWidth="1px" CssClass="style7" Font-Size="Large" Height="30px" Width="200px"></asp:TextBox>
                                        <br />
                                        </span></span></span></td>
                                </tr>
                                <tr>
                                    <td class="style15"><span style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="auto-style3" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Enter Your Password:</span></span></td>
                                    <td><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span><span style="color: rgb(0, 0, 0); font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                                        <asp:TextBox ID="Password" runat="server" BorderStyle="Solid" BorderWidth="1px" CssClass="style7" Font-Size="Large" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
                                        </span></span></span></td>
                                </tr>
                            </table>
                            </span><span class="auto-style8" style="font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                            <br />
                            <table align="center">
                                <tr>
                                    <td class="auto-style1"><span class="auto-style8" style="font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                                        <asp:Button ID="Button17" runat="server" BorderColor="Gray" BorderWidth="4px" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#6600CC" Height="67px" OnClick="Login_Click" Text="Login" Width="213px" /><br />
                                        <br />
                                        <asp:Label ID="wrong" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333" Text="Username &amp; Password do not Match!" Visible="False"></asp:Label>
                                        </span></td>
                                </tr>
                            </table>
                            </span></td>
                    </tr>
                </table>
                <br />
                <br />

            </asp:View>
            <asp:View ID="View2" runat="server">
                <br />
                <span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                <table align="center" class="style20">
                    <tr align="center">
                        <td><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style17" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                            <asp:Label ID="welcome" runat="server" CssClass="auto-style4" style="font-size: xx-large; font-weight: 700;" Text="Hello Welcome to The Admin Aff Stats"></asp:Label>
                            <br />
                            &nbsp;<br />
                            </span></span></td>
                    </tr>
                </table>
                <div class="style22">
                    <br />
                </div>
                <table align="center" class="auto-style3">
                    <tr>
                        <span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                        <td class="style21"><span style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style16" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong><span class="auto-style3">Affiliate Full Name: </span>
                            <br />
                            <br />
                            </strong></span></span></td>
                        <td class="style22"><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                            <asp:DropDownList ID="dropdownfname" runat="server" CssClass="style7" Height="30px" style="font-size: large" Width="250px">
                            </asp:DropDownList>
                            <span><span style="color: rgb(0, 0, 0); font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong>
                            <br />
                            <br />
                            </strong></span></span></span></td>
                        </span>
                    </tr>
                    <tr>
                        <td class="style21"><span style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style16" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong>Affiliate Username:
                            <br />
                            <br />
                            </strong></span></span></td>
                        <td class="style22"><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                            <asp:DropDownList ID="dropdownuser2" runat="server" CssClass="style7" Height="30px" style="font-size: large" Width="250px">
                            </asp:DropDownList>
                            <span><span style="color: rgb(0, 0, 0); font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong>
                            <br />
                            <br />
                            </strong></span></span></span></td>
                    </tr>
                    <tr>
                        <td class="style21"><span style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style16" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong>
                            <span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">Affiliate E-Mail:
                            <br />
                            </span></strong></span></span></td>
                        <td class="style22"><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                            <asp:DropDownList ID="dropdownemail" runat="server" CssClass="style7" Height="30px" style="font-size: large" Width="250px">
                            </asp:DropDownList>
                            <br />
                            </span></td>
                    </tr>
                    <tr>
                        <span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                        <td class="style21"><span style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style16" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong>
                            <br />
                            Affiliate ID:
                            <br />
                            <br />
                            </strong></span></span></td>
                        <td class="style22"><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span><span style="color: rgb(0, 0, 0); font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong>
                            <br />
                            <asp:TextBox ID="affId" runat="server" BorderStyle="Solid" BorderWidth="1px" CssClass="style7" Font-Size="Large" Height="30px" Width="200px"></asp:TextBox>
                            <br />
                            <br />
                            </strong></span></span></span></td>
                        </span>
                    </tr>
                </table>
                <table align="center" class="auto-style3">
                    <tr>
                        <td class="style21"><span style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style16" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong>Month:</strong></span></span></td>
                        <td class="style22"><span style="color: rgb(0, 0, 0); font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="auto-style8" Font-Size="15pt" Height="35px" Width="189px">
                                <asp:ListItem Value="1">January</asp:ListItem>
                                <asp:ListItem Value="2">February</asp:ListItem>
                                <asp:ListItem Value="3">March</asp:ListItem>
                                <asp:ListItem Value="4">April</asp:ListItem>
                                <asp:ListItem Value="5">May</asp:ListItem>
                                <asp:ListItem Value="6">June</asp:ListItem>
                                <asp:ListItem Value="7">July</asp:ListItem>
                                <asp:ListItem Value="8">August</asp:ListItem>
                                <asp:ListItem Value="9">September</asp:ListItem>
                                <asp:ListItem Value="10">October</asp:ListItem>
                                <asp:ListItem Value="11">November</asp:ListItem>
                                <asp:ListItem Value="12">December</asp:ListItem>
                            </asp:DropDownList>
                            </span></td>
                    </tr>
                    <tr>
                        <span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                        <td class="style21"><span style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style16" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><strong>
                            <br />
                            Year:<br /> </strong></span></span></td>
                        <td class="style22"><span style="color: rgb(0, 0, 0); font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                            <br />
                            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="auto-style8" Font-Size="15pt" Height="35px" Width="189px">
                                <asp:ListItem Value="2018">2018</asp:ListItem>
                                <asp:ListItem Selected="True" Value="2019">2019</asp:ListItem>
                                <asp:ListItem Value="2020">2020</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            </span></td>
                        </span>
                    </tr>
                    <tr>
                        <td class="style21">&nbsp;</td>
                        <td class="style22">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style21">
                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" style="color: #993333; text-align: left;" Text="Username/ID not found" Visible="False"></asp:Label>
                        </td>
                        <td class="style22">
                            <br />
                            <span class="style17" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                            <span class="auto-style8" style="font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                            <asp:Button ID="Button14" runat="server" BorderColor="Gray" BorderWidth="4px" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#6600CC" Height="67px" OnClick="load_click2" Text="Load" Width="213px" />
                            </span></span></span></td>
                    </tr>
                </table>
                <br />
                <br />
                <table align="center" class="auto-style9">
                    <tr>
                        <td class="auto-style1"><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="auto-style8"><span>
                            <asp:Label ID="Label42" runat="server" CssClass="auto-style3" style="font-size: x-large" Text="Aff Referred"></asp:Label>
                            <br />
                            </span></span></span></td>
                        <td class="auto-style1"><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style17"><span class="auto-style3"><span class="auto-style8">
                            <asp:Label ID="Label43" runat="server" style="font-size: x-large" Text="Pub Referred"></asp:Label>
                            <br />
                            </span></span></span></span></td>
                        <td class="auto-style1"><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style17"><span class="auto-style3"><span class="auto-style8">
                            <asp:Label ID="Label44" runat="server" style="font-size: x-large" Text="Revenues"></asp:Label>
                            <br />
                            </span></span></span></span></td>
                        <td class="auto-style1"><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style17"><span class="auto-style3"><span class="auto-style8">
                            <asp:Label ID="Label45" runat="server" style="font-size: x-large" Text="Earnings"></asp:Label>
                            <br />
                            </span></span></span></span></td>
                    </tr>
                    <tr>
                        <td class="auto-style1"><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style17">
                            <asp:TextBox ID="affref" runat="server" CssClass="style25" Height="30px" style="font-size: x-large" Width="45px">0</asp:TextBox>
                            </span></span></td>
                        <td class="auto-style1"><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style17">
                            <asp:TextBox ID="pubref" runat="server" CssClass="style25" Height="30px" style="font-size: x-large" Width="45px">0</asp:TextBox>
                            </span></span></td>
                        <td class="auto-style1"><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style17">
                            <asp:TextBox ID="revenues" runat="server" CssClass="style25" Height="30px" style="font-size: x-large" Width="45px">0</asp:TextBox>
                            </span></span></td>
                        <td class="auto-style1"><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style17">
                            <asp:TextBox ID="earnings" runat="server" CssClass="style25" Height="30px" style="font-size: x-large" Width="45px">0</asp:TextBox>
                            </span></span></td>
                    </tr>
                </table>
                <br />
                </span><span class="style17" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                <span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                <table align="center" class="style20">
                    <tr align="center">
                        <td><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="style17" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                            <br />
                            <asp:Label ID="Label28" runat="server" style="font-size: x-large; font-weight: 700;" Text="Last Payout:"></asp:Label>
                            &nbsp;<asp:TextBox ID="lastpayout" runat="server" Height="30px" style="font-family: Verdana; font-size: x-large" Width="77px">0</asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label40" runat="server" style="font-size: x-large; font-weight: 700;" Text="Balance:"></asp:Label>
                            &nbsp;
                            <asp:TextBox ID="balance" runat="server" Height="30px" style="font-family: Verdana; font-size: x-large" Width="77px">0</asp:TextBox>
                            <br />
                            <br />
                            <br />
                            </span>&nbsp;<span class="style17" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="auto-style8" style="font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><asp:Button ID="Button15" runat="server" BorderColor="Gray" BorderWidth="4px" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#6600CC" Height="68px" onclick="aff_plus" Text="Aff + 1" Width="136px" />
                            &nbsp;&nbsp;&nbsp;<asp:Button ID="Button16" runat="server" BorderColor="Gray" BorderWidth="4px" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#6600CC" Height="68px" onclick="pub_plus" Text="Pub + 1" Width="136px" />
                            &nbsp;&nbsp;&nbsp;</span></span></span><span class="auto-style8" style="font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><asp:Button ID="Button13" runat="server" BorderColor="Gray" BorderWidth="4px" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#6600CC" Height="68px" OnClick="update" Text="Update" Width="136px" />
                            &nbsp;&nbsp;&nbsp;<span class="style17" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><span class="auto-style8" style="font-family: verdana; font-size: xx-large; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: -webkit-center; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;"><br /><br />
                            <br />
                            </span></span></span></td>
                    </tr>
                </table>
                <br />
                <asp:Label ID="emaillabel" runat="server" style="font-size: x-large; font-weight: 700; color: #006600;" Visible="False"></asp:Label>
                </span>
                <br />
                </span>
            </asp:View>
        </asp:MultiView>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
