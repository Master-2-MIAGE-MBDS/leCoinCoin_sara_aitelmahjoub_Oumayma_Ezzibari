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
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" rel="stylesheet">
    <g:layoutHead/>
</head>
<body>

<div class="wrapper d-flex align-items-stretch">
    <nav id="sidebar" class="active">
        <div class="custom-menu">
            <button type="button" id="sidebarCollapse" class="btn btn-primary">
                <i class="fa fa-bars"></i>
                <span class="sr-only">Toggle Menu</span>
            </button>
        </div>
        <div class="p-4">
            <h1><a href="index.html" class="logo"><asset:image class="imag" src="logo.png" alt="lecoincoin"/></a></h1>
            <ul class="list-unstyled components mb-5">

                <li>
                    <a href="/annonces/index"><span class="fa fa-user mr-3"></span> Annonces</a>
                </li>
                <li>
                    <a href="/illustrations/index"><span class="fa fa-briefcase mr-3"></span> Illustration</a>
                </li>
                <li>
                    <a href="/user"><span class="fa fa-sticky-note mr-3"></span> User</a>
                </li>

            </ul>



        </div>
    </nav>

    <!-- Page Content  -->
    <div id="content" class="p-4 p-md-5 pt-5">
        <g:layoutBody/>
    </div>

</div>

<asset:javascript  src="js/jquery.min.js"/>
<asset:javascript  src="js/popper.js"/>
<asset:javascript  src="js/bootstrap.min.js"/>
<asset:javascript  src="js/main.js"/>
<asset:javascript src="application.js"/>

</body>
</html>
