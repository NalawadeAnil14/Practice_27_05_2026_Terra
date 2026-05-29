locals {
  numbered_public_subnets = {
    for index, val in values(module.my_vpc.public_subnet_ids) :
    index + 1 => val
  }
}

locals {
  numbered_private_subnets = {
    for index, val in values(module.my_vpc.private_subnet_ids) :
    index + 1 => val
  }
}


locals {
  azs = slice(data.aws_availability_zones.available.names, 0, var.azs_count)
}

locals {
  common_tags = {
    Environment = "dev"
    Project     = "Practice"
    Owner       = "Self"
  }
}
