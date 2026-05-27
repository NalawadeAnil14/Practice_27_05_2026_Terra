module "myvpc" {
  source = "terraform-aws-modules/vpc/aws"
  #version = "2.78.0"
  #version = "~> 2.78"
  version = "5.4.0"

  name = "${local.name}-vpc"
  cidr = var.vpc-cidr

  azs = local.azs

  public_subnets  = [for k, v in azs : cidrsubnet(cidr, 8, k)]
  private_subnets = [for k, v in azs : cidrsubnet(cidr, 8, k + 4)]

  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = local.common_tags

  vpc_tags = local.common_tags

  # Additional Tags to Subnets
  public_subnet_tags = {
    Type = "Public Subnets"
  }
  private_subnet_tags = {
    Type = "Private Subnets"
  }

}


