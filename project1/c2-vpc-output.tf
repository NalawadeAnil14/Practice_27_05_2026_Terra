output "vpc_id" {
  value = module.myvpc.vpc_id
}

output "private_subnets" {
  value = module.myvpc.private_subnets
}

output "public_subnets" {
  value = module.myvpc.public_subnets
}

output "azs" {
  value = module.myvpc.azs
}
