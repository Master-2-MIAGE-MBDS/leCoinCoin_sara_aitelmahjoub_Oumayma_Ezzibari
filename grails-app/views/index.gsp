<%--
  Created by IntelliJ IDEA.
  User: oumaima
  Date: 02/12/2022
  Time: 16:55
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Home Page</title>
    <style  type="text/css" media="screen">
    *{
        margin: 0;
        padding: 0;
    }
    body{
        font-family: 'Lato', sans-serif;
    }
    .wrapper{
        width: 1170px;
        margin: auto;
    }
    header{
        background: linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)),url(https://i.postimg.cc/j584FvRh/1.jpg);
        height: 100vh;
        -webkit-background-size: cover;
        background-size: cover;
        background-position: center center;
        position: relative;
    }
    .nav-area{
        float: right;
        list-style: none;
        margin-top: 30px;
    }
    .nav-area li{
        display: inline-block;
    }
    .nav-area li a {
        color: #fff;
        text-decoration: none;
        padding: 5px 20px;
        font-family: poppins;
        font-size: 16px;
        text-transform: uppercase;
    }
    .nav-area li a:hover{
        background: #fff;
        color: #333;
    }
    .logo{
        float: left;
    }
    .logo .img{

    }
    .welcome-text{
        position: absolute;
        width: 600px;
        height: 300px;
        margin: 20% 30%;
        text-align: center;
    }
    .welcome-text h1{
        text-align: center;
        color: #fff;
        text-transform: uppercase;
        font-size: 60px;
    }
    .welcome-text a{
        border: 1px solid #fff;
        padding: 10px 25px;
        text-decoration: none;
        text-transform: uppercase;
        font-size: 14px;
        margin-top: 20px;
        display: inline-block;
        color: #fff;
    }
    .welcome-text a:hover{
        background: #fff;
        color: #333;
    }

    /*resposive*/

    @media (max-width:600px){
        .wrapper {
            width: 100%;
        }
        .logo {
            float: none;
            width: 50%;
            text-align: center;
            margin: auto;
        }

        .nav-area {
            float: none;
            margin-top: 0;
        }
        .nav-area li a {
            padding: 5px;
            font-size: 11px;
        }
        .nav-area {
            text-align: center;
        }
        .welcome-text {
            width: 100%;
            height: auto;
            margin: 30% 0;
        }
        .welcome-text h1 {
            font-size: 30px;
        }
    }

    </style>
</head>

<body>
<header>
    <div class="wrapper">
        <div class="logo">
            <asset:image class="img" src="logo.png" alt="" style="width: 200px;height: 200px; padding: -10px 15px;padding-top: -10px"/>
        </div>

    </div>
    <div class="welcome-text">
        <h1>
            Welcome to le COINCOIN</h1>
        <a href="/login/auth">Sign In</a>
    </div>
</header>

</body>
</html>