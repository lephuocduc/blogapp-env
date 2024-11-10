terraform {
  backend "azurerm" {
    resource_group_name   = "Duc-RG1"
    storage_account_name   = "ducleterraformbackend"
    container_name         = "terraform-backend"
    key                    = "terraform.tfstate"
  }
}