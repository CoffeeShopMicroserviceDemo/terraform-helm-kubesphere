resource "helm_release" "kubesphere" {
  name = "kubesphere"
  repository = var.kubesphere_helm_repository
  chart = "ks-installer"
  namespace = var.kubesphere_namespace
  create_namespace = true

  set {
    name = "service.type"
    value = "Loadbalancer"
  }
}

