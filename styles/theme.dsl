 styles {
            element "Person" {
                color #000000
                fontSize 22
                shape Person
                background #D1D1D1
            }

            element "External System" {
                background #EBD6FB
                color #000000
                shape roundedbox
            }

            element "Software System" {
                background #687FE5
                color #ffffff
                shape roundedbox
            }

            element "Container" {
                background #687FE5
                color #ffffff
                shape roundedbox
            }

            element "Component" {
                background #687FE5
                color #000000
            }

            element "Database" {
                shape cylinder
                stroke #3A59D1
            }

            element "Cache" {
                shape cylinder
                background #D84040
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
