<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'annonces.label', default: 'Annonces')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-annonces" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
    <h1 style="text-align: center;color: #545b62">Editer Annonce n° ${annonces.id}</h1>
    <div class="container" style="margin-top: 3%;margin-bottom: 3%">
        <div class="contact__wrapper shadow-lg ">
            <div class=" contact-form__wrapper p-5 order-lg-1">
                <div id="edit-annonces" class="content scaffold-edit" role="main">

                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>

                    <g:hasErrors bean="${this.annonces}">
                        <ul class="errors" role="alert">
                            <g:eachError bean="${this.annonces}" var="error">
                                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                            </g:eachError>
                        </ul>
                    </g:hasErrors>

                    <g:form resource="${this.annonces}" method="PUT">
                        <form>
                            <table >

                                      <tr >
                                          <td style="text-align: center">
                                              <p style="font-size: medium">Titre <b style="color: red">*</b> : </p>
                                          </td>
                                          <td style="text-align: center">
                                            <input style="padding-left:20px;font-size: medium;background: #EFF2F6;color:black;border-radius: 5px;" type="text" id="titre" name="titre" value="${this.annonces.titre}"/>
                                          </td>
                                    </tr>

                                    <tr>
                                        <td style="text-align: center">
                                            <p style="font-size: medium">Description <b style="color: red">*</b> : </p>
                                        </td>
                                        <td style="text-align: center">
                                            <input style="padding-left:20px;font-size: medium;background: #EFF2F6;color:black;border-radius: 5px;" type="text" id="description" name="description" value="${this.annonces.description}"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center">
                                            <p style="font-size: medium">Price <b style="color: red">*</b> : </p>
                                        </td>
                                        <td style="text-align: center">
                                            <input style="font-size: medium;background: #EFF2F6;text-align:center;border-radius: 5px;" type="currency"  id="price" name="price" value="${this.annonces.price}"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td style="text-align: center">
                                            <p  >Active <b style="color: red">*</b> :
                                                <input  style="padding-left:50px;font-size: medium;background: #EFF2F6;color:black;" type="checkbox" name="active" id="active" checked="${this.annonces.active}"/></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: center">
                                            Illustrations <b style="color: red">*</b>:
                                        </td>
                                        <td style="text-align: center">  <g:each in="${annonces.illustration}" var="elemimg">
                                                <a href="/illustrations/show/${elemimg.id}"> <img  src="${resource(dir: 'images', file: elemimg.filename)}" style="width:200px;height: 200px" alt="Grails"/></a>
                                            </g:each>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td style="text-align: center">
                                            <a href="/illustrations/create">+ illustration</a>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td style="text-align: center">
                                            <p>Author <b style="color: red">*</b>: </p>
                                        </td>
                                        <td>
                                            <g:select name="username" from="${annonces}" id="username" optionKey="id" style=" font-size: medium;background: #EFF2F6;color:black;" class="form-control" />
                                        </td>
                                    </tr>


                                    <g:hiddenField name="version" value="${this.annonces?.version}" />
                                    <fieldset class="buttons" style="text-align: center">
                                        <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                                    </fieldset>
                        </table>
                        </form>


                    </g:form>

                </div>
            </div>
        </div>
    </div>
    </body>
</html>
