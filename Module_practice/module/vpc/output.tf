output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main_vpc.id
}

output "public_subnet_ids" {
  description = "IDs of the created public subnets"
  value       = { for index, sub in aws_subnet.public_subnet : "public-subnet-${index + 1}" => sub.id }
}

output "private_subnet_ids" {
  description = "IDs of the created private subnets"
  value       = { for index, sub in aws_subnet.private_subnet : "private-subnet-${index + 1}" => sub.id }
}

output "internet_gateway_id" {
  description = "ID of the created Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

output "availibilityzones" {
  value = local.azs
}
