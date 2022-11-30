datasource "aws_waf_rate_based_rule" "aws_waf_rate_based_rule" {
  name = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) Name of the WAF rate based rule.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "name" {
  description = "(Required) Name of the WAF rate based rule.In addition to all arguments above, the following attributes are exported:"
  value       = aws_waf_rate_based_rule.aws_waf_rate_based_rule.name
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
