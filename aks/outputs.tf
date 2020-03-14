
output "client_certificate" {
  value = base64decode(azurerm_kubernetes_cluster.akscluster1.kube_config.0.client_certificate)
}
output "kube_config" {
  value = azurerm_kubernetes_cluster.akscluster1.kube_config_raw
}
output "kube_host" {
  value = azurerm_kubernetes_cluster.akscluster1.kube_config.0.host
}
output "kube_username" {
    value = azurerm_kubernetes_cluster.akscluster1.kube_config.0.username
}
output "kube_password" {
    value = azurerm_kubernetes_cluster.akscluster1.kube_config.0.username
}
output "client_key" {
    value = base64decode(azurerm_kubernetes_cluster.akscluster1.kube_config.0.client_key)
}
output "cluster_ca_certificate" {
    value = base64decode(azurerm_kubernetes_cluster.akscluster1.kube_config.0.cluster_ca_certificate)
}