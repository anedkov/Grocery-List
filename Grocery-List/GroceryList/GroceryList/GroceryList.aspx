<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GroceryList.aspx.cs" Inherits="GroceryList" StyleSheetTheme="" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            
            z-index: 1;
            left: 10px;
            top: -13px;
            position: absolute;
            height: 268px;
            width: 945px;
        }
    </style>
</head>
<body style="height: 474px">
    <form runat="server" style="background-image: url('image/sss.jpg'); background-repeat: no-repeat; background-attachment: fixed;">
        <div style="height: 474px; margin-left: 0px; margin-top: 0px;">
            <br />
&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
            <br />
            <asp:Label ID="listslabel" runat="server" style="z-index: 1; left: 519px; top: 76px; position: absolute; height: 19px; width: 32px;" Text="Lists"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<asp:DropDownList ID="usersddl" runat="server" DataSourceID="SqlDataSourceUsers" DataTextField="Name" DataValueField="IdUsers" Height="24px" Width="146px" style="z-index: 1; left: 339px; top: 106px; position: absolute; " AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
    &nbsp;<asp:Label ID="Label1" runat="server" style="z-index: 1; left: 25px; top: 68px; position: absolute; width: 53px" Text="Product"></asp:Label>
&nbsp;&nbsp;
        <asp:Label ID="userLabel" runat="server" Text="User" style="z-index: 1; left: 342px; top: 73px; position: absolute; width: 46px"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="listnumber" runat="server" style="z-index: 1; left: 503px; top: 107px; position: absolute; height: 21px; width: 89px; right: 373px;" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" DataSourceID="SqlDataSourceUserLists" DataTextField="ListName" DataValueField="Id">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList>
            <br />
&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<asp:DropDownList ID="productDDL" runat="server" DataSourceID="SqlDataSourceProducts" DataTextField="ProductName" DataValueField="IdProduct" style="z-index: 1; left: 21px; top: 99px; position: absolute; height: 34px; width: 129px" OnSelectedIndexChanged="productDDL_SelectedIndexChanged">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;
            <asp:Button ID="addToListButton" runat="server" OnClick="addToListButton_Click" style="z-index: 1; left: 24px; top: 135px; position: absolute; margin-top: 0px; " Text="Add to List" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="firstuserlistgrid" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" style="z-index: 1; left: 392px; position: absolute; height: 102px; width: 222px; margin-top: 0px; top: 170px;" OnSelectedIndexChanged="listgrid_SelectedIndexChanged" ShowFooter="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceListProducts">
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                
                
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
            <br />
        </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
                <asp:Button ID="clearListButton" runat="server" OnClick="Button1_Click" style="z-index: 1; left: 624px; top: 209px; position: absolute; width: 95px; height: 27px;" Text="Clear List" />

        
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="addListButton" runat="server" style="z-index: 1; left: 624px; top: 171px; position: absolute; height: 26px; width: 95px" Text="Add New List" OnClick="addListButton_Click" />
        <asp:SqlDataSource ID="SqlDataSourceListShow" runat="server" ConflictDetection="CompareAllValues" InsertCommand="INSERT INTO [Grocery] ([ProductName], [Quantity]) VALUES (@ProductName, @Quantity)" OldValuesParameterFormatString="original_{0}" OnSelecting="SqlDataSourceListShow_Selecting" SelectCommand="SELECT * FROM [Grocery]" UpdateCommand="UPDATE [Grocery] SET [ProductName] = @ProductName, [Quantity] = @Quantity WHERE [IdProduct] = @original_IdProduct AND [ProductName] = @original_ProductName AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL))">
            <InsertParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProductName" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="original_IdProduct" Type="Int32" />
                <asp:Parameter Name="original_ProductName" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceLists" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryDBConnectionString %>" DeleteCommand="DELETE FROM [Lists] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Lists] ([ListName], [UserID]) VALUES (@ListName, @UserID)" SelectCommand="SELECT * FROM [Lists]" UpdateCommand="UPDATE [Lists] SET [ListName] = @ListName, [UserID] = @UserID WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ListName" Type="String" />
                    <asp:Parameter Name="UserID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ListName" Type="String" />
                    <asp:Parameter Name="UserID" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryDBConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [IdUsers] = @IdUsers" InsertCommand="INSERT INTO [Users] ([Name], [PhoneNumber], [e-mail]) VALUES (@Name, @PhoneNumber, @column1)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [Name] = @Name, [PhoneNumber] = @PhoneNumber, [e-mail] = @column1 WHERE [IdUsers] = @IdUsers">
                <DeleteParameters>
                    <asp:Parameter Name="IdUsers" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="PhoneNumber" Type="String" />
                    <asp:Parameter Name="column1" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="PhoneNumber" Type="String" />
                    <asp:Parameter Name="column1" Type="String" />
                    <asp:Parameter Name="IdUsers" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceProducts" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryDBConnectionString %>" DeleteCommand="DELETE FROM [Grocery] WHERE [IdProduct] = @IdProduct" InsertCommand="INSERT INTO [Grocery] ([ProductName], [Quantity], [Price]) VALUES (@ProductName, @Quantity, @Price)" SelectCommand="SELECT * FROM [Grocery]" UpdateCommand="UPDATE [Grocery] SET [ProductName] = @ProductName, [Quantity] = @Quantity, [Price] = @Price WHERE [IdProduct] = @IdProduct">
                <DeleteParameters>
                    <asp:Parameter Name="IdProduct" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ProductName" Type="String" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Price" Type="Decimal" />
                    <asp:Parameter Name="IdProduct" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceListProducts" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryDBConnectionString %>" SelectCommand="SELECT Grocery.ProductName FROM ListShow INNER JOIN Grocery ON ListShow.productID = Grocery.IdProduct WHERE (ListShow.listID = @listId)" InsertCommand="INSERT INTO ListShow(listID, productID) VALUES (@listID, @productId)" DeleteCommand="DELETE FROM ListShow
WHERE ListID = @listID">
            <DeleteParameters>
                <asp:ControlParameter ControlID="listnumber" Name="listID" PropertyName="SelectedValue" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="listnumber" Name="listID" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="productDDL" Name="productId" PropertyName="SelectedValue" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="listnumber" DefaultValue="0" Name="listId" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceUserLists" runat="server" ConnectionString="<%$ ConnectionStrings:GroceryDBConnectionString %>" SelectCommand="SELECT ListName, Id FROM Lists WHERE (UserID = @userId)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="usersddl" Name="userId" PropertyName="SelectedValue" DefaultValue="0" />
                </SelectParameters>
            </asp:SqlDataSource>
            <p>
                &nbsp;</p>
        <p>
            <asp:TextBox ID="listNameTB" runat="server" style="z-index: 1; left: 730px; top: 173px; position: absolute; height: 19px; width: 107px" Visible="False"></asp:TextBox>
        </p>
    </form>
</body>
</html>
