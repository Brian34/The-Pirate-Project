<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="WebApplication1.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Product View</h3>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource" Height="213px" Width="853px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:ButtonField Text="Add" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
            <asp:BoundField DataField="ProductDescription" HeaderText="ProductDescription" SortExpression="ProductDescription" />
            <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
            <asp:BoundField DataField="ProductQuantity" HeaderText="ProductQuantity" SortExpression="ProductQuantity" />
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" DataNavigateUrlFormatString="upload.aspx?id={0}" InsertVisible="False" Text="Upload Image" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626504_web1ConnectionString2 %>" DeleteCommand="DELETE FROM [Product_Table] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDescription] = @original_ProductDescription) OR ([ProductDescription] IS NULL AND @original_ProductDescription IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL))" InsertCommand="INSERT INTO [Product_Table] ([ProductName], [ProductDescription], [ProductPrice], [ProductQuantity]) VALUES (@ProductName, @ProductDescription, @ProductPrice, @ProductQuantity)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product_Table]" UpdateCommand="UPDATE [Product_Table] SET [ProductName] = @ProductName, [ProductDescription] = @ProductDescription, [ProductPrice] = @ProductPrice, [ProductQuantity] = @ProductQuantity WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDescription] = @original_ProductDescription) OR ([ProductDescription] IS NULL AND @original_ProductDescription IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProductDescription" Type="String" />
            <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
            <asp:Parameter Name="original_ProductQuantity" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductDescription" Type="String" />
            <asp:Parameter Name="ProductPrice" Type="Decimal" />
            <asp:Parameter Name="ProductQuantity" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductName" Type="String" />
            <asp:Parameter Name="ProductDescription" Type="String" />
            <asp:Parameter Name="ProductPrice" Type="Decimal" />
            <asp:Parameter Name="ProductQuantity" Type="String" />
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_ProductName" Type="String" />
            <asp:Parameter Name="original_ProductDescription" Type="String" />
            <asp:Parameter Name="original_ProductPrice" Type="Decimal" />
            <asp:Parameter Name="original_ProductQuantity" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
