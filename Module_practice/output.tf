output "instance_id" {
  value = module.ec2-server.instance_id
}

output "instance_public_ip" {
  value = module.ec2-server.instance_public_ip
}

output "instance_private_ip" {
  value = module.ec2-server.instance_private_ip
}

output "vpc_id" {
  value = module.my_vpc.vpc_id
}

output "public_subnet_ids" {
  value = module.my_vpc.public_subnet_ids
}

output "private_subnet_ids" {
  value = module.my_vpc.private_subnet_ids
}

output "availability_zones" {
  value = module.my_vpc.availability_zones
}
