datasource "aws_mskconnect_connector" "aws_mskconnect_connector" {
  description = var.description
  name        = var.name
  arn         = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the connector."
  type        = string
}
variable "description" {
  description = "Summary description of the connector."
  type        = string
}
variable "name" {
  description = "(Required) Name of the connector.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "arn" {
  description = "ARN of the connector."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Summary description of the connector."
  value       = aws_mskconnect_connector.aws_mskconnect_connector.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the connector.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_mskconnect_connector.aws_mskconnect_connector.name
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
