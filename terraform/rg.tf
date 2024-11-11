resource "azurerm_resource_group" "rg" {
  name     = "Duc-RG2"
  location = "East US"

  tags = {
    environment = "Terraform Azure"
  }
}