datasource "aws_service_discovery_dns_namespace" "aws_service_discovery_dns_namespace" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the namespace."
  value       = aws_service_discovery_dns_namespace.aws_service_discovery_dns_namespace.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the namespace."
  value       = aws_service_discovery_dns_namespace.aws_service_discovery_dns_namespace.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hosted_zone" {
  description = "ID for the hosted zone that Amazon Route 53 creates when you create a namespace."
  value       = aws_service_discovery_dns_namespace.aws_service_discovery_dns_namespace.hosted_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Namespace ID."
  value       = aws_service_discovery_dns_namespace.aws_service_discovery_dns_namespace.id
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
