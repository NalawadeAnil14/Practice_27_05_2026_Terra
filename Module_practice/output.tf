output "instance_id" {
  value = module.ec2-server.instance_id
}

output "instance_public_ip" {
  value = module.ec2-server.instance_public_ip
}

output "instance_private_ip" {
  value = module.ec2-server.instance_private_ip
}
