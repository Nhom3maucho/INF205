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

    </style>
   


    <div class="jumbotron">
              <asp:Image runat="server" ImageUrl="~/img/logo-vn.png" />
        <h1>TFC FOOD</h1>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Liên Hệ Đặt Hàng &raquo;</a></p>
    </div>
     <div class="footer">FPT EDU</div>
    <div style="width:300px"><script src="https://uhchat.net/code.php?f=247196"></script></div>
</asp:Content>
