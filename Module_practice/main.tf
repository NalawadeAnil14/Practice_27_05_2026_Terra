module "ec2-server" {
  source        = "./module/ec2"
  ami           = var.module_ami
  instance_type = var.module_instance_type
  subnet_id     = element(module.my_vpc.public_subnet_ids, 0)
}

module "my_vpc" {
  source     = "./module/vpc"
  cidr_block = var.module_vpc_cidr
}
