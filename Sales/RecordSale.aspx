<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="RecordSale.aspx.vb" Inherits="detailsview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT * FROM [Shoes]" 
        DeleteCommand="DELETE FROM [Shoes] WHERE [StyleID] = @StyleID" 
        InsertCommand="INSERT INTO [Shoes] ([Category], [Color], [Material], [StdPrice], [Description], [DiscountPrice], [Quantity], [Sizes]) VALUES (@Category, @Color, @Material, @StdPrice, @Description, @DiscountPrice, @Quantity, @Sizes)" 
        UpdateCommand="UPDATE [Shoes] SET [Category] = @Category, [Color] = @Color, [Material] = @Material, [StdPrice] = @StdPrice, [Description] = @Description, [DiscountPrice] = @DiscountPrice, [Quantity] = @Quantity, [Sizes] = @Sizes WHERE [StyleID] = @StyleID">
        <DeleteParameters>
            <asp:Parameter Name="StyleID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter Name="Material" Type="String" />
            <asp:Parameter Name="StdPrice" Type="Decimal" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="DiscountPrice" Type="Decimal" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Sizes" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Color" Type="String" />
            <asp:Parameter Name="Material" Type="String" />
            <asp:Parameter Name="StdPrice" Type="Decimal" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="DiscountPrice" Type="Decimal" />
            <asp:Parameter Name="Quantity" Type="Int32" />
            <asp:Parameter Name="Sizes" Type="Decimal" />
            <asp:Parameter Name="StyleID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
        DataSourceID="SqlDataSource1" Height="50px" Width="125px" 
        AutoGenerateRows="False" DataKeyNames="StyleID">
        <Fields>
            <asp:BoundField DataField="StyleID" HeaderText="StyleID" InsertVisible="False" 
                ReadOnly="True" SortExpression="StyleID" />
            <asp:BoundField DataField="Category" HeaderText="Category" 
                SortExpression="Category" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:BoundField DataField="Sizes" HeaderText="Sizes" SortExpression="Sizes" />
            <asp:CommandField ShowEditButton="True" />
            <asp:DynamicField DataField="Material" HeaderText="Material" />
        </Fields>
    </asp:DetailsView>

</asp:Content>

