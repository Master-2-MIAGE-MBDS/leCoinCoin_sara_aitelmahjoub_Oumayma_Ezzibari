package com.mbds.emsi

import grails.gorm.services.Service

@Service(Annonces)
interface AnnoncesService {

    Annonces get(Serializable id)

    List<Annonces> list(Map args)

    Long count()

    void delete(Serializable id)

    Annonces save(Annonces annonces)

}