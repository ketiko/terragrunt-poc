include "root" {
  path   = find_in_parent_folders()
  expose = true
}


terraform {
  source = "./main.tf"
}

inputs = {
  project_name = include.root.locals.project_name
}
