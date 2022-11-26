package tp2

import com.mbds.emsi.Annonces
import com.mbds.emsi.Illustrations
import com.mbds.emsi.Role
import com.mbds.emsi.User
import com.mbds.emsi.UserRole

class BootStrap {

    def init = { servletContext ->
        def adminUserInstance = new User(username: "admin",password: "admin").save()
        def adminRole = new Role(authority: "ROLE_ADMIN").save()
         UserRole.create(adminUserInstance, adminRole, true)

        // On boucle sur une liste de 5 prénoms
        ["Alice", "Bob", "Charly", "Denis", "Etienne"].each {
            String username ->
                // On crée les utilisateurs associés
                def userInstance = new User(username: username, password: "password")
                // Pour chaque utilisateur on boucle 5 fois
                (1..5).each {
                    Integer index ->
                        // Pour ajouter 5 annonces par utilisateur
                        def annonceInstance = new Annonces(titre: username + " " + index, description: "Description de l'annonce", price: 10 * index, active: Boolean.TRUE)
                        (1..5).each {
                            // Et enfin 5 illustrations par annonce
                            annonceInstance.addToIllustration(new Illustrations(filename: "grails.svg"))
                        }
                        // On associe l'annonce créée à l'utilisateur
                        userInstance.addToAnnonce(annonceInstance)
                        // Et on sauvegarde l'utilisateur qui va sauvegarder ses annonces qui sauvegarderont leurs illustrations
                        userInstance.save(flush: true, failOnError: true)
                }
        }

    }
    def destroy = {

    }
}
