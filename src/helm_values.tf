locals {
  helm_values = {
    commonLabels = var.md_metadata.default_tags
    persistence = {
      size = var.storage_size
      storageClassName = var.storage_class
    }
  }
}
