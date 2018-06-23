<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TuanMau._Default" %>

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

    </style>
   


    <div class="jumbotron">
              <asp:Image runat="server" ImageUrl="~/img/logo-vn.png" />
        <h1>TFC FOOD</h1>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Liên Hệ Đặt Hàng &raquo;</a></p>
    </div>


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
