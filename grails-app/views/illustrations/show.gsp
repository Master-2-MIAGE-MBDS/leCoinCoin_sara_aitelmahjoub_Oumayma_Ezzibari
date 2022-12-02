<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'illustrations.label', default: 'Illustrations')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>

</head>
<body>
<a href="#show-illustrations" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="show-illustrations" class="content scaffold-show" role="main">
     <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
</div>
    <h1 class="card-title" style="color:#545b62;text-align: center;margin-bottom:60px;"><b>Info Illustration</b></h1>
<div class="container">
    <div class="contact__wrapper shadow-lg  ">
        <div class=" contact-form__wrapper p-5 order-lg-1">

                     <div style="  border:solid #8c8c8c 1px; padding-top: 20px;padding-bottom: 20px">
                            <di class ="row" style="margin-top: 20px">
                                <div class="col" style="text-align: center"> <img style="height: 50%;width: 50%" src="${resource(dir: 'images', file: this.illustrations.filename)}"></div>
                                <div class="col">
                                    <div style="margin-left: 5%" >
                                         <p style="font-size: x-large;margin-top: 10px"><b>File name :</b> ${this.illustrations.filename}</p>
                                         <p style="font-size: x-large;margin-top: 10px"><b>Annonce :</b><a href="/annonces/show/${this.illustrations.annonce.id}"> ${this.illustrations.annonce.titre}</a></p>
                                    </div>
                                </div>
                            </di>

                            <div class="widget-49-meeting-action"  style=" margin-left: 70%">
                                <g:form resource="${this.illustrations}" method="DELETE">
                                    <fieldset>
                                        <button class ="btn btn-primary" style=" ;box-shadow: #b2d1ff 1px 1px ;padding-right: 30px;padding-left: 30px;padding-top: 10px;padding-bottom: 10px;border-radius: 10px;border: none">
                                            <g:link style="color:white; font-size: medium" class="edit" action="edit" resource="${this.illustrations}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                                        </button>
                                        <input class ="btn btn-primary" style="color:white; font-size: medium;box-shadow: #b2d1ff 1px 1px ;padding:10px 20px;margin-left: 20px;border-radius: 10px;border: none" class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                                    </fieldset>
                                </g:form>
                            </div>
            </div>


        </div>
    </div>
</div>
</body>
</html>
