# Cache Redis
cache = container "Cache Redis" "Cache des sessions et optimisation" "Redis" {
    tag "Cache"
    # Cache des sessions
    sessionCache = component "Cache Sessions" "Sessions utilisateurs" "Redis Hash"

    # Messagerie temps réel
    messageQueue = component "Queue Messages" "Messages temps réel" "Redis Pub/Sub"

    # Cache de performance
    performanceCache = component "Cache Performance" "Optimisation des requêtes" "Redis String"

    # Cache des données métier
    userCache = component "Cache Utilisateurs" "Cache des profils utilisateurs" "Redis Hash"
}
