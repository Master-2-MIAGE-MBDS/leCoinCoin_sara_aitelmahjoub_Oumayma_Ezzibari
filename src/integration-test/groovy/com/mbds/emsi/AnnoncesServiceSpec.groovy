package com.mbds.emsi

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class AnnoncesServiceSpec extends Specification {

    AnnoncesService annoncesService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Annonces(...).save(flush: true, failOnError: true)
        //new Annonces(...).save(flush: true, failOnError: true)
        //Annonces annonces = new Annonces(...).save(flush: true, failOnError: true)
        //new Annonces(...).save(flush: true, failOnError: true)
        //new Annonces(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //annonces.id
    }

    void "test get"() {
        setupData()

        expect:
        annoncesService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Annonces> annoncesList = annoncesService.list(max: 2, offset: 2)

        then:
        annoncesList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        annoncesService.count() == 5
    }

    void "test delete"() {
        Long annoncesId = setupData()

        expect:
        annoncesService.count() == 5

        when:
        annoncesService.delete(annoncesId)
        sessionFactory.currentSession.flush()

        then:
        annoncesService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Annonces annonces = new Annonces()
        annoncesService.save(annonces)

        then:
        annonces.id != null
    }
}
