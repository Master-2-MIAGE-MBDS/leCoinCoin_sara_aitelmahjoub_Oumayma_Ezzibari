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

    <h1 class="text-center" style="color: #545b62;margin-top: 20px;margin-bottom: 50px">Information sur Annonce n° : ${this.annonces.id}</h1>

    <div class="container" style="margin-top: 3%;margin-bottom: 3%">
        <div class="contact__wrapper shadow-lg mt-n9">
            <div class=" contact-form__wrapper p-5 order-lg-1">
                <div class="text-center">
                    <p style="font-size: medium"><b><i >Annonce :</i> </b>${this.annonces.titre}</p>
                    <p style="font-size: medium"><b><i >Description :</i></b>${this.annonces.description}</p>
                    <p style="font-size: medium"><b><i>Price : </i></b> ${this.annonces.price} $</p>
                    <p style="font-size: medium"><b><i>Active : </i></b>${this.annonces.active}</p>
                    <p style="font-size: medium"><b><i>Author :</i> </b>${this.annonces.author.username}</p>

                    <p style="font-size: medium;margin-top: 50px;margin-bottom: 20px"><b><i style="text-decoration: underline;">Illustrations:</i> </b></p>
                    <g:each in="${annonces.illustration}" var="elemimg">
                        <a href="/illustrations/show/${elemimg.id}"> <img  src="${resource(dir: 'images', file: elemimg.filename)}" alt="Grails"/></a>
                    </g:each>



            <g:form resource="${this.annonces}" method="DELETE" style="border:none;margin-left: 40%;margin-top: 5%">
               <button class ="btn btn-primary" style=" ;box-shadow: #b2d1ff 1px 1px ;padding-right: 30px;padding-left: 30px;padding-top: 10px;padding-bottom: 10px;border-radius: 10px;border: none">
                    <g:link style="color:white; font-size: medium" class="edit" action="edit" resource="${this.annonces}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                </button>
                <input class ="btn btn-primary" style="color:white; font-size: medium;box-shadow: #b2d1ff 1px 1px ;padding:10px 20px;margin-left: 20px;border-radius: 10px;border: none" class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
            </g:form>
        </div>
        </div> </div>

    </div>

    </body>
</html>
