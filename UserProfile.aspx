<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="E_Commerce.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 100%;
        height: 216px;
    }
    .auto-style11 {
        width: 886px;
    }
    .auto-style12 {
        height: 219px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <table class="auto-style10">
    <tr>
        <td colspan="2" style="text-align: center; vertical-align: middle; line-height: normal; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: large; font-weight: 200">Profile</td>
    </tr>
    <tr>
        <td class="auto-style11" style="text-align: center; vertical-align: middle; line-height: normal; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: large; font-weight: 200">First Name</td>
        <td style="text-align: center; vertical-align: middle; line-height: normal; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: large; font-weight: 200">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style11" style="text-align: center; vertical-align: middle; line-height: normal; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: large; font-weight: 200">Last Name</td>
        <td style="text-align: center; vertical-align: middle; line-height: normal; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: large; font-weight: 200">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style11" style="text-align: center; vertical-align: middle; line-height: normal; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: large; font-weight: 200">Email ID</td>
        <td style="text-align: center; vertical-align: middle; line-height: normal; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: large; font-weight: 200">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style11" style="text-align: center; vertical-align: middle; line-height: normal; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: large; font-weight: 200">UserType</td>
        <td style="text-align: center; vertical-align: middle; line-height: normal; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: large; font-weight: 200">
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </td>
    </tr>
</table>
    </center>
    

</asp:Content>
