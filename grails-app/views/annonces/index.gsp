<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'annonces.label', default: 'Annonces')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<a href="#list-annonces" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="list-annonces" class="content scaffold-list" role="main">
    <h1 style="text-align: center;color: #545b62;margin-bottom: 5%"><g:message code="default.list.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
</div>

<div class="contact__wrapper shadow-lg  ">
    <div class=" contact-form__wrapper p-5 order-lg-1">
        <table >
            <thead style="border-color: #6c757d;border-style:solid;background-color: #545b62;color: white ">
            <tr >
                <td style="font-size:large">Annonce</td>
                <td style="font-size:large">Price</td>
                <td style="font-size:large">Active</td>
                <td style="font-size:large">Description</td>
                <td style="font-size:large">Illustrations</td>
                <td style="font-size:large">Author</td>
            </tr>
            </thead>
            <tbody>
            <g:each in="${annoncesList}" var="elem">
                <tr>
                    <td style="font-size:medium"><a href="/annonces/show/${elem.id}">${elem.titre}</a></td>
                    <td style="font-size:medium">${elem.price}</td>
                    <td style="font-size:medium">${elem.active}</td>
                    <td style="font-size:medium">${elem.description}</td>
                    <td >
                        <g:each in="${elem.illustration}" var="elemimg">
                            <a href="/illustrations/show/${elemimg.id}"> <img  src="${resource(dir: 'images', file: elemimg.filename)}" alt="Grails"/></a>
                        </g:each>
                    </td>
                    <td style="font-size:medium"> ${elem.author.username}</td>
                </tr>
            </g:each>

            </tbody>
        </table>
    </div>
</div>
<div class="pagination" style="margin-top: 60px;padding-left: 5%;background-color:#e2e3e5;color:black;text-align: center;margin-left: 40%;margin-right: 40%">
    <g:paginate total="${annoncesCount ?: 0}" />
</div>
</body>
</html>