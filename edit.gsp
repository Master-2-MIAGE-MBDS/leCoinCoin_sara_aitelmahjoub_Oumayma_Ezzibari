<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'illustrations.label', default: 'Illustrations')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-illustrations" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-illustrations" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.illustrations}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.illustrations}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
<<<<<<< HEAD
            <g:form resource="${this.illustrations}" method="PUT">
                <g:hiddenField name="version" value="${this.illustrations?.version}" />
                <fieldset class="form">
                    <f:all bean="illustrations"/>
                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
=======

        </div>
    <div class="container">
        <div class="contact__wrapper shadow-lg mt-n9">

            <div class=" contact-form__wrapper p-5 order-lg-1">
                <g:form resource="${this.illustrations}" method="PUT">
                    <g:hiddenField name="version" value="${this.illustrations?.version}" />
                    <fieldset class="form">
                    </fieldset>
                    <form>
                        <div class="row ">
                            <div class="col">
                                <label style="font-size: large;">File name</label>
                            </div>
                            <div class="col">
                                <input type="text"  style="background: #EFF2F6;color:black;margin-bottom:20px " name="filename" value="${this.illustrations.filename}" class="form-control"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label style="font-size: large;">Annonces</label>
                            </div>
                            <div class="col">
                                <g:select name="annonce" from="${this.annonces}" id="annonce" optionKey="id" style="background: #EFF2F6;color:black;" class="form-control" optionValue="authority"/>
                            </div>
                        </div>


                        <div class="row" >
                            <div class="col">
                                <button type="submit" name="submit" style="margin-top:50px;padding-left: 50%;padding-right: 50%;text-align: center" class="btn btn-primary">
                                ${message(code: 'default.button.update.label', default: 'Update')}
                                </button>
                            </div>
                        </div>

                    </form>
                </g:form>
            </div>
            <!-- End Contact Form Wrapper -->

        </div>
    </div>
    </div>



>>>>>>> 4fb585b (Annonce : -lister les annonces)
    </body>
</html>
