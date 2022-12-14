datasource "aws_networkmanager_device" "aws_networkmanager_device" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vendor" {
  description = "Vendor of the device.The aws_location object supports the following:"
  value       = aws_networkmanager_device.aws_networkmanager_device.vendor
}
output "zone" {
  description = "Zone that the device is located in.The location object supports the following:"
  value       = aws_networkmanager_device.aws_networkmanager_device.zone
}
output "aws_location" {
  description = "AWS location of the device. Documented below."
  value       = aws_networkmanager_device.aws_networkmanager_device.aws_location
}
output "latitude" {
  description = "Latitude."
  value       = aws_networkmanager_device.aws_networkmanager_device.latitude
}
output "site_id" {
  description = "ID of the site."
  value       = aws_networkmanager_device.aws_networkmanager_device.site_id
}
output "subnet_arn" {
  description = "ARN of the subnet that the device is located in."
  value       = aws_networkmanager_device.aws_networkmanager_device.subnet_arn
}
output "type" {
  description = "Type of device."
  value       = aws_networkmanager_device.aws_networkmanager_device.type
}
output "address" {
  description = "Physical address."
  value       = aws_networkmanager_device.aws_networkmanager_device.address
}
output "description" {
  description = "Description of the device."
  value       = aws_networkmanager_device.aws_networkmanager_device.description
}
output "location" {
  description = "Location of the device. Documented below."
  value       = aws_networkmanager_device.aws_networkmanager_device.location
}
output "tags" {
  description = "Key-value tags for the device."
  value       = aws_networkmanager_device.aws_networkmanager_device.tags
}
output "arn" {
  description = "ARN of the device."
  value       = aws_networkmanager_device.aws_networkmanager_device.arn
}
output "model" {
  description = "Model of device."
  value       = aws_networkmanager_device.aws_networkmanager_device.model
}
output "serial_number" {
  description = "Serial number of the device."
  value       = aws_networkmanager_device.aws_networkmanager_device.serial_number
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
