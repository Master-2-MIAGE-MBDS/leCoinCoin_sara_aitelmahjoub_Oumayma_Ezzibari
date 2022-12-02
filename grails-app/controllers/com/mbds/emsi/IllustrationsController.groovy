package com.mbds.emsi

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*
@Secured(['ROLE_ADMIN','ROLE_CLIENT'])
class IllustrationsController {

    IllustrationsService illustrationsService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    def upload() {
        def illustration = new Illustrations(params)
        if(!illustration.save()) {
            println "Error Saving! ${illustration.errors.allErrors}"
        }
        redirect view: "index"
    }
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond illustrationsService.list(params), model:[illustrationsCount: illustrationsService.count()]
    }

    def show(Long id) {
        respond illustrationsService.get(id)
    }

    def create() {
        respond new Illustrations(params)
    }

    def save(Illustrations illustrations) {
        if (illustrations == null) {
            notFound()
            return
        }

        try {
            illustrationsService.save(illustrations)
        } catch (ValidationException e) {
            respond illustrations.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'illustrations.label', default: 'Illustrations'), illustrations.id])
                redirect illustrations
            }
            '*' { respond illustrations, [status: CREATED] }
        }
    }

    def edit(Long id) {
        def annonces = Annonces.list()
        respond illustrationsService.get(id), model: [annonces: annonces]
    }

    def update(Illustrations illustrations) {
        def annonces=Annonces.list()
        if (illustrations == null) {
            notFound()
            return
        }

        try {
            illustrationsService.save(illustrations)
        } catch (ValidationException e) {
            respond illustrations.errors, view:'edit'
            return
        }
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'illustrations.label', default: 'Illustrations'), illustrations.id])
                redirect illustrations
            }
            '*'{ respond illustrations, [status: OK] }
            '*'{
                respond illustrations, [status: OK],model: [annonces:annonces] }

        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        illustrationsService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'illustrations.label', default: 'Illustrations'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'illustrations.label', default: 'Illustrations'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
