module "ec2-server" {
  source = "./module/ec2"
  ami    = var.module_ami
  instance_type = var.module_instance_type 
}
