resource "local_file" "common" {
  # content  = var.project_name
  # content  = var.var.common_vars.project_name
  content  = local.content_body
  filename = "common.txt"
}

# variable "project_name" {
#   type = string
# }

locals {
  content_body = var.environment == "prod" ? var.common.eks_clusters["qa"] : var.common.eks_clusters["prod"]
}

variable "environment" {
  type = string
}

variable "common" {
  type = any
}
