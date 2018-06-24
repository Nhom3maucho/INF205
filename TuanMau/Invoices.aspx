<%@ Page Title="Invoices" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Invoices.aspx.cs" Inherits="TuanMau.Invoices" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .jumbotron{
            background-color:#f63e3e;
            color:white;
            font-family:.VnArial;     
        }
        .footer{
            line-height:90px;
            text-align:center;
            width:100%;
            color: white;
            background-color: green;
            height:90px;
        }
         .logo{
            position:relative;
            float:right;
            bottom:200px;

        }

    </style>
   


    <div class="jumbotron">
              <asp:Image runat="server" ImageUrl="~/img/logo-vn.png" />
        <h1>TFC FOOD</h1>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Liên Hệ Đặt Hàng &raquo;</a></p>
         <div class="logo"><asp:Image runat="server" ImageUrl="~/img/dathang.png" /></div>
    </div>
    <h1 style="text-align:center;color:red">Thông Tin Hóa Đơn</h1>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            DonHang_ID:
            <asp:TextBox ID="DonHang_IDTextBox" runat="server" Text='<%# Bind("DonHang_ID") %>' />
            <br />
            SanPham_ID:
            <asp:TextBox ID="SanPham_IDTextBox" runat="server" Text='<%# Bind("SanPham_ID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            SoLuong:
            <asp:TextBox ID="SoLuongTextBox" runat="server" Text='<%# Bind("SoLuong") %>' />
            <br />
            DonHang_ID:
            <asp:TextBox ID="DonHang_IDTextBox" runat="server" Text='<%# Bind("DonHang_ID") %>' />
            <br />
            SanPham_ID:
            <asp:TextBox ID="SanPham_IDTextBox" runat="server" Text='<%# Bind("SanPham_ID") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:Label ID="IDLabel" runat="server"/>
            <asp:Label ID="SoLuongLabel" runat="server" />
            <asp:Label ID="DonHang_IDLabel" runat="server"/>
            <asp:Label ID="SanPham_IDLabel" runat="server"/>
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit"/>
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"/>
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>



    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ChiTietDonHang] WHERE [ID] = @original_ID AND [SoLuong] = @original_SoLuong AND [DonHang_ID] = @original_DonHang_ID AND [SanPham_ID] = @original_SanPham_ID" InsertCommand="INSERT INTO [ChiTietDonHang] ([SoLuong], [DonHang_ID], [SanPham_ID]) VALUES (@SoLuong, @DonHang_ID, @SanPham_ID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ChiTietDonHang]" UpdateCommand="UPDATE [ChiTietDonHang] SET [SoLuong] = @SoLuong, [DonHang_ID] = @DonHang_ID, [SanPham_ID] = @SanPham_ID WHERE [ID] = @original_ID AND [SoLuong] = @original_SoLuong AND [DonHang_ID] = @original_DonHang_ID AND [SanPham_ID] = @original_SanPham_ID">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_SoLuong" Type="Int32" />
            <asp:Parameter Name="original_DonHang_ID" Type="Int32" />
            <asp:Parameter Name="original_SanPham_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="DonHang_ID" Type="Int32" />
            <asp:Parameter Name="SanPham_ID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SoLuong" Type="Int32" />
            <asp:Parameter Name="DonHang_ID" Type="Int32" />
            <asp:Parameter Name="SanPham_ID" Type="Int32" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_SoLuong" Type="Int32" />
            <asp:Parameter Name="original_DonHang_ID" Type="Int32" />
            <asp:Parameter Name="original_SanPham_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>



    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" GridLines="None" Height="248px" Width="1169px" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
            <asp:BoundField DataField="DonHang_ID" HeaderText="DonHang_ID" SortExpression="DonHang_ID" />
            <asp:BoundField DataField="SanPham_ID" HeaderText="SanPham_ID" SortExpression="SanPham_ID" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>




     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ChiTietDonHang] WHERE [ID] = @original_ID AND [SoLuong] = @original_SoLuong AND [DonHang_ID] = @original_DonHang_ID AND [SanPham_ID] = @original_SanPham_ID" InsertCommand="INSERT INTO [ChiTietDonHang] ([SoLuong], [DonHang_ID], [SanPham_ID]) VALUES (@SoLuong, @DonHang_ID, @SanPham_ID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ID], [SoLuong], [DonHang_ID], [SanPham_ID] FROM [ChiTietDonHang]" UpdateCommand="UPDATE [ChiTietDonHang] SET [SoLuong] = @SoLuong, [DonHang_ID] = @DonHang_ID, [SanPham_ID] = @SanPham_ID WHERE [ID] = @original_ID AND [SoLuong] = @original_SoLuong AND [DonHang_ID] = @original_DonHang_ID AND [SanPham_ID] = @original_SanPham_ID">
         <DeleteParameters>
             <asp:Parameter Name="original_ID" Type="Int32" />
             <asp:Parameter Name="original_SoLuong" Type="Int32" />
             <asp:Parameter Name="original_DonHang_ID" Type="Int32" />
             <asp:Parameter Name="original_SanPham_ID" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="SoLuong" Type="Int32" />
             <asp:Parameter Name="DonHang_ID" Type="Int32" />
             <asp:Parameter Name="SanPham_ID" Type="Int32" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="SoLuong" Type="Int32" />
             <asp:Parameter Name="DonHang_ID" Type="Int32" />
             <asp:Parameter Name="SanPham_ID" Type="Int32" />
             <asp:Parameter Name="original_ID" Type="Int32" />
             <asp:Parameter Name="original_SoLuong" Type="Int32" />
             <asp:Parameter Name="original_DonHang_ID" Type="Int32" />
             <asp:Parameter Name="original_SanPham_ID" Type="Int32" />
         </UpdateParameters>
    </asp:SqlDataSource>

    </br>


     <div class="footer">FPT EDU</div>
        <div style="width:300px"><script src="https://uhchat.net/code.php?f=247196"></script></div>
</asp:Content>

