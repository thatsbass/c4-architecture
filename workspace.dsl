workspace "Plateforme de Cynoia Space" "Architecture d'une plateforme dédiée aux espaces de coworking, incubateurs et hubs" {

    model {
        !include model/people.dsl
        !include model/external-systems.dsl
        
        # Système principal
        reservationPlatform = softwareSystem "Plateforme de Cynoia" "Système d'une plateforme multi-tenant avec chat, paiements et feedback" {
            
            !include model/containers/frontend.dsl
            !include model/containers/backend.dsl
            !include model/containers/database.dsl
            !include model/containers/cache.dsl
        }
        # Relation 
        !include model/relationships.dsl
    }

    views {
        !include views/system-context.dsl
        !include views/containers.dsl
        !include views/components.dsl
        // !include views/deployment.dsl
        # Styles
        !include styles/theme.dsl
    }

    configuration {
        scope softwaresystem
    }
}