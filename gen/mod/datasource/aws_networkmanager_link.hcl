datasource "aws_networkmanager_link" "aws_networkmanager_link" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "Type of the link.The bandwidth object supports the following:"
  value       = aws_networkmanager_link.aws_networkmanager_link.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the link."
  value       = aws_networkmanager_link.aws_networkmanager_link.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bandwidth" {
  description = "Upload speed and download speed of the link as documented below"
  value       = aws_networkmanager_link.aws_networkmanager_link.bandwidth
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the link."
  value       = aws_networkmanager_link.aws_networkmanager_link.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "download_speed" {
  description = "Download speed in Mbps."
  value       = aws_networkmanager_link.aws_networkmanager_link.download_speed
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "provider_name" {
  description = "Provider of the link."
  value       = aws_networkmanager_link.aws_networkmanager_link.provider_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "site_id" {
  description = "ID of the site."
  value       = aws_networkmanager_link.aws_networkmanager_link.site_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value tags for the link."
  value       = aws_networkmanager_link.aws_networkmanager_link.tags
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
