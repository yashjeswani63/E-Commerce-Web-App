<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="CartProducts.aspx.cs" Inherits="E_Commerce.CartProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            height: 47px;
        }

        .auto-style7 {
            height: 35px;
        }

        .auto-style11 {
             
            list-style: none;
            margin: 0px;
            border: 1px solid #2F3943;
            display: inline-block;
            margin: 10px;
            background-color: lightgray;
            width: 331px;
        }

        .auto-style13 {
            margin-left: 0px;
        }
        .auto-style14 {
            height: 85px;
            width: 1635px;
        }
        .auto-style15 {
            height: 47px;
            width: 228px;
        }
        .auto-style16 {
            width: 228px;
        }
        .auto-style17 {
            height: 35px;
            width: 7px;
        }
        .auto-style18 {
            width: 7px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style14" style="text-align: center; font-weight: bolder; font-size: 32px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">
        Cart Products&nbsp;
    </p>
    <p class="auto-style7" style="text-align: center; font-weight: bolder; font-size: 32px; text-decoration: none;">
        <asp:HyperLink ID="HyperLink1" runat="server" BorderStyle="None" ForeColor="#000066" NavigateUrl="~/User.aspx" Font-Italic="True" Height="39px" Width="1660px" CssClass="auto-style13">Continue Shopping</asp:HyperLink>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <table class="auto-style11">
                    <tr>
                        <td colspan="2">
                            <asp:Image ID="Image1" runat="server" Height="200px" Width="273px" ImageUrl='<%#Eval("imagepath") %>' CssClass="auto-style13" />
                        </td>
                    </tr>



                    <tr>
                        <td class="auto-style17">Title</td>
                        <td class="auto-style15">
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Description</td>
                        <td class="auto-style15">
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Selling Price</td>
                        <td class="auto-style15">
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Selling_price") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Created By</td>
                        <td class="auto-style15">
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Created_by") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">Category</td>
                        <td class="auto-style16">
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("Category_id") %>'></asp:Label>
                        </td>
                    </tr>
                </table>

                </ItemTemplate>
                </asp:Repeater>
        </p>
    
        
</asp:Content>
