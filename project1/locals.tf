locals {
  azs = slice(data.aws_availability_zones.available.names, 0, 2)

  name = "${var.business_unit}-${var.environment}"

  common_tags = {
    Environment  = var.environment
    BusinessUnit = var.business_unit
  }
}


