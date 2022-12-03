datasource "aws_lb_listener" "aws_lb_listener" {
  arn               = var.arn
  load_balancer_arn = var.load_balancer_arn
  port              = var.port
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "(Optional) ARN of the listener. Required if load_balancer_arn and port is not set."
  type        = string
  default     = ""
}
variable "load_balancer_arn" {
  description = "(Optional) ARN of the load balancer. Required if arn is not set."
  type        = string
  default     = ""
}
variable "port" {
  description = "(Optional) Port of the listener. Required if arn is not set.See the LB Listener Resource for details on the returned attributes - they are identical.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
output "arn" {
  description = "(Optional) ARN of the listener. Required if load_balancer_arn and port is not set."
  value       = aws_lb_listener.aws_lb_listener.arn
}
output "load_balancer_arn" {
  description = "(Optional) ARN of the load balancer. Required if arn is not set."
  value       = aws_lb_listener.aws_lb_listener.load_balancer_arn
}
output "port" {
  description = "(Optional) Port of the listener. Required if arn is not set.See the LB Listener Resource for details on the returned attributes - they are identical.TimeoutsConfiguration options:"
  value       = aws_lb_listener.aws_lb_listener.port
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
