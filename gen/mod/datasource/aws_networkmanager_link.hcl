datasource "aws_networkmanager_link" "aws_networkmanager_link" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the link."
  value       = aws_networkmanager_link.aws_networkmanager_link.arn
}
output "bandwidth" {
  description = "Upload speed and download speed of the link as documented below"
  value       = aws_networkmanager_link.aws_networkmanager_link.bandwidth
}
output "description" {
  description = "Description of the link."
  value       = aws_networkmanager_link.aws_networkmanager_link.description
}
output "download_speed" {
  description = "Download speed in Mbps."
  value       = aws_networkmanager_link.aws_networkmanager_link.download_speed
}
output "provider_name" {
  description = "Provider of the link."
  value       = aws_networkmanager_link.aws_networkmanager_link.provider_name
}
output "site_id" {
  description = "ID of the site."
  value       = aws_networkmanager_link.aws_networkmanager_link.site_id
}
output "tags" {
  description = "Key-value tags for the link."
  value       = aws_networkmanager_link.aws_networkmanager_link.tags
}
output "type" {
  description = "Type of the link.The bandwidth object supports the following:"
  value       = aws_networkmanager_link.aws_networkmanager_link.type
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
