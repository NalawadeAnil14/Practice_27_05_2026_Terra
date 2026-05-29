
variable "module_ami" {
  description = "ami id for ec2 instance"
  type        = string
  default     = "ami-00e801948462f718a"
}

variable "module_instance_type" {
  description = "value of instance type"
  type        = string
  default     = "t2.micro"
}

variable "module_subnet_id" {
  description = "public subnet id to create VM"
  type        = string
  default     = "10.0.3.0/24"
}
