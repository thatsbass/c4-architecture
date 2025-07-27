styles {
    # === COULEURS DE BASE DE L'ARCHITECTURE ===
    # Orange principal: #D97757 (Claude Orange)
    # Orange foncé: #CC704C
    # Corail: #E85A4F
    # Beige chaud: #F4E4D6
    # Gris neutre: #6B7280
    # Gris foncé: #374151
    # Blanc cassé: #FAFAFA

    element "Person" {
        color #ffffff
        fontSize 22
        shape Person
        background #CC704C
        stroke #D97757
        strokeWidth 2
    }

    element "Software System" {
        background #D97757
        color #ffffff
        stroke #CC704C
        strokeWidth 2
    }

    element "Container" {
        background #E85A4F
        color #ffffff
        stroke #CC704C
        strokeWidth 2
    }

    element "Component" {
        background #F4E4D6
        color #374151
        fontSize 14
        stroke #D97757
        strokeWidth 1
    }

    # === STYLES PAR GROUPES AVEC PALETTE CLAUDE ===

    # Infrastructure - Gris sophistiqué
    element "Infrastructure" {
        background #6B7280
        color #ffffff
        shape Component
        stroke #374151
        strokeWidth 2
    }

    element "Gateway" {
        background #374151
        color #ffffff
        shape WebBrowser
        stroke #6B7280
        strokeWidth 2
    }

    # Sécurité - Rouge corail intense
    element "Security" {
        background #E85A4F
        color #ffffff
        shape Component
        stroke #CC704C
        strokeWidth 2
    }

    element "Auth" {
        background #CC704C
        color #ffffff
        shape Component
        stroke #E85A4F
        strokeWidth 2
    }

    # Modules métier - Orange Claude principal
    element "Business" {
        background #D97757
        color #ffffff
        shape Component
        stroke #CC704C
        strokeWidth 2
    }

    element "Core" {
        background #CC704C
        color #ffffff
        shape Component
        fontSize 15
        metadata true
        stroke #D97757
        strokeWidth 3
    }

    # Communication - Tons oranges plus doux
    element "Communication" {
        background #F4A261
        color #374151
        shape Component
        stroke #E76F51
        strokeWidth 2
    }

    element "RealTime" {
        background #E76F51
        color #ffffff
        shape Component
        stroke #F4A261
        strokeWidth 2
    }

    # Finance - Or chaud
    element "Finance" {
        background #F2A65A
        color #374151
        shape Component
        stroke #E09132
        strokeWidth 2
    }

    element "Payment" {
        background #E09132
        color #ffffff
        shape Component
        stroke #F2A65A
        strokeWidth 2
    }

    # Services transversaux - Beige sophistiqué
    element "Service" {
        background #D4B5A0
        color #374151
        shape Component
        stroke #B89080
        strokeWidth 2
    }

    # === TECHNOLOGIES AVEC PALETTE CLAUDE ===

    element "NestJS" {
        background #D97757
        color #ffffff
        shape WebBrowser
        stroke #CC704C
        strokeWidth 2

    }

    element "React" {
        background #F4A261
        color #374151
        shape WebBrowser
        stroke #E76F51
        strokeWidth 2

    }

    element "PostgreSQL" {
        background #6B7280
        color #ffffff
        shape Cylinder
        stroke #374151
        strokeWidth 2

    }

    element "Redis" {
        background #E85A4F
        color #ffffff
        shape Component
        stroke #CC704C
        strokeWidth 2

    }

    element "External System" {
        background #B89080
        color #ffffff
        stroke #8B6F56
        strokeWidth 2
        opacity 80
    }

    # === STYLES POUR GROUPES AVEC FONDS CLAUDE ===

    # Infrastructure - Fond gris subtil
    element "group:Infrastructure" {
        background #F9FAFB
        stroke #6B7280
        strokeWidth 3
        opacity 15
    }

    # Sécurité - Fond corail très léger
    element "group:Sécurité & Authentification" {
        background #FEF2F2
        stroke #E85A4F
        strokeWidth 3
        opacity 20
    }

    # Métier - Fond orange Claude très doux
    element "group:Modules Métier Principaux" {
        background #FFF8F1
        stroke #D97757
        strokeWidth 3
        opacity 25
    }

    # Communication - Fond pêche
    element "group:Communication & Interaction" {
        background #FFF4ED
        stroke #F4A261
        strokeWidth 3
        opacity 20
    }

    # Finance - Fond or pâle
    element "group:Paiements & Finance" {
        background #FFFBF5
        stroke #F2A65A
        strokeWidth 3
        opacity 20
    }

    # Services - Fond beige Claude
    element "group:Services Transversaux" {
        background #FDFCFB
        stroke #D4B5A0
        strokeWidth 3
        opacity 15
    }

    # === RELATIONS AVEC STYLE CLAUDE ===

    relationship "Relationship" {
        thickness 2
        dashed false
        color #CC704C
    }

    relationship "External" {
        dashed true
        color #B89080
        thickness 1
    }

    relationship "Internal" {
        color #D97757
        thickness 2
    }

    relationship "Critical" {
        color #E85A4F
        thickness 3
    }

    # === STYLES SPÉCIAUX ===

    # Composants critiques
 element "Critical" {
        background #E85A4F
        color #ffffff
        stroke #CC704C
        strokeWidth 3
        fontSize 16
    }

    # Composants en développement
    element "InDevelopment" {
        background #F4E4D6
        color #6B7280
        stroke #D97757
        strokeWidth 2
        opacity 70
    }

    # Composants legacy
    element "Legacy" {
        background #E5E7EB
        color #6B7280
        stroke #9CA3AF
        strokeWidth 1
        opacity 60
    }

    # Nouveaux composants
    element "New" {
        background #D97757
        color #ffffff
        stroke #F4A261
        strokeWidth 3
        fontSize 16
    }
}

# Thème par défaut avec ajustements Claude
themes default
