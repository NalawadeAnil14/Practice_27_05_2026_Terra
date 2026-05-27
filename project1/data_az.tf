data "aws_availability_zones" "available" {}

locals {
  azs = slice(data.aws_availability_zones.available, 0, 3)
}

output "azs" {
  value = local.azs
}
