# Relations entre personnes et systèmes
user -> reservationPlatform "Utilise pour effectuer des réservations" "HTTPS"
admin -> reservationPlatform "Gère son tenant et ses utilisateurs" "HTTPS"
superadmin -> reservationPlatform "Administre tous les tenants" "HTTPS"

# Relations avec systèmes externes
reservationPlatform -> paymentSystem "Traite les paiements" "HTTPS/JSON"
reservationPlatform -> emailSystem "Envoie des notifications email" "HTTPS/JSON"
reservationPlatform -> smsSystem "Envoie des notifications SMS" "HTTPS/JSON"
reservationPlatform -> storageSystem "Stocke et récupère les fichiers" "HTTPS"

# Relations entre conteneurs
user -> webApp "Utilise" "HTTPS"
admin -> webApp "Utilise" "HTTPS"
superadmin -> webApp "Utilise" "HTTPS"
webApp -> apiBackend "Appels API" "JSON/HTTPS"
apiBackend -> database "Lecture/Écriture des données" "SQL/TCP"
apiBackend -> cache "Cache et sessions" "Redis Protocol"

# Relations Frontend
uiComponents -> apiClient "Utilise pour les appels API"
uiComponentsSuperAdmin -> apiClient "Utilise pour les appels API"

authClient -> apiClient "Authentifie les requêtes"
serviceWorker -> apiClient "Cache les réponses"
i18n -> uiComponents "Fournit les traductions"
i18n -> uiComponentsSuperAdmin "Fournit les traductions"
pushNotifications -> serviceWorker "Utilise pour les notifications"
offlineSync -> apiClient "Synchronise les données"

# Relations Backend
apiGateway -> authModule "Vérifie l'authentification"
apiGateway -> userModule "Gestion utilisateurs"
apiGateway -> tenantModule "Gestion multitenancy"
apiGateway -> bookingModule "Gestion réservations"
apiGateway -> chatModule "Gestion chat"
apiGateway -> listingModule "Gestion annonces"
apiGateway -> paymentModule "Gestion paiements"
apiGateway -> feedbackModule "Gestion feedback"
userModule -> userCache "Cache les données utilisateurs"
# Relations avec le cache
authModule -> sessionCache "Stocke les sessions"
chatModule -> messageQueue "Publie les messages temps réel"


# Relations avec la base de données
userModule -> usersTable "CRUD utilisateurs"
tenantModule -> tenantsTable "CRUD tenants"
bookingModule -> bookingsTable "CRUD réservations"
chatModule -> messagesTable "CRUD messages"
paymentModule -> paymentsTable "CRUD paiements"
feedbackModule -> feedbackTable "CRUD feedback"
listingModule -> listingsTable "CRUD annonces"
auditService -> auditTable "Enregistre les logs d'audit"

# Relations avec systèmes externes
paymentModule -> paymentSystem "Traite les paiements"
notificationModule -> emailSystem "Envoie des emails"
notificationModule -> smsSystem "Envoie des SMS"
