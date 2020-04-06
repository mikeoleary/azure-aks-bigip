provider "kubernetes" {
  version = "=1.11.1"
  host                   = "${var.kube_host}"
  #username               = "${var.kube_username}"
  #password               = "${var.kube_password}"
  client_certificate     = "${var.client_certificate}"
  client_key             = "${var.client_key}"
  cluster_ca_certificate = "${var.cluster_ca_certificate}"
  load_config_file       = false

}