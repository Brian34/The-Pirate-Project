<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeBehind="upload.aspx.cs" Inherits="WebApplication1.upload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Upload images here</h2>

    <asp:FileUpload ID="imageFileUploadControl" runat="server" />

    <asp:Button ID="uploadimage" runat="server" OnClick="uploadimage_Click" Text="Upload" />

    <asp:Literal ID="litResult" runat="server"></asp:Literal>

    <asp:Literal ID="litFail" runat="server"></asp:Literal>
    </asp:TextBox>
    
    
    Enter an alternate text
    
    <asp:TextBox ID="AltBox" runat="server"></asp:TextBox>
    


    </asp:Content>
