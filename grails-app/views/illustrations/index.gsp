<!DOCTYPE html>
<html>
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
        <h1 style="text-align: center;margin-bottom: 40px;color: #545b62"><g:message code="default.list.label" args="[entityName]" /></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>

        <div class="container">
            <div class="contact__wrapper shadow-lg  ">
                <div class=" contact-form__wrapper p-5 order-lg-1">
                            <table >
                                <thead style="border-color: #6c757d;border-style:solid;background-color: #545b62;color: white ">
                                <tr>
                                    <td style="text-align: center ; font-size: large">#</td>
                                    <td style="text-align: center;font-size: large">Image</td>
                                    <td style="text-align: center;font-size: large">File name</td>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${illustrationsList}" var="image">
                                    <tr style="margin-top:5px;">
                                        <td >
                                            <p  style=" text-align: center;font-size: medium"><b>${image.id}</b></p>
                                        </td>
                                        <td >
                                           <div style="text-align: center">
                                             <a href="/illustrations/show/${image.id}"> <img src="${resource(dir: 'images', file: image.filename)}" alt="Grails"/></a>
                                           </div>
                                        </td>
                                        <td >
                                            <p style="text-align: center;font-size: medium"><b>${image.filename}</b></p>
                                        </td>
                                    </tr>
                                </g:each>

                                </tbody>
                            </table>
                </div>
            </div>

             <div class="pagination" style="margin-top: 60px;padding-left: 10%;padding-right: 10%;background-color: #E9EEF6;color:black;text-align: center;margin-left: 20%;margin-right: 20%">
                <g:paginate style="" total="${illustrationsCount ?: 0}" />
            </div>
        </div>

</body>
</html>