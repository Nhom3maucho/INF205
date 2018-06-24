<%@ Page Title="Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="TuanMau.Customer" %>

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
    <h1 style="color:red">Thông Tin Khách Hàng</h1>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            HoTen:
            <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            DiaChi:
            <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            SoDienThoai:
            <asp:TextBox ID="SoDienThoaiTextBox" runat="server" Text='<%# Bind("SoDienThoai") %>' />
            <br />
            NgaySinh:
            <asp:TextBox ID="NgaySinhTextBox" runat="server" Text='<%# Bind("NgaySinh") %>' />
            <br />
            GioiTinh:
            <asp:CheckBox ID="GioiTinhCheckBox" runat="server" Checked='<%# Bind("GioiTinh") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            HoTen:
            <asp:TextBox ID="HoTenTextBox" runat="server" Text='<%# Bind("HoTen") %>' />
            <br />
            DiaChi:
            <asp:TextBox ID="DiaChiTextBox" runat="server" Text='<%# Bind("DiaChi") %>' />
            <br />
            SoDienThoai:
            <asp:TextBox ID="SoDienThoaiTextBox" runat="server" Text='<%# Bind("SoDienThoai") %>' />
            <br />
            NgaySinh:
            <asp:TextBox ID="NgaySinhTextBox" runat="server" Text='<%# Bind("NgaySinh") %>' />
            <br />
            GioiTinh:
            <asp:CheckBox ID="GioiTinhCheckBox" runat="server" Checked='<%# Bind("GioiTinh") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            
            <asp:Label ID="IDLabel" runat="server"/>
            <asp:Label ID="HoTenLabel" runat="server"/>
            <asp:Label ID="DiaChiLabel" runat="server"/>
            <asp:Label ID="SoDienThoaiLabel" runat="server" />                
            <asp:Label ID="NgaySinhLabel" runat="server" />                 
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete"/>
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>



    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [ID] = @original_ID AND [HoTen] = @original_HoTen AND (([DiaChi] = @original_DiaChi) OR ([DiaChi] IS NULL AND @original_DiaChi IS NULL)) AND (([SoDienThoai] = @original_SoDienThoai) OR ([SoDienThoai] IS NULL AND @original_SoDienThoai IS NULL)) AND (([NgaySinh] = @original_NgaySinh) OR ([NgaySinh] IS NULL AND @original_NgaySinh IS NULL)) AND (([GioiTinh] = @original_GioiTinh) OR ([GioiTinh] IS NULL AND @original_GioiTinh IS NULL))" InsertCommand="INSERT INTO [KhachHang] ([HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [GioiTinh]) VALUES (@HoTen, @DiaChi, @SoDienThoai, @NgaySinh, @GioiTinh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [HoTen] = @HoTen, [DiaChi] = @DiaChi, [SoDienThoai] = @SoDienThoai, [NgaySinh] = @NgaySinh, [GioiTinh] = @GioiTinh WHERE [ID] = @original_ID AND [HoTen] = @original_HoTen AND (([DiaChi] = @original_DiaChi) OR ([DiaChi] IS NULL AND @original_DiaChi IS NULL)) AND (([SoDienThoai] = @original_SoDienThoai) OR ([SoDienThoai] IS NULL AND @original_SoDienThoai IS NULL)) AND (([NgaySinh] = @original_NgaySinh) OR ([NgaySinh] IS NULL AND @original_NgaySinh IS NULL)) AND (([GioiTinh] = @original_GioiTinh) OR ([GioiTinh] IS NULL AND @original_GioiTinh IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_HoTen" Type="String" />
            <asp:Parameter Name="original_DiaChi" Type="String" />
            <asp:Parameter Name="original_SoDienThoai" Type="String" />
            <asp:Parameter Name="original_NgaySinh" Type="DateTime" />
            <asp:Parameter Name="original_GioiTinh" Type="Boolean" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="SoDienThoai" Type="String" />
            <asp:Parameter Name="NgaySinh" Type="DateTime" />
            <asp:Parameter Name="GioiTinh" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HoTen" Type="String" />
            <asp:Parameter Name="DiaChi" Type="String" />
            <asp:Parameter Name="SoDienThoai" Type="String" />
            <asp:Parameter Name="NgaySinh" Type="DateTime" />
            <asp:Parameter Name="GioiTinh" Type="Boolean" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_HoTen" Type="String" />
            <asp:Parameter Name="original_DiaChi" Type="String" />
            <asp:Parameter Name="original_SoDienThoai" Type="String" />
            <asp:Parameter Name="original_NgaySinh" Type="DateTime" />
            <asp:Parameter Name="original_GioiTinh" Type="Boolean" />
        </UpdateParameters>
    </asp:SqlDataSource>



    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="348px" Width="1167px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="HoTen" HeaderText="HoTen" SortExpression="HoTen" />
            <asp:BoundField DataField="DiaChi" HeaderText="DiaChi" SortExpression="DiaChi" />
            <asp:BoundField DataField="SoDienThoai" HeaderText="SoDienThoai" SortExpression="SoDienThoai" />
            <asp:BoundField DataField="NgaySinh" HeaderText="NgaySinh" SortExpression="NgaySinh" />
            <asp:CheckBoxField DataField="GioiTinh" HeaderText="GioiTinh" SortExpression="GioiTinh" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>


     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [ID] = @original_ID AND [HoTen] = @original_HoTen AND (([DiaChi] = @original_DiaChi) OR ([DiaChi] IS NULL AND @original_DiaChi IS NULL)) AND (([SoDienThoai] = @original_SoDienThoai) OR ([SoDienThoai] IS NULL AND @original_SoDienThoai IS NULL)) AND (([NgaySinh] = @original_NgaySinh) OR ([NgaySinh] IS NULL AND @original_NgaySinh IS NULL)) AND (([GioiTinh] = @original_GioiTinh) OR ([GioiTinh] IS NULL AND @original_GioiTinh IS NULL))" InsertCommand="INSERT INTO [KhachHang] ([HoTen], [DiaChi], [SoDienThoai], [NgaySinh], [GioiTinh]) VALUES (@HoTen, @DiaChi, @SoDienThoai, @NgaySinh, @GioiTinh)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [HoTen] = @HoTen, [DiaChi] = @DiaChi, [SoDienThoai] = @SoDienThoai, [NgaySinh] = @NgaySinh, [GioiTinh] = @GioiTinh WHERE [ID] = @original_ID AND [HoTen] = @original_HoTen AND (([DiaChi] = @original_DiaChi) OR ([DiaChi] IS NULL AND @original_DiaChi IS NULL)) AND (([SoDienThoai] = @original_SoDienThoai) OR ([SoDienThoai] IS NULL AND @original_SoDienThoai IS NULL)) AND (([NgaySinh] = @original_NgaySinh) OR ([NgaySinh] IS NULL AND @original_NgaySinh IS NULL)) AND (([GioiTinh] = @original_GioiTinh) OR ([GioiTinh] IS NULL AND @original_GioiTinh IS NULL))">
         <DeleteParameters>
             <asp:Parameter Name="original_ID" Type="Int32" />
             <asp:Parameter Name="original_HoTen" Type="String" />
             <asp:Parameter Name="original_DiaChi" Type="String" />
             <asp:Parameter Name="original_SoDienThoai" Type="String" />
             <asp:Parameter Name="original_NgaySinh" Type="DateTime" />
             <asp:Parameter Name="original_GioiTinh" Type="Boolean" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="HoTen" Type="String" />
             <asp:Parameter Name="DiaChi" Type="String" />
             <asp:Parameter Name="SoDienThoai" Type="String" />
             <asp:Parameter Name="NgaySinh" Type="DateTime" />
             <asp:Parameter Name="GioiTinh" Type="Boolean" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="HoTen" Type="String" />
             <asp:Parameter Name="DiaChi" Type="String" />
             <asp:Parameter Name="SoDienThoai" Type="String" />
             <asp:Parameter Name="NgaySinh" Type="DateTime" />
             <asp:Parameter Name="GioiTinh" Type="Boolean" />
             <asp:Parameter Name="original_ID" Type="Int32" />
             <asp:Parameter Name="original_HoTen" Type="String" />
             <asp:Parameter Name="original_DiaChi" Type="String" />
             <asp:Parameter Name="original_SoDienThoai" Type="String" />
             <asp:Parameter Name="original_NgaySinh" Type="DateTime" />
             <asp:Parameter Name="original_GioiTinh" Type="Boolean" />
         </UpdateParameters>
    </asp:SqlDataSource>

    <br />
     <div class="footer">FPT EDU</div>
    <div style="width:300px"><script src="https://uhchat.net/code.php?f=247196"></script></div>
</asp:Content>
