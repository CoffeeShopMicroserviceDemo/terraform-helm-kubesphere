resource "kubernetes_namespace" "kubesphere_namespace" {
  metadata {
    name = var.kubesphere_namespace
  }
}

resource "helm_release" "kubesphere" {
  name = "kubesphere"
  repository = var.kubesphere_helm_repository
  chart = "ks-installer"
  namespace = kubernetes_namespace.kubesphere_namespace.metadata[0].name

  set {
    name = "service.type"
    value = "Loadbalancer"
  }
}

