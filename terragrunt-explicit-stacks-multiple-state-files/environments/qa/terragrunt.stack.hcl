unit "rds" {
  source = "git@github.com:ketiko/terraform-modules.git//units/rds?ref=main"
  path   = "rds"

  no_dot_terragrunt_stack = true
}

unit "s3" {
  source = "git@github.com:ketiko/terraform-modules.git//units/s3?ref=main"
  path   = "s3"

  no_dot_terragrunt_stack = true
}
#
# unit "redis" {
#   source = "./redis"
#   path   = "redis"
#
#   no_dot_terragrunt_stack = true
# }
#
# unit "cloudfront" {
#   source = "./cloudfront"
#   path   = "cloudfront"
#
#   no_dot_terragrunt_stack = true
# }
