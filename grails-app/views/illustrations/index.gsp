<!DOCTYPE html>
<html>
<<<<<<< HEAD
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'illustrations.label', default: 'Illustrations')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <asset:link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
        <asset:link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
<asset:link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
        <asset:link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous" />

        <asset:stylesheet rel="stylesheet" src="tableaucss.css"/>
    </head>
    <body>
        <a href="#list-illustrations" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><button class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></button></li>
                <li><button type="button" class="btn btn-info">+<g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></button></li>
            </ul>
        </div>
        <div id="list-illustrations" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
           <f:table  collection="${illustrationsList}" />


            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <h4>Assign Project List</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive" id="proTeamScroll" tabindex="2" style="height: 400px; overflow: hidden; outline: none;">
                                    <table class="table table-striped">
                                            <thead>
                                            <tr>
                                                <th>Cust.</th>
                                                <th>Project</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <g:each in="${illustrationsList}" var="image">
                                                <tr>
                                                    <td >
                                                        <img src="${resource(dir: 'images', file: image.filename)}" alt="Grails"/>
                                                    </td>
                                                    <td >
                                                        <p>${image.filename}</p>
                                                    </td>
                                                </tr>
                                            </g:each>

                                            </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="pagination">
                <g:paginate total="${illustrationsCount ?: 0}" />
            </div>
        </div>
    </body>
=======
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'illustrations.label', default: 'Illustrations')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
    <asset:link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
    <asset:link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <asset:link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <asset:link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css" integrity="sha256-mmgLkCYLUQbXn0B1SRqzHar6dCnv9oZFPEC1g1cwlkk=" crossorigin="anonymous" />

    <asset:stylesheet rel="stylesheet" src="tableaucss.css"/>
</head>
<body>
<a href="#list-illustrations" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><button class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></button></li>
        <li><button type="button" class="btn btn-info">+<g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></button></li>
    </ul>
</div>
<div id="list-illustrations" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}" >
        <div class="message" role="status">
             ${flash.message}

        </div>
    </g:if>

    <div class="container">
        <div class="row">
            <div class="table-responsive" id="proTeamScroll"  >
                <table class="table ">
                    <thead class="headtb">
                    <tr >
                        <th >image</th>
                        <th>nom Illustration</th>
                        <th>Annonce</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${illustrationsList}" var="elem">
                        <tr >
                            <td >
                                <a href="/illustrations/show/${elem.id}">  <img  src="${resource(dir: 'images', file: elem.filename)}" alt="Grails"/></a>
                            </td>
                            <td >
                                <a style="font-size:medium" href="/illustrations/show/${elem.id}">${elem.filename}</a>
                            </td>
                            <td >
                                <a style="font-size:medium" href="/annonces/show/${elem.annonce.id}">${elem.annonce.titre} </a>
                            </td>
                        </tr>
                    </g:each>

                    </tbody>
                </table>
            </div></div>

    </div>
    <div class="pagination">
        <g:paginate total="${illustrationsCount ?: 0}" />
    </div>
</div>
</body>
>>>>>>> 4fb585b (Annonce : -lister les annonces)
</html>