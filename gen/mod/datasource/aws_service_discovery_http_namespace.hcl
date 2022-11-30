datasource "aws_service_discovery_http_namespace" "aws_service_discovery_http_namespace" {
  name        = var.name
  arn         = var.arn
  description = var.description
  http_name   = var.http_name
  id          = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "http_name" {
  description = "Name of an HTTP namespace."
  type        = string
}
variable "id" {
  description = "ID of a namespace."
  type        = string
}
variable "name" {
  description = "(Required) Name of the http namespace.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "ARN that Amazon Route 53 assigns to the namespace when you create it."
  type        = string
}
variable "description" {
  description = "Description that you specify for the namespace when you create it."
  type        = string
}
output "arn" {
  description = "ARN that Amazon Route 53 assigns to the namespace when you create it."
  value       = aws_service_discovery_http_namespace.aws_service_discovery_http_namespace.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description that you specify for the namespace when you create it."
  value       = aws_service_discovery_http_namespace.aws_service_discovery_http_namespace.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_name" {
  description = "Name of an HTTP namespace."
  value       = aws_service_discovery_http_namespace.aws_service_discovery_http_namespace.http_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of a namespace."
  value       = aws_service_discovery_http_namespace.aws_service_discovery_http_namespace.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the http namespace.In addition to all arguments above, the following attributes are exported:"
  value       = aws_service_discovery_http_namespace.aws_service_discovery_http_namespace.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN that Amazon Route 53 assigns to the namespace when you create it."
  value       = aws_service_discovery_http_namespace.aws_service_discovery_http_namespace.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description that you specify for the namespace when you create it."
  value       = aws_service_discovery_http_namespace.aws_service_discovery_http_namespace.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_name" {
  description = "Name of an HTTP namespace."
  value       = aws_service_discovery_http_namespace.aws_service_discovery_http_namespace.http_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of a namespace."
  value       = aws_service_discovery_http_namespace.aws_service_discovery_http_namespace.id
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
