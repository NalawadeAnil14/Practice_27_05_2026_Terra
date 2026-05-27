output "azs" {
  value = data.aws_availability_zones.azs.names
}

output "instance-type_offerings" {
  value = data.aws_ec2_instance_type_offerings.example.instance_types
}

