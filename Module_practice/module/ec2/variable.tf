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

variable "instance_count" {
  default = 1
}

variable "vpc_security_group_ids" {
  description = "ID of the security group to associate with the EC2 instance"
  type        = string
}

variable "user_data" {
  description = "User data script to configure the EC2 instance"
  type        = string
}
