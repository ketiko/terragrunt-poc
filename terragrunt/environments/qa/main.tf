resource "local_file" "common" {
  content  = var.project_name
  filename = "common.txt"
}

variable "project_name" {
  type = string
}
