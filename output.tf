output "azs" {
  value = data.aws_availability_zones.azs.names
}

output "instance-type_offerings" {
  value = toset([for detail in data.aws_ec2_instance_type_offerings.example: detail.instance_types])
  #toset([for t in data.aws_ec2_instance_type_offerings.my_ins_type2: t.instance_types])
}

output "instance-type_offerings1" {
  value = { for az, detail in data.aws_ec2_instance_type_offerings.example: az => detail.instance_types }
  #toset([for t in data.aws_ec2_instance_type_offerings.my_ins_type2: t.instance_types])
}

output "instance-type_offerings2" {
  value = keys({ for az, detail in data.aws_ec2_instance_type_offerings.example: az => detail.instance_types if length(detail.instance_types) != 0 })
  #toset([for t in data.aws_ec2_instance_type_offerings.my_ins_type2: t.instance_types])
}
