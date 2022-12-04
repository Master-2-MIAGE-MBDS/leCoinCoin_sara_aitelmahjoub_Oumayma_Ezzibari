<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
    <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
    <asset:link  href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet"/>
    <asset:link  rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <asset:stylesheet src="style.css"/>
    <asset:link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css"/>
    <asset:link rel="javascript" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"/>

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" rel="stylesheet">
    <g:layoutHead/>
</head>
<body>
<header class="header" id="header">
    <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>


    <sec:ifLoggedIn>

        <g:link controller='logout'>
            <asset:image src="logout-8.png" style="width: 20px;height:20px"/>
        </g:link>

    </sec:ifLoggedIn>
</header>
<div class="l-navbar" id="nav-bar">
    <nav class="nav">
        <div>

            <a href="#" class="nav_logo">

                <asset:image class="nav_logo-name" src="logo.png"/>
            </a>

            <div class="nav_list">
                <a href="/annonces/index" class="nav_link active">
                    <i class='bx bx-grid-alt nav_icon'>
                    </i>
                    <span class="nav_name">Dashboard</span> </a>
                <sec:ifAnyGranted roles="ROLE_ADMIN, ROLE_USER">
                    <a class="nav_link"
                        <g:link controller="annonces" action="index">Consulter les annonces</g:link></a>

                </sec:ifAnyGranted>
        <sec:ifAnyGranted roles="ROLE_ADMIN, ROLE_USER">
            <a class="nav_link"
               <g:link controller="illustrations" action="index">Consulter les illustrations</g:link></a>

        </sec:ifAnyGranted>
                <sec:ifAnyGranted roles="ROLE_ADMIN">
                    <a class="nav_link"
                       <g:link controller="user" action="index">Consulter les Users</g:link></a>

                </sec:ifAnyGranted>
            </div>
        </div>

    </nav>
</div>
<!--Container Main start-->
<div class="height-100 bg-light">
    <g:layoutBody/>
</div>
<!--Container Main end-->

<!-- Page Content  -->


</div>

<asset:javascript  src="js/jquery.min.js"/>
<asset:javascript  src="js/popper.js"/>
<asset:javascript  src="js/bootstrap.min.js"/>
<asset:javascript  src="js/main.js"/>
<asset:javascript src="application.js"/>
</body>
</html>
