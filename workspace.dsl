workspace {

    model {
        enterprise "Agile_Dead_Trees" {
            writing = softwareSystem "Writing" {
                versioning = container "Versioning" "Version control application" "Github"
            }
            selling = softwareSystem "Selling"
        }

        paymentGateway = softwareSystem "Payment Gateway"
        printingFacility = softwareSystem "Printing Facility"

        author = person "Author"
        reviewer = person "Reviewer"
        publisher = person "Publisher"
        customer = person "Customer"

        author -> versioning "writes chapters"
        reviewer -> versioning "validate the author's changes"

        publisher -> selling "manage the catalog"
        customer -> selling "buys books from the catalog"

        selling -> paymentGateway "process payments"
        selling -> printingFacility "sends dead trees order"

        writing -> selling "pushes new validated versions"
    }

    views {
        systemLandscape agileDeadTrees "Agile_Dead_Trees" {
            include *
            autoLayout
        }

        container writing {
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
