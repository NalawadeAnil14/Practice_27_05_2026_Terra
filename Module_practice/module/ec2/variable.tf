variable "ami" {
  description = "ami id for ec2 instance"
  type        = string
  default     = "ami-00e801948462f718a"
}

variable "instance_type" {
  description = "value of instance type"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "ID of the subnet to launch the EC2 instance in"
  type        = string
}

variable "name" {
  default = "pract"
}
