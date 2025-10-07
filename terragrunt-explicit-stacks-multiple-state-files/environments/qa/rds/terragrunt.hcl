include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git@github.com:ketiko/terraform-modules.git//rds?ref=main"
}
