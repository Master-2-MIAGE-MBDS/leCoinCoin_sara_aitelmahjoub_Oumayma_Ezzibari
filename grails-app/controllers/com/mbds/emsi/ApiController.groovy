package com.mbds.emsi

import grails.converters.JSON
import grails.converters.XML

class ApiController {
    static responseFormats = ['json', 'xml']

    def index() {}

    def annonces() {
        if (!params.id)
            return response.status = 400
        // On vérifie que l'id corresponde bien à une instance existante
        def annonceInstance = Annonces.get(params.id)

        if (!annonceInstance)
            return response.status = 404

    }
    def users(){
        if (!params.id)
            return response.status = 400
        // On vérifie que l'id corresponde bien à une instance existante
        def userInstance = User.get(params.id)

        if (!userInstance)
            return response.status = 404

    }
    def illusrtations(){
        if (!params.id)
            return response.status = 400
        // On vérifie que l'id corresponde bien à une instance existante
        def illustrationInstance = Illustrations.get(params.id)

        if (!illustrationInstance)
            return response.status = 404
    }
    def renderThis(String acceptHeader, Object object) {
        switch (acceptHeader) {
            case 'xml':
            case 'text/xml':
            case 'application/xml':
                render object as XML
                break;
            case 'json':
            case 'text/json':
            case 'application/json':
                render object as JSON
                break;
        }
    }
}