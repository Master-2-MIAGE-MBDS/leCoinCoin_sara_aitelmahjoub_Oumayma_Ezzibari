<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-user" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>



        </div>
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">

                <div class="table-responsive">
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th>
                                User
                            </th>
                            <th>
                               Password
                            </th>
                            <th>
                                Password Expired
                            </th>
                            <th>
                               Account
                            </th>
                            <th>
                                Annonce
                            </th>
                            <th>
                                Account Expired
                            </th>
                            <th>
                            Enabled
                        </th>
                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${users}" var="user">
                            <tr>
                                <td>
                                    <p>${user.username}</p>
                                </td>
                                <td>
                                    <p>${user.password}</p>
                                </td>
                                <td>
                                    <p>${user.passwordExpired}</p>
                                </td>
                                <td>
                                    <p>${user.annonce}</p>
                                </td>
                                <td>
                                   <p>${user.enabled}</p>
                                 </td>
                                <td>
                                    <p>${user.accountLocked}</p>
                                </td>
                            </tr>
                        </g:each>



                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    </body>
</html>