resource "local_file" "common" {
  # content  = var.project_name
  content  = var.common_vars.project_name
  filename = "common.txt"
}

# variable "project_name" {
#   type = string
# }

variable "common_vars" {
  type = map(any)
}
