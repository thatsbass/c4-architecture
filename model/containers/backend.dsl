# API Backend NestJS avec groupements
apiBackend = container "API Backend" "API REST gérant la logique métier" "Node.js/NestJS" {
    tags "NestJS,Backend"

    # === GROUPE: INFRASTRUCTURE ===
    group "Infrastructure" {
        apiGateway = component "API Gateway" "Point d'entrée et routage" "NestJS Gateway" {
            tags "Infrastructure,Gateway"
        }
    }

    # === GROUPE: SÉCURITÉ & AUTH ===
    group "Sécurité & Authentification" {
        authModule = component "Module Authentification" "JWT, sessions, RBAC" "NestJS Module" {
            tags "Security,Auth"
        }
        securityModule = component "Module Sécurité" "Logging, audit, validation" "NestJS Module" {
            tags "Security,Logging"
        }
    }

    # === GROUPE: MODULES MÉTIER PRINCIPAUX ===
    group "Modules Métier Principaux" {
        userModule = component "Module Utilisateurs" "Gestion des profils utilisateurs" "NestJS Module" {
            tags "Business,User"
        }
        tenantModule = component "Module Multitenancy" "Gestion des tenants et white-label" "NestJS Module" {
            tags "Business,Multitenancy"
        }
        bookingModule = component "Module Réservations" "CRUD réservations et disponibilités" "NestJS Module" {
            tags "Business,Core"
        }
        listingModule = component "Module Annonces" "Gestion des annonces" "NestJS Module" {
            tags "Business,Core"
        }
    }

    # === GROUPE: MODULES COMMUNICATION ===
    group "Communication & Interaction" {
        chatModule = component "Module Chat" "Messagerie temps réel" "NestJS Module" {
            tags "Communication,RealTime"
        }
        notificationModule = component "Module Notifications" "Email, SMS, push" "NestJS Module" {
            tags "Communication,Notification"
        }
        feedbackModule = component "Module Feedback" "Avis et évaluations" "NestJS Module" {
            tags "Communication,Feedback"
        }
    }

    # === GROUPE: MODULES FINANCIERS ===
    group "Paiements & Finance" {
        paymentModule = component "Module Paiements" "Intégration paiements et facturation" "NestJS Module" {
            tags "Finance,Payment"
        }
    }

    # === GROUPE: SERVICES TRANSVERSAUX ===
    group "Services Transversaux" {
        validationService = component "Service Validation" "Validation des données métier" "NestJS Service" {
            tags "Service,Validation"
        }
        auditService = component "Service Audit" "Traçabilité des actions" "NestJS Service" {
            tags "Service,Audit"
        }
        cacheService = component "Service Cache" "Gestion du cache Redis" "NestJS Service" {
            tags "Service,Cache"
        }
        loggerService = component "Service Logger" "Logging centralisé" "NestJS Service" {
            tags "Service,Logging"
        }
    }
}
