# Vue des composants - Frontend
component webApp "Frontend-Components" {
    include *
    autoLayout
    title "Application Web PWA - Composants"
    description "Architecture des composants de l'application web progressive"
}

# Vue des composants - Backend
component apiBackend "Backend-Components" {
    include *
    autoLayout
    title "API Backend - Modules NestJS"
    description "Architecture modulaire du backend avec les différents services métier"
}

# Vue des composants - Base de données
component database "Database-Components" {
    include *
    autoLayout
    title "Base de Données - Structure"
    description "Organisation des tables et données dans PostgreSQL"
}

# Vue des composants - Cache
component cache "Cache-Components" {
    include *
    autoLayout
    title "Cache Redis - Structure"
    description "Organisation du cache Redis pour les performances et sessions"
}