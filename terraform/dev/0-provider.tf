terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.26.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.12.1"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
  config_context = "swiftly-dev-context"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
    config_context = "swiftly-dev-context"
  }
}
