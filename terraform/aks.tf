resource "azurerm_kubernetes_cluster" "aks" {
  name                = "${var.cluster_name}-${var.branch}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = 3
    vm_size    = "Standard_D2plds_v6"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "${var.branch}"
  }
}

  output "client_certificate" {
    value     = azurerm_kubernetes_cluster.aks.kube_config[0].client_certificate
    sensitive = true
  }

  output "client_key" {
    value     = azurerm_kubernetes_cluster.aks.kube_config[0].client_key
    sensitive = true
  }

  output "cluster_ca_certificate" {
    value     = azurerm_kubernetes_cluster.aks.kube_config[0].cluster_ca_certificate
    sensitive = true
  }