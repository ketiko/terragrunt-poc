include "root" {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "git@github.com:ketiko/terraform-modules.git//modules/s3?ref=main"
}
