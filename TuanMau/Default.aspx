<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TuanMau._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    


    <style type="text/css">
        .jumbotron{
            background-color:#f63e3e;
            color:white;
            font-family:VnArial;     
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

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="SqlDataSource2">
        <EditItemTemplate>
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Ten:
            <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
            <br />
            DonGia:
            <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
            <br />
            HinhAnh:
            <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
            <br />
            NgayNhap:
            <asp:TextBox ID="NgayNhapTextBox" runat="server" Text='<%# Bind("NgayNhap") %>' />
            <br />
            LoaiSanPham_ID:
            <asp:TextBox ID="LoaiSanPham_IDTextBox" runat="server" Text='<%# Bind("LoaiSanPham_ID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Ten:
            <asp:TextBox ID="TenTextBox" runat="server" Text='<%# Bind("Ten") %>' />
            <br />
            DonGia:
            <asp:TextBox ID="DonGiaTextBox" runat="server" Text='<%# Bind("DonGia") %>' />
            <br />
            HinhAnh:
            <asp:TextBox ID="HinhAnhTextBox" runat="server" Text='<%# Bind("HinhAnh") %>' />
            <br />
            NgayNhap:
            <asp:TextBox ID="NgayNhapTextBox" runat="server" Text='<%# Bind("NgayNhap") %>' />
            <br />
            LoaiSanPham_ID:
            <asp:TextBox ID="LoaiSanPham_IDTextBox" runat="server" Text='<%# Bind("LoaiSanPham_ID") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
          
            <asp:Label ID="IDLabel" runat="server"  />

        
            <asp:Label ID="TenLabel" runat="server"  />
         
          
            <asp:Label ID="DonGiaLabel" runat="server" />
           
            
            <asp:Label ID="HinhAnhLabel" runat="server"  />
          
           
            <asp:Label ID="NgayNhapLabel" runat="server"  />
            
           
            <asp:Label ID="LoaiSanPham_IDLabel" runat="server"  />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>









    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [ID] = @original_ID AND [Ten] = @original_Ten AND [DonGia] = @original_DonGia AND (([HinhAnh] = @original_HinhAnh) OR ([HinhAnh] IS NULL AND @original_HinhAnh IS NULL)) AND (([NgayNhap] = @original_NgayNhap) OR ([NgayNhap] IS NULL AND @original_NgayNhap IS NULL)) AND [LoaiSanPham_ID] = @original_LoaiSanPham_ID" InsertCommand="INSERT INTO [SanPham] ([Ten], [DonGia], [HinhAnh], [NgayNhap], [LoaiSanPham_ID]) VALUES (@Ten, @DonGia, @HinhAnh, @NgayNhap, @LoaiSanPham_ID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [Ten] = @Ten, [DonGia] = @DonGia, [HinhAnh] = @HinhAnh, [NgayNhap] = @NgayNhap, [LoaiSanPham_ID] = @LoaiSanPham_ID WHERE [ID] = @original_ID AND [Ten] = @original_Ten AND [DonGia] = @original_DonGia AND (([HinhAnh] = @original_HinhAnh) OR ([HinhAnh] IS NULL AND @original_HinhAnh IS NULL)) AND (([NgayNhap] = @original_NgayNhap) OR ([NgayNhap] IS NULL AND @original_NgayNhap IS NULL)) AND [LoaiSanPham_ID] = @original_LoaiSanPham_ID">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Ten" Type="String" />
            <asp:Parameter Name="original_DonGia" Type="Int32" />
            <asp:Parameter Name="original_HinhAnh" Type="String" />
            <asp:Parameter Name="original_NgayNhap" Type="DateTime" />
            <asp:Parameter Name="original_LoaiSanPham_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="DonGia" Type="Int32" />
            <asp:Parameter Name="HinhAnh" Type="String" />
            <asp:Parameter Name="NgayNhap" Type="DateTime" />
            <asp:Parameter Name="LoaiSanPham_ID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="DonGia" Type="Int32" />
            <asp:Parameter Name="HinhAnh" Type="String" />
            <asp:Parameter Name="NgayNhap" Type="DateTime" />
            <asp:Parameter Name="LoaiSanPham_ID" Type="Int32" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Ten" Type="String" />
            <asp:Parameter Name="original_DonGia" Type="Int32" />
            <asp:Parameter Name="original_HinhAnh" Type="String" />
            <asp:Parameter Name="original_NgayNhap" Type="DateTime" />
            <asp:Parameter Name="original_LoaiSanPham_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>









    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="1167px" AllowPaging="True" Height="394px">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="Ten" HeaderText="Ten" SortExpression="Ten" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="DonGia" HeaderText="DonGia" SortExpression="DonGia" />
            <asp:ImageField DataImageUrlField="HinhAnh" HeaderText="HinhAnh" SortExpression="HinhAnh" ControlStyle-Width="50">
<ControlStyle Width="50px"></ControlStyle>
            </asp:ImageField>
            <asp:BoundField DataField="NgayNhap" HeaderText="NgayNhap" SortExpression="NgayNhap" />
            <asp:BoundField DataField="LoaiSanPham_ID" HeaderText="LoaiSanPham_ID" SortExpression="LoaiSanPham_ID" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>





    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Ten], [ID], [DonGia], [HinhAnh], [NgayNhap], [LoaiSanPham_ID] FROM [SanPham]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [SanPham] WHERE [ID] = @original_ID AND [Ten] = @original_Ten AND [DonGia] = @original_DonGia AND (([HinhAnh] = @original_HinhAnh) OR ([HinhAnh] IS NULL AND @original_HinhAnh IS NULL)) AND (([NgayNhap] = @original_NgayNhap) OR ([NgayNhap] IS NULL AND @original_NgayNhap IS NULL)) AND [LoaiSanPham_ID] = @original_LoaiSanPham_ID" InsertCommand="INSERT INTO [SanPham] ([Ten], [DonGia], [HinhAnh], [NgayNhap], [LoaiSanPham_ID]) VALUES (@Ten, @DonGia, @HinhAnh, @NgayNhap, @LoaiSanPham_ID)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [SanPham] SET [Ten] = @Ten, [DonGia] = @DonGia, [HinhAnh] = @HinhAnh, [NgayNhap] = @NgayNhap, [LoaiSanPham_ID] = @LoaiSanPham_ID WHERE [ID] = @original_ID AND [Ten] = @original_Ten AND [DonGia] = @original_DonGia AND (([HinhAnh] = @original_HinhAnh) OR ([HinhAnh] IS NULL AND @original_HinhAnh IS NULL)) AND (([NgayNhap] = @original_NgayNhap) OR ([NgayNhap] IS NULL AND @original_NgayNhap IS NULL)) AND [LoaiSanPham_ID] = @original_LoaiSanPham_ID">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Ten" Type="String" />
            <asp:Parameter Name="original_DonGia" Type="Int32" />
            <asp:Parameter Name="original_HinhAnh" Type="String" />
            <asp:Parameter Name="original_NgayNhap" Type="DateTime" />
            <asp:Parameter Name="original_LoaiSanPham_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="DonGia" Type="Int32" />
            <asp:Parameter Name="HinhAnh" Type="String" />
            <asp:Parameter Name="NgayNhap" Type="DateTime" />
            <asp:Parameter Name="LoaiSanPham_ID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ten" Type="String" />
            <asp:Parameter Name="DonGia" Type="Int32" />
            <asp:Parameter Name="HinhAnh" Type="String" />
            <asp:Parameter Name="NgayNhap" Type="DateTime" />
            <asp:Parameter Name="LoaiSanPham_ID" Type="Int32" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Ten" Type="String" />
            <asp:Parameter Name="original_DonGia" Type="Int32" />
            <asp:Parameter Name="original_HinhAnh" Type="String" />
            <asp:Parameter Name="original_NgayNhap" Type="DateTime" />
            <asp:Parameter Name="original_LoaiSanPham_ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>





    <div class="row">
        <div class="col-md-4">
              <h2>Gà Truyền Thống</h2>
            <asp:Image runat="server" ImageUrl="~/img/ga.jpg" />
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Mua Ngay &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Gà Giòn Cay</h2>
             <asp:Image runat="server" Height="200" Width="90%" ImageUrl="~/img/gion.png" />
            
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Mua Ngay &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
           <h2>Gà Sốt Đậu</h2>
            <asp:Image runat="server" Height="200" Width="90%" ImageUrl="~/img/dau.png" />
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Mua Ngay &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Khoai Tây Chiên</h2>
             <asp:Image runat="server" Height="200" Width="90%" ImageUrl="~/img/khoai.png" />
            
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Mua Ngay &raquo;</a>
            </p>
        </div>   
    </div>
    <div class="footer">FPT EDU</div>
    <div style="width:300px"><script src="https://uhchat.net/code.php?f=247196"></script></div>
</asp:Content>
