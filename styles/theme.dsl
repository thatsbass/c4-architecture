styles {
    element "Person" {
        shape Person
        color #ffffff
        background #0A192F     
        fontSize 22
        border color #64ffda
    }

    element "Customer" {
        background #112240
        color #ffffff
        border color #64ffda
    }

    element "Admin" {
        background #243b53
        color #ffffff
        border color #ffcb6b
    }

    element "External System" {
        background #3e4c59
        color #ffffff
        border color #999999
    }

    element "Software System" {
        background #1d3557
        color #ffffff
        border color #457b9d
    }

    element "Container" {
        background #457b9d
        color #ffffff
        border color #a8dadc
    }

    element "Component" {
        background #a8dadc
        color #1d3557
        border color #f1faee
    }

    element "Database" {
        shape Cylinder
        background #e63946
        color #ffffff
        border color #f1faee
    }

    element "Cache" {
        background #ff6b6b
        color #ffffff
        border color #ffe66d
    }

    relationship "Relationship" {
        dashed false
        thickness 2
        color #adb5bd
        fontSize 16
    }

    relationship "External" {
        dashed true
        color #868e96
        fontSize 14
    }

    element "*" {
        fontSize 18
        color #f8f9fa
        border color #dee2e6
    }
}

themes default
