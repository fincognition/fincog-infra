resource "kubernetes_namespace" "swiftly-dev" {
  metadata {
    name = "swiftly-dev"
  }
}
