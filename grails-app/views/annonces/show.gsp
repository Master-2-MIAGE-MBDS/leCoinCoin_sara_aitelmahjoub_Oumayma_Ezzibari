<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'annonces.label', default: 'Annonces')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-annonces" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-annonces" class="content scaffold-show" role="main">
             <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>

        </div>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>


    <div class="container" style="margin-top: 3%;margin-bottom: 3%">
        <div class="contact__wrapper shadow-lg mt-n9">
            <div class=" contact-form__wrapper p-5 order-lg-1">
                <div class="text-center">
                    <h1>Information sur Annonce : ${this.annonces.id}</h1>
                    <p><b><i>Annonce :</i> </b>${this.annonces.titre}</p>
                    <p><b><i>Description :</i></b>${this.annonces.description}</p>
                    <p><b><i>Price : </i></b> ${this.annonces.price} $</p>
                    <p><b><i>Active : </i></b>${this.annonces.active}</p>
                    <p><b><i>Author :</i> </b>{this.annonces.author.username}</p>

                    <p><b><i style="text-decoration: underline;">Illustrations:</i> </b></p>
                    <g:each in="${annonces.illustration}" var="elemimg">
                        <a href="/illustrations/show/${elemimg.id}"> <img  src="${resource(dir: 'images', file: elemimg.filename)}" alt="Grails"/></a>
                    </g:each>
                </div>

            </div>
        </div>
    </div>
    <g:form resource="${this.annonces}" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${this.annonces}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
    </body>
</html>
