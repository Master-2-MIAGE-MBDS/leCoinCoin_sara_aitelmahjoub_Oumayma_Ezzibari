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
    <asset:stylesheet src="main.css"/>

    <asset:javascript src="jquery-2.2.0.min.js"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

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
        background: black;
        height: 15vh;
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
    .logo img{
        width: 100%;
        padding: 15px 0;
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
    /* The dropdown container */


    /* Dropdown button */
    .dropdown .dropbtn {
        color: #fff;
        text-decoration: none;
        padding: 5px 20px;
        font-family: poppins;
        font-size: 16px;
        text-transform: uppercase;
        margin: 0; /* Important for vertical align on mobile phones */
    }
    .dropdown:hover {
        background: #fff;
        color: #333;
    }
    /* Add a red background color to navbar links on hover */
    .navbar a:hover, .dropdown:hover .dropbtn {
        background-color: rgba(255, 0, 0, 0.04);
    }

    /* Dropdown content (hidden by default) */
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #572b0b;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    /* Links inside the dropdown */
    .dropdown-content a {
        float: none;
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
        text-align: left;
    }

    /* Add a grey background color to dropdown links on hover */
    .dropdown-content a:hover {
        background-color: #ddd;
    }

    /* Show the dropdown menu on hover */
    .dropdown:hover .dropdown-content {
        display: block;
    }

    .card-group{
        margin-top: 20px;
        width: 100%;
        padding: 20px;
        display: flex;
        flex-direction: row;
    }

    </style>
</head>

<body>
<header>
    <div class="wrapper">
        <div class="logo">
            <asset:image src="logo.png" style="width: 200px;height: 200px; padding: -10px -15px;margin-top:  -50px"/>
        </div>
        <ul class="nav-area">
<sec:ifAnyGranted roles="ROLE_USER,ROLE_ADMIN">
            <li><a href="">Home</a></li>
</sec:ifAnyGranted>
<sec:ifAnyGranted roles="ROLE_ADMIN">
            <li class="dropdown"><a class="dropbtn" href="../illustrations/index">User</a>
                <div class="dropdown-content">
                    <a href="../user/create">Add User</a>
                    <a href="../user/index">List Users</a>

                </div></li>
</sec:ifAnyGranted>
<sec:ifAnyGranted roles="ROLE_USER,ROLE_ADMIN">
    <li class="dropdown"><a class="dropbtn" href="../illustrations/index">Illustration</a>
        <div class="dropdown-content">
            <a href="../illustrations/create">Add Illustration</a>
            <a href="../illustrations/index">List Illustration</a>

        </div></li>
    <li class="dropdown"><a class="dropbtn" href="../annonces/index">Annonces</a>
        <div class="dropdown-content">
            <a href="../annonces/create">Add Annonce</a>
            <a href="../annonces/index">List Annonces</a>

        </div></li>
    <sec:ifLoggedIn>
        <li >
       <a <g:link controller='logout'>Logout</a>
            </li>
        </g:link>
    </sec:ifLoggedIn>
</sec:ifAnyGranted>
        </ul>
    </div>

</header>
<sec:ifLoggedIn>
    <sec:ifAnyGranted roles="ROLE_USER, ROLE_ADMIN, ROLE_MODERATOR">

<div class="card-group">
    <div class="card mb-3 " style="max-width: 60%;">

          <div class="row no-gutters">
        <g:each in="${annoncesList}" var="elem">
        <div class="col-md-4">

            <div class="prod-info-main prod-wrap clearfix">

                    <div class="col-md-5 col-sm-12 col-xs-12">
                        <div class="product-image">
                            <div class="swiper">
                                <!-- Additional required wrapper -->
                                <div class="swiper-wrapper" style="height: fit-content">
                                <!-- Slides -->
                                    <g:each in="${elem.getIllustration()}" var = "i">
                                        <div class="swiper-slide"><g:img dir="images" file="${i.getFilename()}" class="card-img" style="object-fit: contain;"/></div>
                                    </g:each>

                                </div>
                                <!-- If we need pagination -->
                                <div class="swiper-pagination"></div>

                                <!-- If we need navigation buttons -->
                                <div class="swiper-button-prev"></div>
                                <div class="swiper-button-next"></div>


                            </div>
                        </div>
                    </div>
                </div>

        </div>
        <div class="col-md-8">
  <div class="card-body">
    <h5 class="card-title"><a href="/annonces/show/${elem.id}">${elem.titre}</a></h5>
    <p class="card-text">${elem.description}</p>
    <p class="card-text"><small class="text-muted">Last updated : ${elem.lastUpdated}</small></p>
  </div>
        </div>

        </g:each>
</div>



</div>
</div>

    </sec:ifAnyGranted>
</sec:ifLoggedIn>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<script>
    const swiper = new Swiper('.swiper', {
        loop: true,
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        }
    });

</script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>