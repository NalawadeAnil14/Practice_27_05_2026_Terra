module "ec2-server" {

  for_each      = toset(module.my_vpc.public_subnet_ids)
  source        = "./module/ec2"
  ami           = var.module_ami
  instance_type = var.module_instance_type
  subnet_id     = each.value
}

module "my_vpc" {
  source              = "./module/vpc"
  cidr_block          = var.module_vpc_cidr
  private_subnet_cidr = var.private_subnet_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  azs                 = var.azs
  azs_count           = var.azs_count
}
