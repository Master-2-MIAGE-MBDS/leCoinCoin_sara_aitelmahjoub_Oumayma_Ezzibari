<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'annonces.label', default: 'Annonces')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-annonces" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-annonces" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
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
            <g:form resource="${this.annonces}" method="POST">
                <form>
                    <div class="row">
                        <div class="col">
                            <label style="font-size: large;">Titre</label>
                        </div>
                        <div class="col">
                            <input type="text" name="titre"  style="background: #EFF2F6;color:black;margin-bottom:20px " class="form-control" placeholder="Titre"/>
                        </div>
                    </div>

                    <div class="row ">
                        <div class="col">
                            <label style="font-size: large;">Description</label>
                        </div>
                        <div class="col">
                            <input type="text"  style="background: #EFF2F6;color:black;margin-bottom:20px " class="form-control" name="description" placeholder="description"/>
                        </div>
                        <div class="col">
                            <input type=""  style="background: #EFF2F6;color:black;margin-bottom:20px " class="form-control" name="${user.author}" placeholder="Author"/>
                        </div>
                        <div class="col">
                            <input type="text"  style="background: #EFF2F6;color:black;margin-bottom:20px " class="form-control" name="price" placeholder="price"/>
                        </div>
                        <div class="col">
                            <input type="file"  style="background: #EFF2F6;color:black;margin-bottom:20px " class="form-control" name="illustration" placeholder="Illustration"/>
                        </div>


                    </div>



                    <div class="row" >
                        <div class="col">
                            <g:submitButton name="create" class="save" style="margin-top:50px;padding-left: 50%;padding-right: 50%;text-align: center" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                        </div>
                    </div>

                </form>

            </g:form>
        </div>
    </body>
</html>
