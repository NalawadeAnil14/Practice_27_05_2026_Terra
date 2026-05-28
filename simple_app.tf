provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-00e801948462f718a"
  instance_type = "t3.micro"
}

resource "aws_iam_user" "user" {
  name = "myuser"
  path = "/system/"

  tags = {
    Name = "user"
  }
}
