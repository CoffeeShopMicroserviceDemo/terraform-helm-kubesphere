variable "kubesphere_helm_repository" {
  type = string
  default = "https://charts.kubesphere.io/main"
}

variable "kubesphere_namespace" {
  description = "Kubesphere Namespace"
  type = string
  default = "kubesphere-system"
}

variable "do_token" {
  description = "Digital Ocean Personal access token"
  type        = string
  default     = ""
}

variable "do_k8s_name" {
  description = "Digital Ocean Kubernetes cluster name (e.g. `k8s-do`)"
  type        = string
  default     = "k8s-do"
}

variable "do_project_name" {
  description = "Digital Ocean project name"
  type = string
  default = "kubesphere"
}