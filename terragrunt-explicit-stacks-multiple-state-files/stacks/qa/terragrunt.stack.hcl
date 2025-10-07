unit "rds" {
  source = "git@github.com:ketiko/terraform-modules.git//units/rds?ref=main"
  path   = "rds"
}

unit "s3" {
  source = "git@github.com:ketiko/terraform-modules.git//units/s3?ref=main"
  path   = "s3"
}

unit "redis" {
  source = "../../units/redis"
  path   = "redis"
}

unit "cloudfront" {
  source = "../../units/cloudfront"
  path   = "cloudfront"
}
