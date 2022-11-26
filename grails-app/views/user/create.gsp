<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
<h1 style="text-align: center;margin-top: 50px;margin-bottom: 50px"> Nouveau Utilisateur</h1>
    <div class="container">
        <div class="contact__wrapper shadow-lg mt-n9">

                <div class=" contact-form__wrapper p-5 order-lg-1">
        <g:form resource="${this.user}" method="POST">
            <form>
            <div class="row">
                <div class="col">
                    <label style="font-size: large;">User name</label>
                </div>
                <div class="col">
                    <input type="text" name="username"  style="background: #EFF2F6;color:black;margin-bottom:20px " class="form-control" placeholder="USer name"/>
                </div>
            </div>

            <div class="row ">
                <div class="col">
                    <label style="font-size: large;">Password</label>
                </div>
                <div class="col">
                    <input type="password"  style="background: #EFF2F6;color:black;margin-bottom:20px " class="form-control" name="password" placeholder="*******"/>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <label style="font-size: large;">Roles</label>
                </div>
                <div class="col">
                    <g:select name="role" from="${roles}" id="roles" optionKey="id" style="background: #EFF2F6;color:black;" class="form-control" optionValue="authority"/>
                </div>
            </div>


             <div class="row" >
                 <div class="col">
                     <button type="submit" name="submit" style="margin-top:50px;padding-left: 50%;padding-right: 50%;text-align: center" class="btn btn-primary">Submit</button>
                  </div>
             </div>

              </form>
        </g:form>
                </div>
                <!-- End Contact Form Wrapper -->

        </div>
    </div>
</body>
<asset:javascript src="https://code.iconify.design/iconify-icon/1.0.1/iconify-icon.min.js"/>
</html>
