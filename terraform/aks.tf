resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.cluster_name}-${var.branch}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_D2as_v4"

    upgrade_settings {
      drain_timeout_in_minutes      = 0
      max_surge                     = "10%"
      node_soak_duration_in_minutes = 0 
    }
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "${var.branch}"
  }
}
 