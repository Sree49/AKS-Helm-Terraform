terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.6.0"
    }
helm = {
source = "hashicorp/helm"
version = "~>3.0"
}
  }
}



provider "azurerm" {
  # Configuration options
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }


  }
}

kubernetes {
host = module.aks.host
client_certificate = base64decode(module.aks.client_certificate)
client_key = base64decode(module.aks.client_key)
cluster_ca_certificate = base64decode(module.aks.cluster_ca_certificate)
}