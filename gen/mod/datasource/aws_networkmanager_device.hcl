datasource "aws_networkmanager_device" "aws_networkmanager_device" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "site_id" {
  description = "ID of the site."
  value       = aws_networkmanager_device.aws_networkmanager_device.site_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the device."
  value       = aws_networkmanager_device.aws_networkmanager_device.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "location" {
  description = "Location of the device. Documented below."
  value       = aws_networkmanager_device.aws_networkmanager_device.location
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_arn" {
  description = "ARN of the subnet that the device is located in."
  value       = aws_networkmanager_device.aws_networkmanager_device.subnet_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "aws_location" {
  description = "AWS location of the device. Documented below."
  value       = aws_networkmanager_device.aws_networkmanager_device.aws_location
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "serial_number" {
  description = "Serial number of the device."
  value       = aws_networkmanager_device.aws_networkmanager_device.serial_number
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value tags for the device."
  value       = aws_networkmanager_device.aws_networkmanager_device.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "Type of device."
  value       = aws_networkmanager_device.aws_networkmanager_device.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "zone" {
  description = "Zone that the device is located in.The location object supports the following:"
  value       = aws_networkmanager_device.aws_networkmanager_device.zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "model" {
  description = "Model of device."
  value       = aws_networkmanager_device.aws_networkmanager_device.model
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the device."
  value       = aws_networkmanager_device.aws_networkmanager_device.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "latitude" {
  description = "Latitude."
  value       = aws_networkmanager_device.aws_networkmanager_device.latitude
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vendor" {
  description = "Vendor of the device.The aws_location object supports the following:"
  value       = aws_networkmanager_device.aws_networkmanager_device.vendor
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "address" {
  description = "Physical address."
  value       = aws_networkmanager_device.aws_networkmanager_device.address
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
