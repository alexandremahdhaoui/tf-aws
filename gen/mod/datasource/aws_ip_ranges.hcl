datasource "aws_ip_ranges" "aws_ip_ranges" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_date" {
  description = "Publication time of the IP ranges (e.g., 2016-08-03-23-46-05)."
  value       = aws_ip_ranges.aws_ip_ranges.create_date
}
output "ipv6_cidr_blocks" {
  description = "Lexically ordered list of IPv6 CIDR blocks."
  value       = aws_ip_ranges.aws_ip_ranges.ipv6_cidr_blocks
}
output "cidr_blocks" {
  description = "Lexically ordered list of CIDR blocks."
  value       = aws_ip_ranges.aws_ip_ranges.cidr_blocks
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
