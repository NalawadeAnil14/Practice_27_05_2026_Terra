variable "aws_region" {
  description = "AWS region where your infra get created"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name like e.g. dev stage. prod"
  type        = string
  default     = "dev"
}

variable "business_unit" {
  description = "business unit"
  type        = string
  default     = "sap"
}
