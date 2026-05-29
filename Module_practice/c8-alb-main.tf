# Terraform AWS Application Load Balancer (ALB)
module "alb" {
  source = "terraform-aws-modules/alb/aws"
  #version = "5.16.0"
  version = "9.4.0"

  name               = "pract-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [module.alb-sg.security_group_id]

  vpc_id  = module.my_vpc.vpc_id
  subnets = values(module.my_vpc.public_subnet_ids)

  enable_deletion_protection = false

  listeners = {
    my-http-listener = {
      port     = 80
      protocol = "HTTP"

      forward = {
        target_group_key = "my-http-target-group"
      }
    }
  }

  target_groups = {
    my-http-target-group = {
      port             = 80
      protocol         = "HTTP"
      protocol_version = "HTTP1"
      name_prefix      = "mytg1"
      target_type      = "instance"

      load_balancing_cross_zone_enabled = false
      health_check = {
        path                = "/app1/index.html"
        port                = "traffic-port"
        protocol            = "HTTP"
        interval            = 30
        healthy_threshold   = 3
        unhealthy_threshold = 3
        timeout             = 6
      }
    }
  }

  tags = local.common_tags
}

resource "aws_lb_target_group_attachment" "my_http_target_group_attachment" {
  for_each         = toset(values(module.ec2-server)[*].instance_id)
  target_group_arn = module.alb.target_groups["my-http-target-group"].arn
  target_id        = each.value
  port             = 80
}
