<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TCDD TAŞIMACILIK A.Ş</title>
     <link rel="stylesheet" href="https://cdn.metroui.org.ua/v4/css/metro-all.min.css">
    <link rel="stylesheet" href="https://cdn.metroui.org.ua/v4/css/metro.min.css">
    <link rel="stylesheet" href="https://cdn.metroui.org.ua/v4/css/metro-colors.min.css">
    <link rel="stylesheet" href="https://cdn.metroui.org.ua/v4/css/metro-rtl.min.css">
    <link rel="stylesheet" href="https://cdn.metroui.org.ua/v4/css/metro-icons.min.css">
    <link href="./src/bootstrap.css" rel="stylesheet" />
    <link href="./src/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Giriş yaptın!</h1>
        <asp:Label ID="Kullanici" runat="server" Text=""></asp:Label>
        <asp:Label ID="Sifre" runat="server" Text=""></asp:Label>

        <asp:Button ID="Button1" runat="server" CssClass="btn btn-outline-danger" Text="Çıkış Yap" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
