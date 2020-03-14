provider "kubernetes" {
  host                   = "${var.kube_host}"
  #username               = "${var.kube_username}"
  #password               = "${var.kube_password}"
  client_certificate     = "${var.client_certificate}"
  client_key             = "${var.client_key}"
  cluster_ca_certificate = "${var.cluster_ca_certificate}"
}

provider "helm" {
  #install_tiller  = true
  #namespace = "${kubernetes_service_account.tiller.metadata[0].namespace}"
  #service_account = "${kubernetes_service_account.tiller.metadata[0].name}"

  kubernetes {
    host                   = "${var.kube_host}"
    #username               = "${var.kube_username}"
    #password               = "${var.kube_password}"
    client_certificate     = "${var.client_certificate}"
    client_key             = "${var.client_key}"
    cluster_ca_certificate = "${var.cluster_ca_certificate}"
  }
}
