terraform {
  backend "azurerm" {
    #terraform backend will be stored on Azure Storage Container
    resource_group_name   = "Duc-RG1"
    storage_account_name   = "ducleterraformbackend"
    container_name         = "terraform-backend"
    key                    = "terraform.tfstate"
  }
}