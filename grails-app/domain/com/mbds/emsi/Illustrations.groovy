package com.mbds.emsi

class Illustrations {
    String filename
    static belongsTo=[annonce:Annonces]
    static constraints = {
        filename nullable: false,blank: false
    }
}
