<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeBehind="IndividualProductsPage.aspx.cs" Inherits="WebApplication1.IndividualProductsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Product Description</h2>
    <asp:Literal ID="litTitle" runat="server"></asp:Literal>
    Item Description<asp:Image ID="Image1" runat="server" Height="400px" Width="400px" />
    <br />

    <asp:Literal ID="litDate" runat="server"></asp:Literal>Stock Quantity<br />



    <asp:Literal ID="litBody" runat="server"></asp:Literal>



Price



</asp:Content>
