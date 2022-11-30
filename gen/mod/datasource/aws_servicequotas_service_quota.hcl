datasource "aws_servicequotas_service_quota" "aws_servicequotas_service_quota" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "adjustable" {
  description = "Whether the service quota is adjustable."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.adjustable
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the service quota."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_value" {
  description = "Default value of the service quota."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.default_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "global_quota" {
  description = "Whether the service quota is global for the AWS account."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.global_quota
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ARN of the service quota."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_name" {
  description = "Name of the service."
  value       = aws_servicequotas_service_quota.aws_servicequotas_service_quota.service_name
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
