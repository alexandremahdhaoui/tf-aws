datasource "aws_waf_subscribed_rule_group" "aws_waf_subscribed_rule_group" {
  name        = var.name
  metric_name = var.metric_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "metric_name" {
  description = "(Optional) Name of the WAF rule group.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Optional) Name of the WAF rule group."
  type        = string
  default     = ""
}
output "metric_name" {
  description = "(Optional) Name of the WAF rule group.In addition to all arguments above, the following attributes are exported:"
  value       = aws_waf_subscribed_rule_group.aws_waf_subscribed_rule_group.metric_name
}
output "name" {
  description = "(Optional) Name of the WAF rule group."
  value       = aws_waf_subscribed_rule_group.aws_waf_subscribed_rule_group.name
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
