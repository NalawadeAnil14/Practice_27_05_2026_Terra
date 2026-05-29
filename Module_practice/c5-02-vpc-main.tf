module "my_vpc" {
  source              = "./module/vpc"
  cidr_block          = var.module_vpc_cidr
  private_subnet_cidr = var.private_subnet_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  azs                 = local.azs
}
