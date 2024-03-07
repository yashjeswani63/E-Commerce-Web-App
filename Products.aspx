<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="E_Commerce.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style>
        .auto-style6 {
    width: 160px;
}

.auto-style7 {
    width: 282px;
}

.auto-style8 {
    width: 282px;
    height: 32px;
}

.auto-style9 {
    width: 160px;
    height: 32px;
}

.auto-style10 {
    height: 342px;
    width: 1794px;
}

/*.floating {
    float: left;
    overflow: hidden;
}

    .floating image {
        display: block;
    }*/

.auto-style11 {
    list-style: none;
    margin: 0px;
    border: 1px solid #2F3943;
    display: inline-block;
    margin: 10px;
    background-color: lightgray;
    width: 331px;
}

.auto-style12 {
    margin-left: 21px;
    margin-top: 0px;
}
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <p style="text-align: center; font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif; font-size: large; background-color: #CC66FF">
        Our Products</p>
    <asp:Label ID="Label7" runat="server"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Height="26px" Width="280px"></asp:TextBox>
<asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/search.png" OnClick="ImageButton1_Click" Width="31px" CssClass="auto-style12" Height="31px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br />
<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
        <table class="auto-style11">
            <tr>
                <td colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="200px" Width="321px" ImageUrl='<%#Eval("imagepath") %>' />
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Title</td>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("Title") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Description</td>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("Description") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Selling Price</td>
                <td class="auto-style6">
                    <asp:Label ID="Label3" runat="server" Text='<%#Eval("Selling_price") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Created By</td>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text='<%#Eval("Created_by") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Category</td>
                <td class="auto-style9">
                    <asp:Label ID="Label5" runat="server" Text='<%#Eval("Category_id") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:Label ID="Label6" runat="server" Text='<%#Stockavailability(Eval("Stock_count")) %>' ForeColor='<%#GetColor(Eval("Stock_count")) %>'></asp:Label>
                </td>
            </tr>
            <%--<tr>
                <td class="auto-style9">
                    <asp:Label ID="Label9" runat="server" Text='<%#Eval("product_id") %>'></asp:Label>
                </td>
            </tr>--%>
            
        </table>


    </ItemTemplate>
</asp:Repeater>
</asp:Content>
