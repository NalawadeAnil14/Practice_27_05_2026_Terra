locals {
  azs = slice(data.aws_availability_zones.available, 0, var.azs_count)
}
