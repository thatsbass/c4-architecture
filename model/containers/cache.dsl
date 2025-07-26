# Cache Redis
cache = container "Cache Redis" "Cache des sessions et optimisation" "Redis" {
    # Cache des sessions
    sessionCache = component "Cache Sessions" "Sessions utilisateurs" "Redis Hash"
    
    # Messagerie temps réel
    messageQueue = component "Queue Messages" "Messages temps réel" "Redis Pub/Sub"
    
    # Cache de performance
    performanceCache = component "Cache Performance" "Optimisation des requêtes" "Redis String"
    
    # Cache des données métier
    userCache = component "Cache Utilisateurs" "Cache des profils utilisateurs" "Redis Hash"
    listingCache = component "Cache Annonces" "Cache des annonces actives" "Redis String"
    
    # Rate limiting
    rateLimitCache = component "Cache Rate Limiting" "Limitation du taux de requêtes" "Redis String"
}