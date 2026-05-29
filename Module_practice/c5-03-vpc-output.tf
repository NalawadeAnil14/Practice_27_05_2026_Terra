output "vpc_id" {
  value = module.my_vpc.vpc_id
}

# VPC CIDR blocks
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.my_vpc.vpc_cidr_block
}

output "public_subnet_ids" {
  value = module.my_vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.my_vpc.private_subnet_ids
}

output "availability_zones" {
  value = module.my_vpc.availibilityzones
}
