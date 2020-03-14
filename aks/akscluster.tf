resource "azurerm_kubernetes_cluster" "akscluster1" {
  name                = "akscluster1"
  location            = "${var.location}"
  resource_group_name = "${var.rg_name}"
  dns_prefix          = "akscluster1"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
    vnet_subnet_id = "${var.int_subnet_id}"
  }
  network_profile {
    network_plugin = "azure"
    dns_service_ip = "${var.dns_service_ip}"
    docker_bridge_cidr = "${var.docker_bridge_cidr}"
    service_cidr = "${var.service_cidr}"
  }
  node_resource_group = "${var.rg_name}-aks-resources"
  service_principal {
    client_id     = "32d3f75a-2567-447e-a877-d3bef59eea2c"
    client_secret = "rSAn12xD4a?yP.GpfO_.CsnPNEHU2Xnk"
  }
}
