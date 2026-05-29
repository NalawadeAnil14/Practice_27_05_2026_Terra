output "instance_ids" {
  value = [for instance in module.ec2-server : instance.instance_id]
}

output "instance_public_ips" {
  value = [for instance in module.ec2-server : instance.instance_public_ip]
}

output "instance_private_ips" {
  value = [for instance in module.ec2-server : instance.instance_private_ip]
}
