# Application Web PWA
webApp = container "Application Web PWA" "Progressive Web App responsive et multilingue" "React/Next.js" {
    # Composants UI
    uiComponents = component "Composants UI" "Interface utilisateur responsive" "React Components"
    uiComponentsSuperAdmin = component "Composants UI Admin" "Panel Super Utilisateur responsive" "React Components"
    serviceWorker = component "Service Worker" "Cache offline et synchronisation" "Service Worker API"
    
    # Authentification
    authClient = component "Client Authentification" "Gestion des sessions côté client" "React Context"
    
    # Communication
    apiClient = component "Client API" "Communication avec le backend" "Axios/Fetch"
    
    # Internationalisation
    i18n = component "Internationalisation" "Support français/anglais" "next-i18next"
    
    # PWA Features
    pushNotifications = component "Push Notifications" "Notifications push" "Service Worker API"
    offlineSync = component "Synchronisation Offline" "Sync des données hors ligne" "IndexedDB"
}