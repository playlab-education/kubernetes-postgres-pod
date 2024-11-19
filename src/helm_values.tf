locals {
  helm_values = {
    commonLabels = var.md_metadata.default_tags
  }
}
