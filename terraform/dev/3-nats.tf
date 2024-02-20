resource "helm_release" "nats" {
  name       = "nats"
  repository = "https://nats-io.github.io/k8s/helm/charts/"
  chart      = "nats"
  namespace  = "swiftly-dev"
  create_namespace = true
  version    = "1.1.9"
  values = [file("values/nats.yml")]
}
