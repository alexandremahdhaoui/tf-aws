datasource "aws_service_discovery_service" "aws_service_discovery_service" {
  tags                       = var.tags
  failure_threshold          = var.failure_threshold
  health_check_custom_config = var.health_check_custom_config
  id                         = var.id
  type                       = var.type
  arn                        = var.arn
  dns_records                = var.dns_records
  resource_path              = var.resource_path
  ttl                        = var.ttl
  dns_config                 = var.dns_config
  health_check_config        = var.health_check_config
  namespace_id               = var.namespace_id
  tags_all                   = var.tags_all
  description                = var.description
  name                       = var.name
  routing_policy             = var.routing_policy
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.dns_config"
  type        = string
}
variable "description" {
  description = "Description of the service."
  type        = string
}
variable "name" {
  description = "(Required) Name of the service."
  type        = string
}
variable "routing_policy" {
  description = "Routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTEDdns_records"
  type        = string
}
variable "tags" {
  description = "Map of tags to assign to the service. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "failure_threshold" {
  description = "Number of consecutive health checks. Maximum value of 10."
  type        = string
}
variable "health_check_custom_config" {
  description = " A complex type that contains settings for ECS managed health checks."
  type        = string
}
variable "id" {
  description = "ID of the service."
  type        = string
}
variable "type" {
  description = " The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCPhealth_check_custom_config"
  type        = string
}
variable "arn" {
  description = "ARN of the service."
  type        = string
}
variable "dns_records" {
  description = "An array that contains one DnsRecord object for each resource record set."
  type        = string
}
variable "resource_path" {
  description = "Path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /."
  type        = string
}
variable "ttl" {
  description = "Amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set."
  type        = string
}
variable "dns_config" {
  description = "Complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance."
  type        = string
}
variable "health_check_config" {
  description = "Complex type that contains settings for an optional health check. Only for Public DNS namespaces."
  type        = string
}
variable "namespace_id" {
  description = "ID of the namespace to use for DNS configuration."
  type        = string
}
output "namespace_id" {
  description = "ID of the namespace to use for DNS configuration."
  value       = aws_service_discovery_service.aws_service_discovery_service.namespace_id
}
output "ttl" {
  description = "Amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set."
  value       = aws_service_discovery_service.aws_service_discovery_service.ttl
}
output "dns_config" {
  description = "Complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance."
  value       = aws_service_discovery_service.aws_service_discovery_service.dns_config
}
output "health_check_config" {
  description = "Complex type that contains settings for an optional health check. Only for Public DNS namespaces."
  value       = aws_service_discovery_service.aws_service_discovery_service.health_check_config
}
output "routing_policy" {
  description = "Routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTEDdns_records"
  value       = aws_service_discovery_service.aws_service_discovery_service.routing_policy
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.dns_config"
  value       = aws_service_discovery_service.aws_service_discovery_service.tags_all
}
output "description" {
  description = "Description of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.description
}
output "name" {
  description = "(Required) Name of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.name
}
output "id" {
  description = "ID of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.id
}
output "tags" {
  description = "Map of tags to assign to the service. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_service_discovery_service.aws_service_discovery_service.tags
}
output "failure_threshold" {
  description = "Number of consecutive health checks. Maximum value of 10."
  value       = aws_service_discovery_service.aws_service_discovery_service.failure_threshold
}
output "health_check_custom_config" {
  description = " A complex type that contains settings for ECS managed health checks."
  value       = aws_service_discovery_service.aws_service_discovery_service.health_check_custom_config
}
output "resource_path" {
  description = "Path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /."
  value       = aws_service_discovery_service.aws_service_discovery_service.resource_path
}
output "type" {
  description = " The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCPhealth_check_custom_config"
  value       = aws_service_discovery_service.aws_service_discovery_service.type
}
output "arn" {
  description = "ARN of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.arn
}
output "dns_records" {
  description = "An array that contains one DnsRecord object for each resource record set."
  value       = aws_service_discovery_service.aws_service_discovery_service.dns_records
}
output "health_check_config" {
  description = "Complex type that contains settings for an optional health check. Only for Public DNS namespaces."
  value       = aws_service_discovery_service.aws_service_discovery_service.health_check_config
}
output "routing_policy" {
  description = "Routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTEDdns_records"
  value       = aws_service_discovery_service.aws_service_discovery_service.routing_policy
}
output "tags" {
  description = "Map of tags to assign to the service. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_service_discovery_service.aws_service_discovery_service.tags
}
output "dns_config" {
  description = "Complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance."
  value       = aws_service_discovery_service.aws_service_discovery_service.dns_config
}
output "failure_threshold" {
  description = "Number of consecutive health checks. Maximum value of 10."
  value       = aws_service_discovery_service.aws_service_discovery_service.failure_threshold
}
output "id" {
  description = "ID of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.id
}
output "namespace_id" {
  description = "ID of the namespace to use for DNS configuration."
  value       = aws_service_discovery_service.aws_service_discovery_service.namespace_id
}
output "resource_path" {
  description = "Path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /."
  value       = aws_service_discovery_service.aws_service_discovery_service.resource_path
}
output "health_check_custom_config" {
  description = " A complex type that contains settings for ECS managed health checks."
  value       = aws_service_discovery_service.aws_service_discovery_service.health_check_custom_config
}
output "arn" {
  description = "ARN of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.arn
}
output "description" {
  description = "Description of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.description
}
output "dns_records" {
  description = "An array that contains one DnsRecord object for each resource record set."
  value       = aws_service_discovery_service.aws_service_discovery_service.dns_records
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.dns_config"
  value       = aws_service_discovery_service.aws_service_discovery_service.tags_all
}
output "ttl" {
  description = "Amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set."
  value       = aws_service_discovery_service.aws_service_discovery_service.ttl
}
output "type" {
  description = " The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCPhealth_check_custom_config"
  value       = aws_service_discovery_service.aws_service_discovery_service.type
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
