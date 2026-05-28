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

