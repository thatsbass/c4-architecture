# Vue de déploiement
deployment reservationPlatform "Production" "Déploiement" {
    deploymentNode "CDN" "CloudFlare" "Content Delivery Network" {
        deploymentNode "Edge Servers" "CloudFlare Edge" "Serveurs de cache global" {
            containerInstance webApp
        }
    }

    deploymentNode "Load Balancer" "Nginx/HAProxy" "Répartiteur de charge" {
        deploymentNode "LB Instance" "Nginx" "Instance du load balancer" {
            softwareSystemInstance reservationPlatform
        }
    }

    deploymentNode "Application Servers" "Node.js Cluster" "Serveurs d'application" {
        deploymentNode "App Server 1" "Ubuntu Server" "Premier serveur d'application" {
            containerInstance apiBackend
        }
        deploymentNode "App Server 2" "Ubuntu Server" "Second serveur d'application" {
            containerInstance apiBackend
        }
    }

    deploymentNode "Database Cluster" "PostgreSQL HA" "Cluster de base de données haute disponibilité" {
        deploymentNode "Primary DB" "PostgreSQL Primary" "Base de données principale" {
            containerInstance database
        }
        deploymentNode "Replica DB" "PostgreSQL Replica" "Réplique en lecture seule" {
            containerInstance database
        }
    }

    deploymentNode "Cache Cluster" "Redis Cluster" "Cache distribué" {
        deploymentNode "Redis Primary" "Redis Master" "Instance principale Redis" {
            containerInstance cache
        }
        deploymentNode "Redis Replica" "Redis Slave" "Réplique Redis" {
            containerInstance cache
        }
    }

    deploymentNode "Monitoring" "Observabilité" "Surveillance et logs" {
        deploymentNode "Logs Server" "ELK Stack" "Centralisation des logs" {
            containerInstance database "Logs Storage"
        }
        deploymentNode "Metrics Server" "Prometheus/Grafana" "Métriques et monitoring" {
            containerInstance cache "Metrics Cache"
        }
    }

    title "Architecture de Déploiement - Production"
    description "Infrastructure de production avec haute disponibilité et monitoring"
}