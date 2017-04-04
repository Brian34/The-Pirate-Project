<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Menu</h1>
    <h2>What's On Sale!</h2>
    <div class="product">
       
       <div class="productimg1">
        <h5>Tunnel Bear</h5>
        <img src="images/Sale 1.png" alt="#" />
    </div>
        <div class="productimg2">
        <h5>Freshbooks</h5>
        <img src="images/Sale 2.png" alt="#" />
    </div>
        <div class="productimg3">
        <h5>Adobe Lightroom CC</h5>
        <img src="images/Sale 3.jpg" alt="#" />
    </div>
        
        </div>
    
    <h2>Releases!</h2>
    
    <div class="new">

        <div class="newimg1">
            <h5>Adobe Photoshop 2017</h5>
            <img src="images/New 1.jpg" alt="#" />
        </div>
        <div class="newimg2">
            <h5>Office 365</h5>
            <img src="images/New 2.jpg" alt="#" />
        </div>
        <div class="newimg3">
            <h5>Kaspersky Antivirus 2017</h5>
            <img src="images/New 3.jpg" alt="#" />
        </div>

    </div>  
</asp:Content>
