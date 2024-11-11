terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.9.0"
    }
  }
}

provider "azurerm" {
  features {}
  }

  ### Service Principle values need to be exported
    #export ARM_CLIENT_ID="5e71b546-1fbb-4723-af47-545d1e190e96"
    #export ARM_CLIENT_SECRET="secret"
    #export ARM_TENANT_ID="a672f74e-032d-49f3-b705-1b37bf6e9bfc"
    #export ARM_SUBSCRIPTION_ID="17e4c67a-a30c-40f3-9663-6071a6410826"

provider "kubernetes" {
  host                   = azurerm_kubernetes_cluster.aks.kube_config[0].host
  client_certificate     = base64decode(azurerm_kubernetes_cluster.aks.kube_config[0].client_certificate)
  client_key             = base64decode(azurerm_kubernetes_cluster.aks.kube_config[0].client_key)
  cluster_ca_certificate = base64decode(azurerm_kubernetes_cluster.aks.kube_config[0].cluster_ca_certificate)
}