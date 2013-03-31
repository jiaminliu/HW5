<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br />
<hr />
    <div id="wrap">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            
            SelectCommand="SELECT [Category], [Color], [Material], [StdPrice], [DiscountPrice], [Description], [Quantity], [Sizes], [StyleID] FROM [Shoes]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="StyleID" DataSourceID="SqlDataSource1" Width="650px" 
            PageSize="5" AllowPaging="True" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Category" HeaderText="Category" 
                    SortExpression="Category" />
                <asp:ImageField DataImageUrlField="StyleID" 
                    DataImageUrlFormatString="ShoesImages/{0}.jpg">
                </asp:ImageField>
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:HyperLinkField DataNavigateUrlFields="StyleID" 
                    DataNavigateUrlFormatString="Details.aspx?StyleID={0}" Text="Details" />
                <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                <asp:BoundField DataField="StdPrice" HeaderText="StdPrice" 
                    SortExpression="StdPrice" />
            </Columns>
        </asp:GridView>
        <br />
        </div>
</asp:Content>

