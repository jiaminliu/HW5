<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Details.aspx.vb" Inherits="detailsview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT * FROM [Shoes] WHERE ([StyleID] = @StyleID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="StyleID" QueryStringField="StyleID" 
                Type="Int32" />
        </SelectParameters>
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
            <asp:BoundField DataField="Material" HeaderText="Material" 
                SortExpression="Material" />
            <asp:BoundField DataField="StdPrice" HeaderText="StdPrice" 
                SortExpression="StdPrice" />
            <asp:BoundField DataField="Description" HeaderText="Description" 
                SortExpression="Description" />
            <asp:BoundField DataField="DiscountPrice" HeaderText="DiscountPrice" 
                SortExpression="DiscountPrice" />
            <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                SortExpression="Quantity" />
            <asp:BoundField DataField="Sizes" HeaderText="Sizes" SortExpression="Sizes" />
            <asp:ImageField DataImageUrlField="StyleID" 
                DataImageUrlFormatString="ShoesImages/{0}.jpg">
            </asp:ImageField>
            <asp:HyperLinkField NavigateUrl="~/Default.aspx" Text="Home" />
        </Fields>
    </asp:DetailsView>

</asp:Content>

