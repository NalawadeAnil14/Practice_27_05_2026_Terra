resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type

  subnet_id = var.subnet_id

  user_data = file("${path.module}/user_data.sh")

  tags = {
    Name = "${var.name}-ec2-server-${var.instance_count}"
  }
}

