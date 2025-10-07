locals {
  regions       = {
    us_east_1 =   "us-east-1"
    us_west_2 =   "us-west-2"
  }
  eks_clusters = {
    qa  = "qa-cluster"
    prod = "prod-cluster"
  }
  vpcs = {
    qa  = "123"
    prod = "456"
  }
  aws_accounts = {
    qa = "a123"
    prod = "b456"
  }
}
