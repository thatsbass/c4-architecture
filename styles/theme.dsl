styles {
    element "Person" {
        color #ffffff
        fontSize 22
        shape Person
        background #08427b
    }

    element "Customer" {
        background #08427b
    }

    element "Admin" {
        background #999999
    }

    element "External System" {
        background #999999
        color #ffffff
    }

    element "Software System" {
        background #1168bd
        color #ffffff
    }

    element "Container" {
        background #438dd5
        color #ffffff
    }

    element "Component" {
        background #85bbf0
        color #000000
    }

    element "Database" {
        shape Cylinder
        background #438dd5
    }

    element "Cache" {
        background #ff6b6b
        color #ffffff
    }

    relationship "Relationship" {
        dashed false
    }

    relationship "External" {
        dashed true
        color #999999
    }
}
