datasource "aws_lb" "aws_lb" {
  arn  = var.arn
  name = var.name
  tags = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "(Optional) Mapping of tags, each pair of which must exactly match a pair on the desired load balancer.~> strongNOTE: When both arn and name are specified, arn takes precedence. tags has lowest precedence.See the LB ResourceTimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "(Optional) Full ARN of the load balancer."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Optional) Unique name of the load balancer."
  type        = string
  default     = ""
}
output "arn" {
  description = "(Optional) Full ARN of the load balancer."
  value       = aws_lb.aws_lb.arn
}
output "name" {
  description = "(Optional) Unique name of the load balancer."
  value       = aws_lb.aws_lb.name
}
output "tags" {
  description = "(Optional) Mapping of tags, each pair of which must exactly match a pair on the desired load balancer.~> strongNOTE: When both arn and name are specified, arn takes precedence. tags has lowest precedence.See the LB ResourceTimeoutsConfiguration options:"
  value       = aws_lb.aws_lb.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  value       = var.provider_region
}
terraform {
  backend "local" {
  }
  required_providers {
    aws {
      source  = "hashicorp/aws"
      version = ">= 4.38.0"
    }
    required_version = ">= 1.3.4"
  }
}
provider "aws" {
  region = var.provider_region
}
