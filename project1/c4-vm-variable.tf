variable "instance_type" {
  description = "My ec2 server"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "key used to login my server"
  type        = string
  default     = "Docker-key"
}
