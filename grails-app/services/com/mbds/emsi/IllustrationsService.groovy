package com.mbds.emsi

import grails.gorm.services.Service

@Service(Illustrations)
interface IllustrationsService {

    Illustrations get(Serializable id)

    List<Illustrations> list(Map args)

    Long count()

    void delete(Serializable id)

    Illustrations save(Illustrations illustrations)

}