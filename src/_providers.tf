terraform {
  required_providers {
    jq = {
      source = "massdriver-cloud/jq"
    }

    helm = {
      source = "hashicorp/helm"
    }
  }
}

locals {
  # Note: If the field name `kubernetes_cluster` in massdriver.yaml has been changed, this must be updated to match.
  kubernetes_cluster = var.kubernetes_cluster
}

provider "helm" {
  kubernetes {
    host                   = local.kubernetes_cluster.data.authentication.cluster.server
    cluster_ca_certificate = base64decode(local.kubernetes_cluster.data.authentication.cluster.certificate-authority-data)
    token                  = local.kubernetes_cluster.data.authentication.user.token
  }
}
