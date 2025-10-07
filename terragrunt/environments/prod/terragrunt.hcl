# include "root" {
#   path   = find_in_parent_folders()
#   expose = true
# }

locals {
  common_vars = read_terragrunt_config(find_in_parent_folders("common/variables.hcl"))
  # project_name = local.common_vars.locals.project_name
}


terraform {
  # source = "./main.tf"
  # source = "."
  source = "../../modules"
}

inputs = {
  # project_name = include.root.locals.project_name
  # project_name = local.project_name
  common = local.common_vars.locals
  environment = "prod"
}
