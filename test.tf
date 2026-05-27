terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 6.28"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}


data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_instance" "myec2" {

  for_each      = toset(data.aws_availability_zones.available.names)
  ami           = "ami-00e801948462f718a"
  instance_type = "t3.micro"

}
