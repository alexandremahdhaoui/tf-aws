datasource "aws_lb_target_group" "aws_lb_target_group" {
  arn  = var.arn
  name = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "(Optional) Full ARN of the target group."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Optional) Unique name of the target group.~> strongNOTE: When both arn and name are specified, arn takes precedence.See the LB Target Group ResourceTimeoutsConfiguration options:"
  type        = string
  default     = ""
}
output "arn" {
  description = "(Optional) Full ARN of the target group."
  value       = aws_lb_target_group.aws_lb_target_group.arn
}
output "name" {
  description = "(Optional) Unique name of the target group.~> strongNOTE: When both arn and name are specified, arn takes precedence.See the LB Target Group ResourceTimeoutsConfiguration options:"
  value       = aws_lb_target_group.aws_lb_target_group.name
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
