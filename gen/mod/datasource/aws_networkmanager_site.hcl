datasource "aws_networkmanager_site" "aws_networkmanager_site" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the site."
  value       = aws_networkmanager_site.aws_networkmanager_site.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "latitude" {
  description = "Latitude of the location."
  value       = aws_networkmanager_site.aws_networkmanager_site.latitude
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "location" {
  description = "Site location as documented below."
  value       = aws_networkmanager_site.aws_networkmanager_site.location
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value tags for the Site.The location object supports the following:"
  value       = aws_networkmanager_site.aws_networkmanager_site.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "address" {
  description = "Address of the location."
  value       = aws_networkmanager_site.aws_networkmanager_site.address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the site."
  value       = aws_networkmanager_site.aws_networkmanager_site.arn
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
