datasource "aws_vpc_endpoint_service" "aws_vpc_endpoint_service" {
  vpc_endpoint_policy_supported = var.vpc_endpoint_policy_supported
  name                          = var.name
  tags                          = var.tags
  filter                        = var.filter
  private_dns_name              = var.private_dns_name
  supported_ip_address_types    = var.supported_ip_address_types
  availability_zones            = var.availability_zones
  base_endpoint_dns_names       = var.base_endpoint_dns_names
  owner                         = var.owner
  service_id                    = var.service_id
  acceptance_required           = var.acceptance_required
  arn                           = var.arn
  manages_vpc_endpoints         = var.manages_vpc_endpoints
  values                        = var.values
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "acceptance_required" {
  description = "Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - true or false."
  type        = string
}
variable "arn" {
  description = "ARN of the VPC endpoint service."
  type        = string
}
variable "owner" {
  description = "AWS account ID of the service owner or amazon."
  type        = string
}
variable "service_id" {
  description = "ID of the endpoint service."
  type        = string
}
variable "manages_vpc_endpoints" {
  description = "Whether or not the service manages its VPC endpoints - true or false."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeVpcEndpointServices API Reference."
  type        = string
}
variable "tags" {
  description = "Map of tags assigned to the resource."
  type        = string
}
variable "vpc_endpoint_policy_supported" {
  description = "Whether or not the service supports endpoint policies - true or false.TimeoutsConfiguration options:"
  type        = string
}
variable "availability_zones" {
  description = "Availability Zones in which the service is available."
  type        = string
}
variable "base_endpoint_dns_names" {
  description = "The DNS names for the service."
  type        = string
}
variable "filter" {
  description = " configuration block:"
  type        = string
}
variable "private_dns_name" {
  description = "Private DNS name for the service."
  type        = string
}
variable "supported_ip_address_types" {
  description = "The supported IP address types."
  type        = string
}
output "availability_zones" {
  description = "Availability Zones in which the service is available."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.availability_zones
}
output "base_endpoint_dns_names" {
  description = "The DNS names for the service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.base_endpoint_dns_names
}
output "filter" {
  description = " configuration block:"
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.filter
}
output "private_dns_name" {
  description = "Private DNS name for the service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.private_dns_name
}
output "supported_ip_address_types" {
  description = "The supported IP address types."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.supported_ip_address_types
}
output "acceptance_required" {
  description = "Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - true or false."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.acceptance_required
}
output "arn" {
  description = "ARN of the VPC endpoint service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.arn
}
output "owner" {
  description = "AWS account ID of the service owner or amazon."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.owner
}
output "service_id" {
  description = "ID of the endpoint service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.service_id
}
output "manages_vpc_endpoints" {
  description = "Whether or not the service manages its VPC endpoints - true or false."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.manages_vpc_endpoints
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.values
}
output "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeVpcEndpointServices API Reference."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.name
}
output "tags" {
  description = "Map of tags assigned to the resource."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.tags
}
output "vpc_endpoint_policy_supported" {
  description = "Whether or not the service supports endpoint policies - true or false.TimeoutsConfiguration options:"
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.vpc_endpoint_policy_supported
}
output "tags" {
  description = "Map of tags assigned to the resource."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.tags
}
output "vpc_endpoint_policy_supported" {
  description = "Whether or not the service supports endpoint policies - true or false.TimeoutsConfiguration options:"
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.vpc_endpoint_policy_supported
}
output "acceptance_required" {
  description = "Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - true or false."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.acceptance_required
}
output "availability_zones" {
  description = "Availability Zones in which the service is available."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.availability_zones
}
output "base_endpoint_dns_names" {
  description = "The DNS names for the service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.base_endpoint_dns_names
}
output "service_id" {
  description = "ID of the endpoint service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.service_id
}
output "supported_ip_address_types" {
  description = "The supported IP address types."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.supported_ip_address_types
}
output "arn" {
  description = "ARN of the VPC endpoint service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.arn
}
output "manages_vpc_endpoints" {
  description = "Whether or not the service manages its VPC endpoints - true or false."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.manages_vpc_endpoints
}
output "owner" {
  description = "AWS account ID of the service owner or amazon."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.owner
}
output "private_dns_name" {
  description = "Private DNS name for the service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.private_dns_name
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
