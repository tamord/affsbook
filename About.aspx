<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="affsbook.About" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <p>&nbsp;</p>

    <br />
    <table align="center" style="width: 800px; background: lightgray; border:1px solid black">
        <tr>
            <td>
                <br />
                <span style="font-size: x-large">Login<br />
                <br />
                Usernname:&nbsp; </span>                "
                <br />
                <br />
                <span style="font-size: x-large">&nbsp; Password:&nbsp; </span>                
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Submit" />
                <br /><br />
            </td>
        </tr>
    </table>
    <br />

    <br /><br />
</asp:Content>
