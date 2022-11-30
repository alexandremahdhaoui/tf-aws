datasource "aws_networkmanager_connection" "aws_networkmanager_connection" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "link_id" {
  description = "ID of the link for the first device."
  value       = aws_networkmanager_connection.aws_networkmanager_connection.link_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the connection."
  value       = aws_networkmanager_connection.aws_networkmanager_connection.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "connected_device_id" {
  description = "ID of the second device in the connection."
  value       = aws_networkmanager_connection.aws_networkmanager_connection.connected_device_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "connected_link_id" {
  description = "ID of the link for the second device."
  value       = aws_networkmanager_connection.aws_networkmanager_connection.connected_link_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the connection."
  value       = aws_networkmanager_connection.aws_networkmanager_connection.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_id" {
  description = "ID of the first device in the connection."
  value       = aws_networkmanager_connection.aws_networkmanager_connection.device_id
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
