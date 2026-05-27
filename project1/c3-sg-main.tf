module "mysg" {
  source  = "terraform-aws-modules/security-group/aws//examples/complete"
  version = "5.3.1"

  name        = "${local.name}-sg"
  description = "Security group for python application"
  vpc_id      = module.myvpc.vpc_id

  ingress_with_cidr_blocks = [
    {
      from_port   = 5000
      to_port     = 5000
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 5001
      to_port     = 5001
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    },
    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  egress_rules = ["all-all"]
  tags         = local.common_tags

}


