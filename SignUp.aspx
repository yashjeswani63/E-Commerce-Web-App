<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="E_Commerce.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    /*.auto-style5 {
        width: 57%;
        height: 610px;
        margin-left: 405px;
    }
    .auto-style7 {
        height: 45px;
    }
    .auto-style8 {
        width: 221px;
    }
        .auto-style12 {
            width: 221px;
            height: 67px;
        }
        .auto-style13 {
            height: 67px;
            width: 1174px;
        }
        .auto-style15 {
            margin-left: 0px;
        }
        .auto-style17 {
            width: 1174px;
        }
        .auto-style18 {
            width: 889px;
            height: 570px;
            margin-left: 480px;
            margin-top: 0px;
        }
        .auto-style19 {
            margin-left: 167px;
        }
        .auto-style20 {
            width: 367px;
            margin-left: 366px;
        }*/
        .auto-style10 {
            width: 927px;
            height: 532px;
        }
        .auto-style11 {
            width: 176px;
            height: 109px;
        }
        .auto-style12 {
            margin-left: 396px;
        }
        .auto-style13 {
            margin-left: 231px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
            <table class="auto-style10">
    <tr>
        <td colspan="2" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bolder; font-style: italic; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">Sign Up<br />
        </td>
    </tr>
    <tr>
        <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bolder; font-style: italic; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF" class="auto-style8"  width:50%>First Name</td>
        <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bolder; font-style: italic; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF" class="auto-style17">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style3" Width="310px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="First Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bolder; font-style: italic; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF" class="auto-style8" width:50%>Last Name</td>
        <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bolder; font-style: italic; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF" class="auto-style17">
            <asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="304px" CssClass="auto-style15"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Last Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bolder; font-style: italic; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF" class="auto-style8" width:50%>E-mail</td>
        <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bolder; font-style: italic; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF" class="auto-style17">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style15" Height="32px" Width="297px" style="margin-left: 0px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email is Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email is not in correct form" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bolder; font-style: italic; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF" class="auto-style8" width:50%>Password</td>
        <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bolder; font-style: italic; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF" class="auto-style17">
            <asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="318px" CssClass="auto-style15" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Password is Required" ForeColor="Red" TextMode ="Password"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bolder; font-style: italic; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF" class="auto-style8" width:50%>Confirm Password</td>
        <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bolder; font-style: italic; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF" class="auto-style17">
            <asp:TextBox ID="TextBox6" runat="server" Width="327px" Height="27px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="c-Password is Required" ForeColor="Red" TextMode ="Password"></asp:RequiredFieldValidator>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox5" ErrorMessage="Password and Confirm Password should be same" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bolder; font-style: italic; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF" class="auto-style12"  width:50%>User Type</td>
        <td style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bolder; font-style: italic; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF" class="auto-style13">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="341px" Height="35px" CssClass="auto-style19">
                <asp:ListItem>Seller</asp:ListItem>
                <asp:ListItem>Buyer</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="User-Type is Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
       <center>
           <td class="auto-style11" colspan="2" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; font-weight: bolder; font-style: italic; line-height: normal; vertical-align: middle; text-align: center; background-color: #FFFFFF">
            <p class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Already a Member&nbsp; ?&nbsp; 
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Login Here</asp:HyperLink>
            &nbsp;<asp:Button ID="Button1" runat="server" Text="Submit" Width="114px" OnClick="Button1_Click" CssClass="auto-style13" />
            </p>
        </td>
       </center> 
    </tr>
</table>
    </center>
    
</asp:Content>
