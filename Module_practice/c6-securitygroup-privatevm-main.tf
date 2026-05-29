module "privatevm-sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name = "privatevm-sg"

  description = "Security group for private VM"

  vpc_id = module.vpc.vpc_id

  ingress_rules = ["http-80-tcp", "ssh-22-tcp"]

  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]

  egress_rules = ["all-all"]

  tags = local.common_tags

}
