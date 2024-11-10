resource "azurerm_resource_group" "rg" {
  name     = "Duc-RG2"
  location = "West Europe"

  tags = {
    environment = "Terraform Azure"
  }
}