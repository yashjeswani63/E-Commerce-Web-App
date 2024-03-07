<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="E_Commerce.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /*.auto-style5 {
            width: 48%;
            height: 437px;
            margin-left: 488px;
        }
        .auto-style7 {
            height: 118px;
        }*/
        .auto-style9 {
            margin-left: 0px;
        }
        .auto-style11 {
            width: 436px;
            height: 61px;
        }
        .auto-style12 {
            width: 1140px;
            height: 61px;
        }
    .auto-style13 {
        height: 111px;
    }
    .auto-style14 {
        width: 436px;
        height: 53px;
    }
    .auto-style15 {
        width: 1140px;
        height: 53px;
    }
        .auto-style16 {
            width: 370px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <table class="auto-style16">
    <tr>
        <td class="auto-style7" colspan="2" style="font-family: Georgia, 'Times New Roman', Times, serif; font-weight: bold; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF; font-size: medium;">Login</td>
    </tr>
    <tr>
        <td class="auto-style11" style="font-family: Georgia, 'Times New Roman', Times, serif; font-weight: bold; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF; font-size: medium;">E-mail</td>
        <td class="auto-style12" style="font-family: Georgia, 'Times New Roman', Times, serif; font-weight: bold; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF; font-size: medium;">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style9" Height="33px" Width="209px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14" style="font-family: Georgia, 'Times New Roman', Times, serif; font-weight: bold; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF; font-size: medium;">Password</td>
        <td class="auto-style15" style="font-family: Georgia, 'Times New Roman', Times, serif; font-weight: bold; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF; font-size: medium;">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style9" Height="33px" Width="214px" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="font-family: Georgia, 'Times New Roman', Times, serif; font-weight: bold; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF; font-size: medium;" class="auto-style13">
            <asp:Button ID="Button1" runat="server" CssClass="auto-style9" ForeColor="Black" Text="Login" Width="102px" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
              <p>Not A Member ?
                  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Register Here</asp:HyperLink>
            </p>
        </td>
    </tr>
    </table>
    </center>
    
</asp:Content>
