package com.mbds.emsi

class Annonces {
    String titre
    String description
    Float price
    Boolean active=Boolean.FALSE
    Date dateCreated
    Date lastUpdated

    static belongsTo = [author:User]
    static hasMany = [illustration :Illustrations]

    static constraints = {
        titre blank: false ,nullable: false,minSize: 5
        description blank: false ,nullable: false
        price scale:2,min: 0F ,nullable: false
        active nullable: false
    }
}
