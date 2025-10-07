resource "local_file" "rds" {
  content  = "redis"
  filename = "redis.txt"
}
