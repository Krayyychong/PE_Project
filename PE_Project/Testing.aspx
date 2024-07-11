<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testing.aspx.cs" Inherits="PE_Project.Testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="book_id" DataSourceID="SqlDataSource1" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="book_id" HeaderText="book_id" ReadOnly="True" SortExpression="book_id" />
                    <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                    <asp:BoundField DataField="book_image" HeaderText="book_image" SortExpression="book_image" />
                    <asp:BoundField DataField="book_author" HeaderText="book_author" SortExpression="book_author" />
                    <asp:BoundField DataField="book_price" HeaderText="book_price" SortExpression="book_price" />
                    <asp:BoundField DataField="book_description" HeaderText="book_description" SortExpression="book_description" />
                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:bookwebsiteConnectionString %>" ProviderName="<%$ ConnectionStrings:bookwebsiteConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [books_table]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
