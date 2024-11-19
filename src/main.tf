resource "helm_release" "application" {
  name              = var.md_metadata.name_prefix
  chart             = "${path.module}/chart"
  namespace         = var.namespace
  create_namespace  = true
  force_update      = true
  dependency_update = true

  values = [
    fileexists("${path.module}/chart/values.yaml") ? file("${path.module}/chart/values.yaml") : "",
    yamlencode(local.helm_values),
  ]
}
