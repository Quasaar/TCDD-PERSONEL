<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>
<html lang="tr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://cdn.metroui.org.ua/v4/css/metro-all.min.css">
    <link rel="stylesheet" href="https://cdn.metroui.org.ua/v4/css/metro.min.css">
    <link rel="stylesheet" href="https://cdn.metroui.org.ua/v4/css/metro-colors.min.css">
    <link rel="stylesheet" href="https://cdn.metroui.org.ua/v4/css/metro-rtl.min.css">
    <link rel="stylesheet" href="https://cdn.metroui.org.ua/v4/css/metro-icons.min.css">
    <link href="./src/bootstrap.css" rel="stylesheet" />
    <link href="./src/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('./bg.jpg');
            justify-content: center;
            flex-direction: row;
            padding-top: 70px;
            background-repeat: round;
            width: 100%;
            height: 100%;
            position: fixed;
        }

        .container {
            margin-top: auto;
            margin-bottom: auto;
            margin: auto;
            text-align: center;
            justify-content: center;
            background-color: white;
            justify-content: center;
            width: 600px;
            height: 400px;
            border: 2px solid;
            border-radius: 5px;
            border-color: #fff;
        }

        #Userinput {
            background-color: white;
        }

        #Passinput {
            font-size: 16px;
            width: 350px;
        }

        #particles-js {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 0;
        }
    </style>
</head>

<body>
    <div id="particles-js"></div>
    <div class="container" id="container">
        <form runat="server" class="form-group">
            <img src="./logo.png" width="100px" height="100px">
            <h3 style="font-family: sans-serif; text-shadow: 2px 0px #a1a1a1; padding-top: 15px;">TCDD TAŞIMACILIK A.Ş Yönetim
            Sistemi</h3>
            <asp:TextBox ID="Userinput" data-role="input" data-prepend="Kullanıcı Adı:" runat="server"></asp:TextBox>
            <br>
            <asp:TextBox ID="Passinput" type="password" runat="server" data-role="input" data-prepend="Şifre"
                data-reveal-button-icon="<span class='mif-lamp mif-2x'></span>" runat="server"></asp:TextBox>
            <br>
            <asp:Button ID="Button1" type="submit" runat="server" style="background-color:#28A745;" CssClass="btn btn-success btn-block" Text="Giriş Yap" OnClick="Button1_Click" />
            <br /><br />
            <asp:Label ID="Alert" runat="server" CssClass="alert alert-danger" Text="Kullanıcı adı veya şifre hatalı" Visible="false"></asp:Label>
            </form>
         </div>
    <script src="https://cdn.metroui.org.ua/v4/js/metro.min.js"></script>
    <script src="/src/particles.min.js"></script>
    <script src="/src/particles.js"></script>
    <script src="./src/bootstrap.min.js"></script>

</body>
<script>
    particlesJS.load('particles-js ', './particles.json', function () {
        console.log('callback - particles.js config loaded');
    });


</script>

</html>
