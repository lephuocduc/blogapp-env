terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.9.0"
    }
  }
}

provider "azurerm" {
  features{}
  client_id     = "<APPLICATION_ID>"   # Replace with your application's ID
  client_secret = "<CLIENT_SECRET>"     # Replace with your client secret
  tenant_id     = "<TENANT_ID>"         # Replace with your tenant ID
  subscription_id = "<SUBSCRIPTION_ID>" # Replace with your subscription ID
}