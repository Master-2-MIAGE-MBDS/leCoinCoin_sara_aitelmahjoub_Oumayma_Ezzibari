<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'annonces.label', default: 'Annonces')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <asset:stylesheet src="main.css"/>

        <asset:javascript src="jquery-2.2.0.min.js"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
    </head>
    <body>
        <a href="#list-annonces" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-annonces" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
        </div>
    
    <div class="container" >
            <div class="table-responsive" id="proTeamScroll"  >
                <table class="table ">
                    <thead class="headtb">
                    <tr >
                        <th style="font-size:large">Annonce</th>
                        <th style="font-size:large">Price</th>
                        <th style="font-size:large">Active</th>
                        <th style="font-size:large">Description</th>
                        <th style="font-size:large">Illustrations</th>
                        <th style="font-size:large">Author</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${annoncesList}" var="elem">
                            <tr>
                                <td style="font-size:medium"><a href="/annonces/show/${elem.id}">${elem.titre}</a></td>
                                <td style="font-size:medium">${elem.price}</td>
                                <td style="font-size:medium">${elem.active}</td>
                                <td style="font-size:medium">${elem.description}</td>
                                <td  style="font-size:medium">
                                    <div class="prod-info-main prod-wrap clearfix">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-12 col-xs-12">
                                                <div class="product-image">
                                                    <div class="swiper">
                                                        <!-- Additional required wrapper -->
                                                        <div class="swiper-wrapper">
                                                        <!-- Slides -->
                                                            <g:each in="${elem.getIllustration()}" var = "i">
                                                                <div class="swiper-slide"><g:img dir="images" file="${i.getFilename()}" class="illus"/></div>
                                                            </g:each>

                                                        </div>
                                                        <!-- If we need pagination -->
                                                        <div class="swiper-pagination"></div>

                                                        <!-- If we need navigation buttons -->
                                                        <div class="swiper-button-prev"></div>
                                                        <div class="swiper-button-next"></div>


                                                    </div>
                                                </div>
                                            </div>
                                        </div></div>
                                </td>
                                <td style="font-size:medium"> ${elem.author.username}</td>
                            </tr>
                     </g:each>

                    </tbody>
                </table>
            </div></div> <div class="pagination">
        <g:paginate total="${annoncesCount ?: 0}" />
    </div>

    <script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
    <script>
        const swiper = new Swiper('.swiper', {
            loop: false,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            }
        });

    </script>
    </body>
</html>