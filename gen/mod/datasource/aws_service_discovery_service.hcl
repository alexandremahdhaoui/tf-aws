datasource "aws_service_discovery_service" "aws_service_discovery_service" {
  arn                        = var.arn
  dns_config                 = var.dns_config
  resource_path              = var.resource_path
  dns_records                = var.dns_records
  health_check_config        = var.health_check_config
  namespace_id               = var.namespace_id
  tags_all                   = var.tags_all
  type                       = var.type
  failure_threshold          = var.failure_threshold
  ttl                        = var.ttl
  tags                       = var.tags
  description                = var.description
  health_check_custom_config = var.health_check_custom_config
  id                         = var.id
  name                       = var.name
  routing_policy             = var.routing_policy
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = "Description of the service."
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
variable "arn" {
  description = "ARN of the service."
  type        = string
}
variable "dns_config" {
  description = "Complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance."
  type        = string
}
variable "resource_path" {
  description = "Path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /."
  type        = string
}
variable "dns_records" {
  description = "An array that contains one DnsRecord object for each resource record set."
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
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.dns_config"
  type        = string
}
variable "type" {
  description = " The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCPhealth_check_custom_config"
  type        = string
}
variable "failure_threshold" {
  description = "Number of consecutive health checks. Maximum value of 10."
  type        = string
}
variable "ttl" {
  description = "Amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set."
  type        = string
}
output "resource_path" {
  description = "Path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /."
  value       = aws_service_discovery_service.aws_service_discovery_service.resource_path
}
output "arn" {
  description = "ARN of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.arn
}
output "dns_config" {
  description = "Complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance."
  value       = aws_service_discovery_service.aws_service_discovery_service.dns_config
}
output "namespace_id" {
  description = "ID of the namespace to use for DNS configuration."
  value       = aws_service_discovery_service.aws_service_discovery_service.namespace_id
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.dns_config"
  value       = aws_service_discovery_service.aws_service_discovery_service.tags_all
}
output "type" {
  description = " The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCPhealth_check_custom_config"
  value       = aws_service_discovery_service.aws_service_discovery_service.type
}
output "dns_records" {
  description = "An array that contains one DnsRecord object for each resource record set."
  value       = aws_service_discovery_service.aws_service_discovery_service.dns_records
}
output "health_check_config" {
  description = "Complex type that contains settings for an optional health check. Only for Public DNS namespaces."
  value       = aws_service_discovery_service.aws_service_discovery_service.health_check_config
}
output "failure_threshold" {
  description = "Number of consecutive health checks. Maximum value of 10."
  value       = aws_service_discovery_service.aws_service_discovery_service.failure_threshold
}
output "ttl" {
  description = "Amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set."
  value       = aws_service_discovery_service.aws_service_discovery_service.ttl
}
output "id" {
  description = "ID of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.id
}
output "name" {
  description = "(Required) Name of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.name
}
output "routing_policy" {
  description = "Routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTEDdns_records"
  value       = aws_service_discovery_service.aws_service_discovery_service.routing_policy
}
output "tags" {
  description = "Map of tags to assign to the service. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_service_discovery_service.aws_service_discovery_service.tags
}
output "description" {
  description = "Description of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.description
}
output "health_check_custom_config" {
  description = " A complex type that contains settings for ECS managed health checks."
  value       = aws_service_discovery_service.aws_service_discovery_service.health_check_custom_config
}
output "id" {
  description = "ID of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.id
}
output "resource_path" {
  description = "Path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /."
  value       = aws_service_discovery_service.aws_service_discovery_service.resource_path
}
output "ttl" {
  description = "Amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set."
  value       = aws_service_discovery_service.aws_service_discovery_service.ttl
}
output "arn" {
  description = "ARN of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.arn
}
output "description" {
  description = "Description of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.description
}
output "type" {
  description = " The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCPhealth_check_custom_config"
  value       = aws_service_discovery_service.aws_service_discovery_service.type
}
output "dns_config" {
  description = "Complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance."
  value       = aws_service_discovery_service.aws_service_discovery_service.dns_config
}
output "dns_records" {
  description = "An array that contains one DnsRecord object for each resource record set."
  value       = aws_service_discovery_service.aws_service_discovery_service.dns_records
}
output "failure_threshold" {
  description = "Number of consecutive health checks. Maximum value of 10."
  value       = aws_service_discovery_service.aws_service_discovery_service.failure_threshold
}
output "health_check_custom_config" {
  description = " A complex type that contains settings for ECS managed health checks."
  value       = aws_service_discovery_service.aws_service_discovery_service.health_check_custom_config
}
output "routing_policy" {
  description = "Routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTEDdns_records"
  value       = aws_service_discovery_service.aws_service_discovery_service.routing_policy
}
output "tags" {
  description = "Map of tags to assign to the service. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_service_discovery_service.aws_service_discovery_service.tags
}
output "health_check_config" {
  description = "Complex type that contains settings for an optional health check. Only for Public DNS namespaces."
  value       = aws_service_discovery_service.aws_service_discovery_service.health_check_config
}
output "namespace_id" {
  description = "ID of the namespace to use for DNS configuration."
  value       = aws_service_discovery_service.aws_service_discovery_service.namespace_id
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.dns_config"
  value       = aws_service_discovery_service.aws_service_discovery_service.tags_all
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
