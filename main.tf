module "network" {
  source               = "./modules/network"
  name                 = "ozorio"
  aws_region           = var.aws_region
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
}
