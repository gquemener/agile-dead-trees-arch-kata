workspace {

    model {
        enterprise "Agile_Dead_Trees" {
            authoring = softwareSystem "Authoring"
            reviewing = softwareSystem "Reviewing"
            publishing = softwareSystem "Publishing"
            selling = softwareSystem "Selling"
        }

        author = person "Author"
        reviewer = person "Reviewer"
        publisher = person "Publisher"
        customer = person "Customer"

        author -> authoring "Uses"
        reviewer -> reviewing "Uses"
        publisher -> publishing "Uses"
        customer -> selling "Uses"
    }

    views {
        systemLandscape agileDeadTrees "Agile_Dead_Trees" {
            include *
            autoLayout
        }

        styles {
            element "Person" {
                shape Person
            }
        }
    }

}
