#AKS outputs
#output "client_certificate" { value = "${module.aks.client_certificate}"}
output "kube_config" {  value = "${module.aks.kube_config}"}
#output "kube_host" {  value = "${module.aks.kube_host}"}
#output "kube_username" { value = "${module.aks.kube_username}"}
#output "kube_password" {  value = "${module.aks.kube_password}"}
#output "client_key" {  value = "${module.aks.client_key}"}
#output "cluster_ca_certificate" {  value = "${module.aks.cluster_ca_certificate}"}

#BIGIP outputs
output "vm01mgmtpip" {  value = "${module.bigip.vm01mgmtpip}"}
output "vm02mgmtpip" {  value = "${module.bigip.vm02mgmtpip}"}

#Verification outputs

output "appUrl" {  value = "http://${module.bigip.lbpip}/" }