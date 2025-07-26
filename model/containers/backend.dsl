# API Backend NestJS
apiBackend = container "API Backend" "API REST gérant la logique métier" "Node.js/NestJS" {
    # Infrastructure
    apiGateway = component "API Gateway" "Point d'entrée et routage" "NestJS Gateway"
    
    # Authentification et sécurité
    authModule = component "Module Authentification" "JWT, sessions, RBAC" "NestJS Module"
    securityModule = component "Module Sécurité" "Logging, audit, validation" "NestJS Module"
    
    # Modules métier
    userModule = component "Module Utilisateurs" "Gestion des profils utilisateurs" "NestJS Module"
    tenantModule = component "Module Multitenancy" "Gestion des tenants et white-label" "NestJS Module"
    bookingModule = component "Module Réservations" "CRUD réservations et disponibilités" "NestJS Module"
    chatModule = component "Module Chat" "Messagerie temps réel" "NestJS Module"
    listingModule = component "Module Annonces" "Gestion des annonces" "NestJS Module"
    paymentModule = component "Module Paiements" "Intégration paiements et facturation" "NestJS Module"
    feedbackModule = component "Module Feedback" "Avis et évaluations" "NestJS Module"
    notificationModule = component "Module Notifications" "Email, SMS, push" "NestJS Module"
    
    # Services transversaux
    validationService = component "Service Validation" "Validation des données métier" "NestJS Service"
    auditService = component "Service Audit" "Traçabilité des actions" "NestJS Service"
}