variable "module_vpc_cidr" {
  description = "cidr block for vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "List of availability zones to use for subnets"
  type        = list(string)
  default     = ["us-east-1b", "us-east-1c"]
}

variable "public_subnet_cidr" {
  description = "List of public subnet cidr"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "private_subnet_cidr" {
  description = "List of private subnet cidr"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}


variable "azs_count" {
  description = "Number of availability zones to use for subnets"
  type        = number
  default     = 2
}
