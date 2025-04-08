provider "azurem" { #proveedor que usara terraform para crear los recursos en azure
    features {}                 
}
# Creación de un grupo de recursos en azure, es como una carpeta logica donde se almacenan los recursos 
resource "azurem_resource_group" "rg" { 
    name     = "rg-devsecops"
    location = "eastus" #Ubicacion de la región donde se creara el grupo de recursos
}

# Creación de una cuenta de almacenamiento en azure, es un recurso donde se almacenan los datos
# en la nube, como archivos, blobs, tablas, colas, etc.
resource "azurem_storage_account" "st" {
    name                     = "devsecopsdemo123"
    resource_group_name      = azurem_resource_group.rg.name
    location                 = azurem_resource_group.rg.location
    account_tier             = "Standard"
    account_replication_type = "LRS" #Local Redundant Storage, replica los datos en la misma región
}
