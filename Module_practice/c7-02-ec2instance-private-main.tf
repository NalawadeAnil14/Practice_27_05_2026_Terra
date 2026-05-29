module "ec2-server" {

  for_each               = local.numbered_public_subnets
  source                 = "./module/ec2"
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.module_instance_type
  subnet_id              = each.value
  instance_count         = each.key
  vpc_security_group_ids = [module.privatevm-sg.security_group_id]
  user_data              = file("${path.module}/user_data.sh")
}

