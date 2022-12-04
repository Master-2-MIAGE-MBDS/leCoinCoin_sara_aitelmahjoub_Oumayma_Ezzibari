package com.mbds.emsi

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN','ROLE_USER'])
class HomeController {
    def springSecurityService
    @Secured(['ROLE_ADMIN','ROLE_USER'])
    def index() {
        List<Annonces> annonces = Annonces.findAll()
        [annoncesList : annonces]
    }
}
