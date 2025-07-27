# Cache Redis
cache = container "Cache Redis" "Cache des sessions et optimisation" "Redis" {
    tag "cache"
    # Cache des sessions
    sessionCache = component "Cache Sessions" "Sessions utilisateurs" "Redis Hash"

    # Messagerie temps réel
    messageQueue = component "Queue Messages" "Messages temps réel" "Redis Pub/Sub"

    # Cache des données métier
    userCache = component "Cache Utilisateurs" "Cache des profils utilisateurs" "Redis Hash"

    # Cache de performance
    # performanceCache = component "Cache Performance" "Optimisation des requêtes" "Redis String"

}
