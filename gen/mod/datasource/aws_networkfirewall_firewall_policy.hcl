datasource "aws_networkfirewall_firewall_policy" "aws_networkfirewall_firewall_policy" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the firewall policy."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "firewall_policy" {
  description = "The policy for the specified firewall policy."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.firewall_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value tags for the firewall policy."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.tags
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
