<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Admin Register</h2>
    <p>
        Username:<asp:TextBox ID="txtRegEmail" runat="server"></asp:TextBox>

       

        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression="^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*\s*$" ErrorMessage="Please enter a valid email-address" ControlToValidate="txtRegEmail"></asp:RegularExpressionValidator>

       

    </p>
    <p>
        Password:<asp:TextBox ID="txtRegPassword" runat="server"></asp:TextBox>
        
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$" ErrorMessage="Password has to be atleast 4 characters less than 8 including one capital letter, one small letter and one number" ControlToValidate="txtRegPassword"></asp:RegularExpressionValidator>
        
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <asp:Literal ID="RegisterErr" runat="server"></asp:Literal>
    </p>
    <h3>Admin Login</h3>
    <p >Username:<asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox>
    </p>
    <p>Password:<asp:TextBox ID="txtLoginPassword" runat="server"></asp:TextBox>
    </p>
<p>
    <asp:Button ID="Button2" runat="server" Text="Login" OnClick="Button2_Click" />
    <asp:Literal ID="LoginErr" runat="server"></asp:Literal>
    </p>
</asp:Content>
