package com.mbds.emsi

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
@Secured(['ROLE_ADMIN','ROLE_CLIENT'])
class AnnoncesController {

    AnnoncesService annoncesService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond annoncesService.list(params), model:[annoncesCount: annoncesService.count()]
    }

    def show(Long id) {
        respond annoncesService.get(id)
    }

    def create() {
<<<<<<< HEAD
        respond new Annonces(params)
=======
        def usernamelist=User.list()
        println usernamelist
        respond new Annonces(params),model:[usernames:usernamelist]
>>>>>>> 027f0b2 (fix: login-main-user)
    }

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

    def edit(Long id) {
        respond annoncesService.get(id)
    }

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
