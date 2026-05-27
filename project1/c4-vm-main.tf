module "myec2_server" {
  source = "terraform-aws-modules/ec2-instance/aws"
  #version = "2.17.0"
  #version = "5.6.0"
  version = "6.0.2"

  name          = "${local.name}-ec2-server"
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [module.mysg.security_group_id]
  subnet_id              = module.myvpc.public_subnets[0]

  user_data = file("${path.module}/extra/userdata.sh")

  tags = local.common_tags

}



