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
        <li><a class="home" style="  text-decoration: none;" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
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
    <g:form resource="${this.annonces}" method="POST" enctype="multipart/form-data">
        <form class="form">
            <div class="row">
                <div class="col">
                    <label style="font-size: large;">Titre</label>
                </div>
                <div class="col">
                    <input type="text" name="titre"  class="form-control" placeholder="Titre"/>
                </div>
            </div>

            <div class="row ">
                <div class="col">
                    <label style="font-size: large;">Description</label>
                </div>
                <div class="col">
                    <input type="text"   class="form-control" name="description" placeholder="description"/>
                </div>
            </div>
            <div class="row ">
                <div class="col">
                    <label style="font-size: large;">Author</label>
                </div>
                <div class="col">
                    <g:select name="author" from="${usernames}" id="author" optionKey="id" class="form-control"/>
                </div>
            </div>
            <div class="row ">
                <div class="col">
                    <label style="font-size: large;">Prix</label>
                </div>
                <div class="col">
                    <input type="text"  class="form-control" name="price" placeholder="price"/>
                </div>
            </div>
            <div class="row ">
                <div class="col">
                    <label style="font-size: large;">Illustration</label>
                </div>
                <div class="col">
                    <g:uploadForm name="illustration">
                        <input type="file" name="illustrations" controller="illustrations" action="upload" />
                    </g:uploadForm>

            </div>
            <input type="checkbox"   class="form-control" name="active" value="${true}"/>
            <div class="row" >
                <div class="col">
                    <g:submitButton name="create" class="save"  value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </div>
            </div>

        </form>

    </g:form>
</div>
</body>
</html>
