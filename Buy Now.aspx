<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Buy Now.aspx.cs" Inherits="E_Commerce.Buy_Now" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
            height: 449px;
        }
        .auto-style11 {
            margin-left: 448px;
        }
        .auto-style12 {
            height: 186px;
        }
        .auto-style13 {
            height: 115px;
        }
        .auto-style15 {
            height: 78px;
        }
        .auto-style16 {
            height: 67px;
        }
        .auto-style17 {
            margin-left: 0px;
            margin-top: 0px;
        }
        .auto-style18 {
            margin-left: 2px;
            margin-top: 0px;
        }
        .auto-style19 {
            height: 52px;
        }
        .auto-style20 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style12" colspan="2" style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">
                <asp:Image ID="Image3" runat="server" CssClass="auto-style18" Height="182px" ImageUrl="~/image3.png" Width="480px" />
                <asp:Image ID="Image2" runat="server" CssClass="auto-style18" Height="182px" ImageUrl="~/image2.jpeg" Width="481px" />
                <asp:Image ID="Image1" runat="server" CssClass="auto-style17" Height="182px" ImageUrl="~/image1.jpeg" Width="511px" />
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF" class="auto-style19">Product Name</td>
            <td style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF" class="auto-style19">
                <asp:TextBox ID="TextBox6" runat="server" Height="32px" Width="153px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">Name</td>
            <td style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">
                <asp:TextBox ID="TextBox1" runat="server" Height="32px" Width="153px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">Age</td>
            <td style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">
                <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="183px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">Shipping Address</td>
            <td style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">
                <asp:TextBox ID="TextBox3" runat="server" Height="83px" TextMode="MultiLine" Width="315px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">Contact No</td>
            <td style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">
                <asp:TextBox ID="TextBox4" runat="server" Height="36px" Width="192px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style15" style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">Payment Method</td>
            <td class="auto-style15" style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="288px" CssClass="auto-style11">
                    <asp:ListItem>Cash On Delivery</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">Email ID </td>
            <td class="auto-style16" style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">
                <asp:TextBox ID="TextBox5" runat="server" Height="35px" Width="175px"></asp:TextBox>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style16" style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">Seller ID</td>
            <td class="auto-style16" style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">
                <asp:TextBox ID="TextBox7" runat="server" Height="35px" Width="202px" CssClass="auto-style20"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" colspan="2" style="font-family: 'Bahnschrift Light Condensed'; font-size: medium; font-weight: normal; font-style: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Purchase" Width="99px" />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
