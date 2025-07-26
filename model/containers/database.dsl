# Base de données PostgreSQL
database = container "Base de Données" "Stockage des données multi-tenants" "PostgreSQL" {
    tag "Database"
    # Tables principales
    tenantsTable = component "Table Tenants" "Configuration des tenants" "PostgreSQL Table"
    usersTable = component "Table Users" "Données utilisateurs" "PostgreSQL Table"
    bookingsTable = component "Table Bookings" "Réservations" "PostgreSQL Table"
    messagesTable = component "Table Messages" "Messages du chat" "PostgreSQL Table"
    paymentsTable = component "Table Payments" "Transactions" "PostgreSQL Table"
    feedbackTable = component "Table Feedback" "Avis clients" "PostgreSQL Table"
    listingsTable = component "Table Listings" "Annonces" "PostgreSQL Table"

    # Tables système
    auditTable = component "Table Audit" "Logs d'audit" "PostgreSQL Table"
}
