module "alb-sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name        = "alb-sg"
  description = "Security group for ALB"

  vpc_id = module.my_vpc.vpc_id

  ingress_rules       = ["http-80-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  egress_rules = ["all-all"]

  tags = local.common_tags
}
