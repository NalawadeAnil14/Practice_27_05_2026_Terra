output "myserver-id" {
  value = module.myec2_server.id
}

output "myserver-public-ip" {
  value = module.myec2_server.public_ip
}
