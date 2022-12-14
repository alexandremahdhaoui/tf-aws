datasource "aws_dx_connection" "aws_dx_connection" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "location" {
  description = "AWS Direct Connect location where the connection is located."
  value       = aws_dx_connection.aws_dx_connection.location
}
output "owner_account_id" {
  description = "ID of the AWS account that owns the connection."
  value       = aws_dx_connection.aws_dx_connection.owner_account_id
}
output "provider_name" {
  description = "Name of the service provider associated with the connection."
  value       = aws_dx_connection.aws_dx_connection.provider_name
}
output "tags" {
  description = "Map of tags for the resource."
  value       = aws_dx_connection.aws_dx_connection.tags
}
output "arn" {
  description = "ARN of the connection."
  value       = aws_dx_connection.aws_dx_connection.arn
}
output "aws_device" {
  description = "Direct Connect endpoint on which the physical connection terminates."
  value       = aws_dx_connection.aws_dx_connection.aws_device
}
output "bandwidth" {
  description = "Bandwidth of the connection."
  value       = aws_dx_connection.aws_dx_connection.bandwidth
}
output "id" {
  description = "ID of the connection."
  value       = aws_dx_connection.aws_dx_connection.id
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
