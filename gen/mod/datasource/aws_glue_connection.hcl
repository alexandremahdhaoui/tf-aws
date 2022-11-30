datasource "aws_glue_connection" "aws_glue_connection" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "match_criteria" {
  description = " – A list of criteria that can be used in selecting this connection."
  value       = aws_glue_connection.aws_glue_connection.match_criteria
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the Glue Connection."
  value       = aws_glue_connection.aws_glue_connection.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "physical_connection_requirements" {
  description = "A map of physical connection requirements, such as VPC and SecurityGroup."
  value       = aws_glue_connection.aws_glue_connection.physical_connection_requirements
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Glue Connection."
  value       = aws_glue_connection.aws_glue_connection.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "catalog_id" {
  description = "Catalog ID of the Glue Connection."
  value       = aws_glue_connection.aws_glue_connection.catalog_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "connection_type" {
  description = "Type of Glue Connection."
  value       = aws_glue_connection.aws_glue_connection.connection_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = " – Description of the connection."
  value       = aws_glue_connection.aws_glue_connection.description
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
