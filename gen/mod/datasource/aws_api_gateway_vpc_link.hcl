datasource "aws_api_gateway_vpc_link" "aws_api_gateway_vpc_link" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the VPC link."
  value       = aws_api_gateway_vpc_link.aws_api_gateway_vpc_link.description
}
output "id" {
  description = "Set to the ID of the found API Gateway VPC Link."
  value       = aws_api_gateway_vpc_link.aws_api_gateway_vpc_link.id
}
output "status" {
  description = "Status of the VPC link."
  value       = aws_api_gateway_vpc_link.aws_api_gateway_vpc_link.status
}
output "status_message" {
  description = "Status message of the VPC link."
  value       = aws_api_gateway_vpc_link.aws_api_gateway_vpc_link.status_message
}
output "target_arns" {
  description = "List of network load balancer arns in the VPC targeted by the VPC link. Currently AWS only supports 1 target."
  value       = aws_api_gateway_vpc_link.aws_api_gateway_vpc_link.target_arns
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
