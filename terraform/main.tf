terraform {
  backend "local" {
    path = "terraform-only.tfstate"
  }
}

# module "provider" {
#   source = "git@github.com:ketiko/terraform-modules.git//provider?ref=main"
# }

# module "backend" {
#   source = "git@github.com:ketiko/terraform-modules.git//backend?ref=main"
# }

module "rds" {
  source = "git@github.com:ketiko/terraform-modules.git//rds?ref=main"
}

module "s3" {
  source = "git@github.com:ketiko/terraform-modules.git//s3?ref=main"
}

# resource "aws_s3_bucket" "example" {
#   provider = module.provider.aws.aws_provider_alias
#
#   bucket = "my-tf-test-bucket"
#
#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }
