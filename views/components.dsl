# Vue des composants - Frontend
component webApp "Frontend-Components" {
    include *
    autoLayout
    title "Application Web PWA - Composants"
    description "Architecture des composants de l'application web progressive"
}

# ---------------------------------

# Vue des composants - Backend
component apiBackend "Backend-All-Components" {
    include *
    autoLayout tb
    title "API Backend - Architecture Complète"
    description "Vue détaillée de tous les modules et services du backend NestJS organisés par groupes fonctionnels"
}

# Vue par groupe spécifique - Infrastructure
component apiBackend "Backend-Infrastructure" {
    include "element.tag==Infrastructure"
    include "element.tag==Gateway"
    autoLayout lr
    title "Backend - Couche Infrastructure"
    description "Points d'entrée et gestion du routage des requêtes"
}

# Vue par groupe spécifique - Sécurité
component apiBackend "Backend-Security" {
    include "element.tag==Security"
    include "element.tag==Auth"
    autoLayout tb
    title "Backend - Sécurité & Authentification"
    description "Modules de sécurité, authentification et gestion des permissions"
}

# Vue par groupe spécifique - Métier Principal
component apiBackend "Backend-Core-Business" {
    include "element.tag==Business"
    include "element.tag==Core"
    autoLayout
    title "Backend - Modules Métier Principaux"
    description "Modules centraux : utilisateurs, tenants, réservations et annonces"
}

# Vue par groupe spécifique - Communication
component apiBackend "Backend-Communication" {
    include "element.tag==Communication"
    include "element.tag==RealTime"
    include "element.tag==Notification"
    include "element.tag==Feedback"
    autoLayout
    title "Backend - Communication & Interaction"
    description "Modules de chat, notifications et feedback utilisateur"
}

# Vue par groupe spécifique - Finance
component apiBackend "Backend-Finance" {
    include "element.tag==Finance"
    include "element.tag==Payment"
    autoLayout lr
    title "Backend - Paiements & Finance"
    description "Gestion des paiements et facturation"
}

# Vue par groupe spécifique - Services
component apiBackend "Backend-Services" {
    include "element.tag==Service"
    autoLayout
    title "Backend - Services Transversaux"
    description "Services partagés : validation, audit, cache et logging"
}

# Vue simplifiée - Seulement les modules principaux
component apiBackend "Backend-Simplified" {
    include "element.tag==Gateway"
    include "element.tag==Auth"
    include "element.tag==Core"
    include "element.tag==Payment"
    exclude "element.tag==Service"
    autoLayout
    title "Backend - Vue Simplifiée"
    description "Architecture simplifiée avec les composants essentiels uniquement"
}

# Vue par couches (Layered)
component apiBackend "Backend-Layered" {
    include *
    autoLayout tb
    title "Backend - Architecture en Couches"
    description "Organisation en couches : Infrastructure → Sécurité → Métier → Services"
}
# --------------------------------

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
