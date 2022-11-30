datasource "aws_sesv2_dedicated_ip_pool" "aws_sesv2_dedicated_ip_pool" {
  tags              = var.tags
  warmup_percentage = var.warmup_percentage
  arn               = var.arn
  dedicated_ips     = var.dedicated_ips
  ip                = var.ip
  pool_name         = var.pool_name
  scaling_mode      = var.scaling_mode
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the Dedicated IP Pool."
  type        = string
}
variable "dedicated_ips" {
  description = "A list of objects describing the pool's dedicated IP's. See dedicated_ips."
  type        = string
}
variable "ip" {
  description = "IPv4 address."
  type        = string
}
variable "pool_name" {
  description = "(Required) Name of the dedicated IP pool.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "scaling_mode" {
  description = "(Optional) IP pool scaling mode. Valid values: STANDARD, MANAGED."
  type        = string
}
variable "tags" {
  description = "A map of tags attached to the pool.dedicated_ips"
  type        = string
}
variable "warmup_percentage" {
  description = "Indicates how complete the dedicated IP warm-up process is. When this value equals 1, the address has completed the warm-up process and is ready for use."
  type        = string
}
output "ip" {
  description = "IPv4 address."
  value       = aws_sesv2_dedicated_ip_pool.aws_sesv2_dedicated_ip_pool.ip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pool_name" {
  description = "(Required) Name of the dedicated IP pool.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sesv2_dedicated_ip_pool.aws_sesv2_dedicated_ip_pool.pool_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scaling_mode" {
  description = "(Optional) IP pool scaling mode. Valid values: STANDARD, MANAGED."
  value       = aws_sesv2_dedicated_ip_pool.aws_sesv2_dedicated_ip_pool.scaling_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "A map of tags attached to the pool.dedicated_ips"
  value       = aws_sesv2_dedicated_ip_pool.aws_sesv2_dedicated_ip_pool.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "warmup_percentage" {
  description = "Indicates how complete the dedicated IP warm-up process is. When this value equals 1, the address has completed the warm-up process and is ready for use."
  value       = aws_sesv2_dedicated_ip_pool.aws_sesv2_dedicated_ip_pool.warmup_percentage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Dedicated IP Pool."
  value       = aws_sesv2_dedicated_ip_pool.aws_sesv2_dedicated_ip_pool.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dedicated_ips" {
  description = "A list of objects describing the pool's dedicated IP's. See dedicated_ips."
  value       = aws_sesv2_dedicated_ip_pool.aws_sesv2_dedicated_ip_pool.dedicated_ips
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Dedicated IP Pool."
  value       = aws_sesv2_dedicated_ip_pool.aws_sesv2_dedicated_ip_pool.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dedicated_ips" {
  description = "A list of objects describing the pool's dedicated IP's. See dedicated_ips."
  value       = aws_sesv2_dedicated_ip_pool.aws_sesv2_dedicated_ip_pool.dedicated_ips
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip" {
  description = "IPv4 address."
  value       = aws_sesv2_dedicated_ip_pool.aws_sesv2_dedicated_ip_pool.ip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scaling_mode" {
  description = "(Optional) IP pool scaling mode. Valid values: STANDARD, MANAGED."
  value       = aws_sesv2_dedicated_ip_pool.aws_sesv2_dedicated_ip_pool.scaling_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "A map of tags attached to the pool.dedicated_ips"
  value       = aws_sesv2_dedicated_ip_pool.aws_sesv2_dedicated_ip_pool.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "warmup_percentage" {
  description = "Indicates how complete the dedicated IP warm-up process is. When this value equals 1, the address has completed the warm-up process and is ready for use."
  value       = aws_sesv2_dedicated_ip_pool.aws_sesv2_dedicated_ip_pool.warmup_percentage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
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
