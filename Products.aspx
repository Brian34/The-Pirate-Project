<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WebApplication1.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Our Products</h1>
    
        <asp:Repeater ID="repeater" runat="server" OnItemCommand="repeater_ItemCommand">
        <HeaderTemplate></HeaderTemplate>
        <ItemTemplate>
            <img src ="ProductImages/<%#Eval ("ImgName")%><%#Eval ("Extension")%>" alt="<%#Eval ("ImgDescription") %>"/>
            <h4><%#Eval("ProductName") %></h4>
            <a href ="IndividualProductsPage.aspx?id=<%#Eval("ImgName") %>" >View Product</a> 
       </ItemTemplate>
        <FooterTemplate></FooterTemplate>


        </asp:Repeater>
    

</asp:Content>
