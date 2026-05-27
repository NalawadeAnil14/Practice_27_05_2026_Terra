module "mysg" {

  source = "terraform-aws-modules/security-group/aws"
  #version = "3.18.0"
  version = "5.1.0"

  name        = "${local.name}-sg"
  description = "Security group for python application"
  vpc_id      = module.myvpc.vpc_id

  #  ingress_rules       = ["ssh-tcp", "http-5000-tcp", "http-5001-tcp"]
  #  ingress_cidr_blocks = ["0.0.0.0/0"]

  ingress_with_cidr_blocks = [

    {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      description = "SSH"
      cidr_blocks = "0.0.0.0/0"
    },

    {
      from_port   = 5000
      to_port     = 5000
      protocol    = "tcp"
      description = "App Port 5000"
      cidr_blocks = "0.0.0.0/0"
    },

    {
      from_port   = 5001
      to_port     = 5001
      protocol    = "tcp"
      description = "App Port 5001"
      cidr_blocks = "0.0.0.0/0"
    }
  ]

  egress_rules = ["all-all"]
  tags         = local.common_tags

}


