# generate "backend" {
#   path      = "backend.tf"
#   if_exists = "overwrite_terragrunt"
#   contents = <<EOF
# terraform {
#   backend "local" {
#     path = "${path_relative_to_include()}-terraform-only.tfstate"
#   }
# }
#   EOF
# }

remote_state {
  backend = "local"

  generate = {
    path      = "backend.tf"       # file to generate in the unit’s directory
    if_exists = "overwrite"        # or "skip" or "overwrite_terragrunt"
  }

  config = {
    path = "${path_relative_to_include()}-terraform-only.tfstate"
  }
}
