package com.mbds.emsi

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
@Secured(['ROLE_ADMIN','ROLE_USER'])
class AnnoncesController {

    AnnoncesService annoncesService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    @Secured(['ROLE_ADMIN','ROLE_USER'])
    def index(Integer max) {


        params.max = Math.min(max ?: 10, 100)
        respond annoncesService.list(params), model:[annoncesCount: annoncesService.count()]
    }
    @Secured(['ROLE_ADMIN','ROLE_USER'])
    def show(Long id) {
        respond annoncesService.get(id)
    }


    def create() {



        def usernamelist = User.list()
        println usernamelist


        respond new Annonces(params), model: [usernames: usernamelist]

    }
    @Secured(['ROLE_ADMIN','ROLE_USER'])
    def save(Annonces annonces) {
        if (annonces == null) {
            notFound()
            return
        }

        try {
            annoncesService.save(annonces)
        } catch (ValidationException e) {
            respond annonces.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'annonces.label', default: 'Annonces'), annonces.id])
                redirect annonces
            }
            '*' { respond annonces, [status: CREATED] }
        }
    }

    @Secured(['ROLE_ADMIN','ROLE_USER'])
    def edit(Long id) {
        respond annoncesService.get(id)
    }
    @Secured(['ROLE_ADMIN','ROLE_USER'])
    def update(Annonces annonces) {
        if (annonces == null) {
            notFound()
            return
        }

        try {
            annoncesService.save(annonces)
        } catch (ValidationException e) {
            respond annonces.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'annonces.label', default: 'Annonces'), annonces.id])
                redirect annonces
            }
            '*'{ respond annonces, [status: OK] }
        }
    }
    @Secured(['ROLE_ADMIN'])

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        annoncesService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'annonces.label', default: 'Annonces'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'annonces.label', default: 'Annonces'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
